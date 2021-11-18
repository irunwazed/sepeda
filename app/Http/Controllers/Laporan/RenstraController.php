<?php

namespace App\Http\Controllers\Laporan;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Validator;
use DataTables;
use PDF;

class RenstraController extends Controller
{

	private $table;
	public function __construct()
  {
    $this->table = 'ref_renstra_sub_kegiatan';
  }

  public function view(){

		$dataOPD = DB::table('ref_opd')->get();
		$kirim = [
			'dataOPD' => $dataOPD,
		];
    return view('components/laporan/renstra', $kirim);
  }

	public function getQuery($request){
		$data = DB::table($this->table)
		->select($this->table.'.*'
		, 'ref_rpjmd_tujuan.id as rpjmd_tujuan_id'
		, 'ref_rpjmd_sasaran.id as rpjmd_sasaran_id'
		, 'ref_rpjmd_program.id as rpjmd_program_id'
		, 'ref_renstra_kegiatan.id as renstra_kegiatan_id'
		, 'ref_renstra_sub_kegiatan.id as renstra_sub_kegiatan_id'
		, 'ref_rpjmd_tujuan.rpjmd_tujuan_nama'
		, 'ref_rpjmd_sasaran.rpjmd_sasaran_nama'
		, 'ref_program.program_nama'
		, 'ref_kegiatan.kegiatan_nama'
		, 'ref_sub_kegiatan.sub_kegiatan_nama'
		, 'ref_rpjmd_program.opd_id'
		, 'ref_opd.opd_nama')
		->leftJoin('ref_renstra_kegiatan', 'ref_renstra_kegiatan.id', '=', 'ref_renstra_sub_kegiatan.renstra_kegiatan_id')
		->leftJoin('ref_rpjmd_program', 'ref_rpjmd_program.id', '=', 'ref_renstra_kegiatan.rpjmd_program_id')
		->leftJoin('ref_opd', 'ref_opd.id', '=', 'ref_rpjmd_program.opd_id')
		->leftJoin('ref_rpjmd_sasaran', 'ref_rpjmd_sasaran.id', '=', 'ref_rpjmd_program.rpjmd_sasaran_id')
		->leftJoin('ref_rpjmd_tujuan', 'ref_rpjmd_tujuan.id', '=', 'ref_rpjmd_sasaran.rpjmd_tujuan_id')
		->leftJoin('ref_program', function($join){
			$join->on('ref_program.permen_ver', '=', 'ref_renstra_sub_kegiatan.permen_ver');
			$join->on('ref_program.urusan_kode', '=', 'ref_renstra_sub_kegiatan.urusan_kode');
			$join->on('ref_program.bidang_kode', '=', 'ref_renstra_sub_kegiatan.bidang_kode');
			$join->on('ref_program.program_kode', '=', 'ref_renstra_sub_kegiatan.program_kode');
		})
		->leftJoin('ref_kegiatan', function($join)
		{
			$join->on('ref_kegiatan.permen_ver', '=', 'ref_renstra_sub_kegiatan.permen_ver');
			$join->on('ref_kegiatan.urusan_kode', '=', 'ref_renstra_sub_kegiatan.urusan_kode');
			$join->on('ref_kegiatan.bidang_kode', '=', 'ref_renstra_sub_kegiatan.bidang_kode');
			$join->on('ref_kegiatan.program_kode', '=', 'ref_renstra_sub_kegiatan.program_kode');
			$join->on('ref_kegiatan.kegiatan_kode', '=', 'ref_renstra_sub_kegiatan.kegiatan_kode');
		})
		->leftJoin('ref_sub_kegiatan', function($join)
		{
			$join->on('ref_sub_kegiatan.permen_ver', '=', 'ref_renstra_sub_kegiatan.permen_ver');
			$join->on('ref_sub_kegiatan.urusan_kode', '=', 'ref_renstra_sub_kegiatan.urusan_kode');
			$join->on('ref_sub_kegiatan.bidang_kode', '=', 'ref_renstra_sub_kegiatan.bidang_kode');
			$join->on('ref_sub_kegiatan.program_kode', '=', 'ref_renstra_sub_kegiatan.program_kode');
			$join->on('ref_sub_kegiatan.kegiatan_kode', '=', 'ref_renstra_sub_kegiatan.kegiatan_kode');
			$join->on('ref_sub_kegiatan.sub_kegiatan_kode', '=', 'ref_renstra_sub_kegiatan.sub_kegiatan_kode');
		})
		->where('ref_opd.id', session('opd'))
		->orderBy('ref_rpjmd_tujuan.id')
		->orderBy('ref_rpjmd_sasaran.id')
		->orderBy('ref_rpjmd_program.id')
		->orderBy('ref_renstra_kegiatan.id')
		->orderBy('ref_renstra_sub_kegiatan.id');

		return $data;

	}
	
