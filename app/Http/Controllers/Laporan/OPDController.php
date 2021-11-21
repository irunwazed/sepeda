<?php

namespace App\Http\Controllers\Laporan;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Validator;
use DataTables;
use PDF;

class OPDController extends Controller
{

	private $table;
	public function __construct()
	{
		$this->table = 'ref_rpjmd_program';
	}

	public function view()
	{
		$kirim = [];
		return view('components/laporan/predikat-opd', $kirim);
	}

	public function getQuery($request)
	{
		$data = DB::table($this->table)
			->select(
				$this->table . '.*',
				'ref_rpjmd_visi.id as rpjmd_visi_id',
				'ref_rpjmd_misi.id as rpjmd_misi_id',
				'ref_rpjmd_tujuan.id as rpjmd_tujuan_id',
				'ref_rpjmd_sasaran.id as rpjmd_sasaran_id',
				'ref_rpjmd_visi.rpjmd_visi_nama',
				'ref_rpjmd_misi.rpjmd_misi_nama',
				'ref_rpjmd_tujuan.rpjmd_tujuan_nama',
				'ref_rpjmd_sasaran.rpjmd_sasaran_nama',
				'ref_program.program_nama',
				'ref_rpjmd_program.opd_id',
				'ref_opd.opd_nama'
			)
			->leftJoin('ref_opd', 'ref_opd.id', '=', 'ref_rpjmd_program.opd_id')
			->leftJoin('ref_rpjmd_sasaran', 'ref_rpjmd_sasaran.id', '=', 'ref_rpjmd_program.rpjmd_sasaran_id')
			->leftJoin('ref_rpjmd_tujuan', 'ref_rpjmd_tujuan.id', '=', 'ref_rpjmd_sasaran.rpjmd_tujuan_id')
			->leftJoin('ref_rpjmd_misi', 'ref_rpjmd_misi.id', '=', 'ref_rpjmd_tujuan.rpjmd_misi_id')
			->leftJoin('ref_rpjmd_visi', 'ref_rpjmd_visi.id', '=', 'ref_rpjmd_misi.rpjmd_visi_id')
			->leftJoin('ref_program', function ($join) {
				$join->on('ref_program.permen_ver', '=', 'ref_rpjmd_program.permen_ver');
				$join->on('ref_program.urusan_kode', '=', 'ref_rpjmd_program.urusan_kode');
				$join->on('ref_program.bidang_kode', '=', 'ref_rpjmd_program.bidang_kode');
				$join->on('ref_program.program_kode', '=', 'ref_rpjmd_program.program_kode');
			})
			->orderBy('ref_rpjmd_visi.id')
			->orderBy('ref_rpjmd_misi.id')
			->orderBy('ref_rpjmd_tujuan.id')
			->orderBy('ref_rpjmd_sasaran.id')
			->orderBy('ref_rpjmd_program.id');

		return $data;
	}

	public function cetak(Request $request)
	{


		$dataAll = [];
		$index = 0;

		$dataOPD = DB::table('ref_opd')->get();
		foreach($dataOPD as $row){
			$dataTemp = DB::table('ta_rpjmd_program_indikator')
			->leftJoin('ref_rpjmd_program', 'ref_rpjmd_program.id', '=', 'ta_rpjmd_program_indikator.rpjmd_program_id')
			->where('ref_rpjmd_program.opd_id', $row->id)
			->get();

			$arrTemp = [];
			for($i = 0; $i < count($dataTemp); $i++){
				if($i == 0){
					$arrTemp[1] = [];
					$arrTemp[2] = [];
					$arrTemp[3] = [];
					$arrTemp[4] = [];
					$arrTemp[5] = [];
				}
				
				$capaian = $this->setCapaian($dataTemp[$i]->rpjmd_program_indikator_th1_realisasi_target, $dataTemp[$i]->rpjmd_program_indikator_th1_target);
				array_push($arrTemp[1],$capaian);
				$capaian = $this->setCapaian($dataTemp[$i]->rpjmd_program_indikator_th2_realisasi_target, $dataTemp[$i]->rpjmd_program_indikator_th2_target);
				array_push($arrTemp[2],$capaian);
				$capaian = $this->setCapaian($dataTemp[$i]->rpjmd_program_indikator_th3_realisasi_target, $dataTemp[$i]->rpjmd_program_indikator_th3_target);
				array_push($arrTemp[3],$capaian);
				$capaian = $this->setCapaian($dataTemp[$i]->rpjmd_program_indikator_th4_realisasi_target, $dataTemp[$i]->rpjmd_program_indikator_th4_target);
				array_push($arrTemp[4],$capaian);
				$capaian = $this->setCapaian($dataTemp[$i]->rpjmd_program_indikator_th5_realisasi_target, $dataTemp[$i]->rpjmd_program_indikator_th5_target);
				array_push($arrTemp[5],$capaian);

			}
			$dataAll[$index]['predikat'] = [
				$this->setCapaian(array_sum($arrTemp[1]), count($arrTemp[1]), false),
				$this->setCapaian(array_sum($arrTemp[2]), count($arrTemp[2]), false),
				$this->setCapaian(array_sum($arrTemp[3]), count($arrTemp[3]), false),
				$this->setCapaian(array_sum($arrTemp[4]), count($arrTemp[4]), false),
				$this->setCapaian(array_sum($arrTemp[5]), count($arrTemp[5]), false),
			];

			$dataAll[$index]['opd_nama'] = $row->opd_nama;
			$dataAll[$index]['data'] = $dataTemp;
			$index++;
		}


		// echo "<pre>";
		// print_r($dataAll);


		$cetak = $request->cetak;

		$kirim = [
			'dataAll' => $dataAll,
		];

		if ($cetak == 'pdf') {
			$pdf = PDF::loadView('pdf/predikat-opd', $kirim)->setPaper('a4', 'landscape');
			return $pdf->download('pdf_file.pdf');
		} else {
			return view('pdf/predikat-opd', $kirim);
		}
	}

	public function setCapaian($realisasi, $target, $persen = true)
	{
		$hasil = 0;
		if ($target > 0) {
			$setPersen = 1;
			if($persen){
				$setPersen = 100;
			}
			$hasil = round($setPersen * $realisasi / $target, 2);
		}
		return $hasil;
	}
}