	public function cetak(Request $request){
		$data = $this->getQuery($request)->get();

		$dataAll = [];
		$index = 0;

		$tujuan_id = 0;
		$sasaran_id = 0;
		$program_id = 0;
		$kegiatan_id = 0;
		$sub_kegiatan_id = 0;

		$tujuan_index = 0;
		$sasaran_index = 0;
		$program_index = 0;
		$kegiatan_index = 0;
		$sub_kegiatan_index = 0;


		foreach($data as $row){
			
			if($tujuan_id != $row->rpjmd_tujuan_id){
				$tujuan_id = $row->rpjmd_tujuan_id;
				$tujuan_index = $index;
				$dataAll[$index]['uraian'] = $row->rpjmd_tujuan_nama;
				$dataAll[$index]['data'] = DB::table('ta_rpjmd_tujuan_indikator')
				->where('ta_rpjmd_tujuan_indikator.rpjmd_tujuan_id', $row->rpjmd_tujuan_id)
				->get();
				$dataAll[$index]['level'] = 1;
				$index++;
			}

			if($sasaran_id != $row->rpjmd_sasaran_id){
				$sasaran_id = $row->rpjmd_sasaran_id;
				$sasaran_index = $index;
				$dataAll[$index]['uraian'] = $row->rpjmd_sasaran_nama;
				$dataAll[$index]['data'] = DB::table('ta_rpjmd_sasaran_indikator')
				->where('ta_rpjmd_sasaran_indikator.rpjmd_sasaran_id', $row->rpjmd_sasaran_id)
				->get();
				$dataAll[$index]['level'] = 2;
				$index++;
			}

			if($program_id != $row->rpjmd_program_id){
				$program_id = $row->rpjmd_program_id;
				$program_index = $index;
				$dataAll[$index]['uraian'] = @$row->program_nama;
				$dataAll[$index]['data'] = DB::table('ta_rpjmd_program_indikator')
				->leftJoin('ref_rpjmd_program', 'ref_rpjmd_program.id', '=', 'ta_rpjmd_program_indikator.rpjmd_program_id')
				->leftJoin('ref_opd', 'ref_opd.id', '=', 'ref_rpjmd_program.opd_id')
				->where('ta_rpjmd_program_indikator.rpjmd_program_id', $row->rpjmd_program_id)
				->get();

				$dataAll[$index]['level'] = 3;
				$index++;
			}

			if($kegiatan_id != $row->renstra_kegiatan_id){
				$kegiatan_id = $row->renstra_kegiatan_id;
				$kegiatan_index = $index;
				$dataAll[$index]['uraian'] = $row->kegiatan_nama;
				$dataAll[$index]['data'] = DB::table('ta_renstra_kegiatan_indikator')
				->where('ta_renstra_kegiatan_indikator.renstra_kegiatan_id', $row->renstra_kegiatan_id)
				->get();
				$dataAll[$index]['level'] = 4;
				$index++;
			}

			if($sub_kegiatan_id != $row->renstra_sub_kegiatan_id){
				$sub_kegiatan_id = $row->renstra_sub_kegiatan_id;
				$sub_kegiatan_index = $index;
				$dataAll[$index]['uraian'] = $row->sub_kegiatan_nama;
				$dataAll[$index]['data'] = DB::table('ta_renstra_sub_kegiatan_indikator')
				->where('ta_renstra_sub_kegiatan_indikator.renstra_sub_kegiatan_id', $row->renstra_sub_kegiatan_id)
				->get();

				
				// target
				for($idxSub = 0; $idxSub < count($dataAll[$index]['data']); $idxSub++){
					for($rowTahun = 1; $rowTahun <= 5; $rowTahun++){
						$temp = 'renstra_sub_kegiatan_indikator_th'.$rowTahun.'_pagu';
						$pagu = $dataAll[$index]['data'][$idxSub]->$temp;

						$dataAll[$index]['dataPagu'][$rowTahun]['pagu'] = $pagu + @$dataAll[$index]['dataPagu'][$rowTahun]['pagu'];
						$dataAll[$kegiatan_index]['dataPagu'][$rowTahun]['pagu'] = $pagu + @$dataAll[$kegiatan_index]['dataPagu'][$rowTahun]['pagu'];
						$dataAll[$program_index]['dataPagu'][$rowTahun]['pagu'] = $pagu + @$dataAll[$program_index]['dataPagu'][$rowTahun]['pagu'];
						$dataAll[$sasaran_index]['dataPagu'][$rowTahun]['pagu'] = $pagu + @$dataAll[$sasaran_index]['dataPagu'][$rowTahun]['pagu'];
						$dataAll[$tujuan_index]['dataPagu'][$rowTahun]['pagu'] = $pagu + @$dataAll[$tujuan_index]['dataPagu'][$rowTahun]['pagu'];
					}
				}
				// . target

				//realisasi
				for($rowTahun = 1; $rowTahun <= 5; $rowTahun++){

					$triwulan = 4;
					if(session('tahun') == $rowTahun){
						$triwulan = session('triwulan');
					}

					$realisasi_pagu = DB::table('ref_rkpd_sub_kegiatan_indikator')
					->leftJoin('ref_rkpd_sub_kegiatan', 'ref_rkpd_sub_kegiatan.id', '=', 'ref_rkpd_sub_kegiatan_indikator.rkpd_sub_kegiatan_id')
					->where('ref_rkpd_sub_kegiatan.permen_ver', $row->permen_ver)
					->where('ref_rkpd_sub_kegiatan.urusan_kode', $row->urusan_kode)
					->where('ref_rkpd_sub_kegiatan.bidang_kode', $row->bidang_kode)
					->where('ref_rkpd_sub_kegiatan.program_kode', $row->program_kode)
					->where('ref_rkpd_sub_kegiatan.kegiatan_kode', $row->kegiatan_kode)
					->where('ref_rkpd_sub_kegiatan.sub_kegiatan_kode', $row->sub_kegiatan_kode)
					->where('ref_rkpd_sub_kegiatan.opd_id', $row->opd_id)
					->where('ref_rkpd_sub_kegiatan.tahun_ke', $rowTahun)
					->sum('ref_rkpd_sub_kegiatan_indikator.rkpd_sub_kegiatan_indikator_tw'.$triwulan.'_pagu');

					$dataAll[$index]['dataPagu'][$rowTahun]['realisasi_pagu'] = $realisasi_pagu;
					$dataAll[$index]['dataPagu'][$rowTahun]['capaian_pagu'] = $this->setCapaian($realisasi_pagu, $dataAll[$index]['dataPagu'][$rowTahun]['pagu']);

					$dataAll[$kegiatan_index]['dataPagu'][$rowTahun]['realisasi_pagu'] = $realisasi_pagu + @$dataAll[$kegiatan_index]['dataPagu'][$rowTahun]['realisasi_pagu'];
					$dataAll[$program_index]['dataPagu'][$rowTahun]['realisasi_pagu'] = $realisasi_pagu + @$dataAll[$program_index]['dataPagu'][$rowTahun]['realisasi_pagu'];
					$dataAll[$sasaran_index]['dataPagu'][$rowTahun]['realisasi_pagu'] = $realisasi_pagu + @$dataAll[$sasaran_index]['dataPagu'][$rowTahun]['realisasi_pagu'];
					$dataAll[$tujuan_index]['dataPagu'][$rowTahun]['realisasi_pagu'] = $realisasi_pagu + @$dataAll[$tujuan_index]['dataPagu'][$rowTahun]['realisasi_pagu'];

					$dataAll[$kegiatan_index]['dataPagu'][$rowTahun]['capaian_pagu'] = $this->setCapaian($dataAll[$kegiatan_index]['dataPagu'][$rowTahun]['realisasi_pagu'], $dataAll[$kegiatan_index]['dataPagu'][$rowTahun]['pagu']);
					$dataAll[$program_index]['dataPagu'][$rowTahun]['capaian_pagu'] = $this->setCapaian($dataAll[$program_index]['dataPagu'][$rowTahun]['realisasi_pagu'], $dataAll[$program_index]['dataPagu'][$rowTahun]['pagu']);
					$dataAll[$sasaran_index]['dataPagu'][$rowTahun]['capaian_pagu'] = $this->setCapaian($dataAll[$sasaran_index]['dataPagu'][$rowTahun]['realisasi_pagu'], $dataAll[$sasaran_index]['dataPagu'][$rowTahun]['pagu']);
					$dataAll[$tujuan_index]['dataPagu'][$rowTahun]['capaian_pagu'] = $this->setCapaian($dataAll[$tujuan_index]['dataPagu'][$rowTahun]['realisasi_pagu'], $dataAll[$tujuan_index]['dataPagu'][$rowTahun]['pagu']);
				}
				// . realisasi

				$dataAll[$index]['level'] = 5;
				$index++;
			}


		}
		// echo "<pre>";
		// print_r($data);
		// echo "</pre>";


		$cetak = $request->cetak;
		
		$kirim = [
			'dataAll' => $dataAll,
		];

    if($cetak == 'pdf'){
      $pdf = PDF::loadView('pdf/renstra', $kirim)->setPaper('a4', 'landscape');
      return $pdf->download('pdf_file.pdf');
    }else{
      return view('pdf/renstra', $kirim);
    }

	}

	public function setCapaian($realisasi, $target)
	{
		$hasil = 0;
		if ($target > 0) {
			$hasil = round(100 * $realisasi / $target, 2);
		}
		return $hasil;
	}

}
