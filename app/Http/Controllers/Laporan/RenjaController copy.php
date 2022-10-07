<?php

namespace App\Http\Controllers\Laporan;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Validator;
use DataTables;
use PDF;

class RenjaController extends Controller
{

	private $table;
	public function __construct()
	{
		$this->table = 'ref_rkpd_sub_kegiatan';
	}

	public function view()
	{

		$dataOPD = DB::table('ref_opd')->get();
		$kirim = [
			'dataOPD' => $dataOPD,
		];
		return view('components/laporan/renja', $kirim);
	}

	public function getQuery($request)
	{
		$data = DB::table($this->table)
			->select(
				$this->table . '.*',
				'ref_program.program_nama',
				'ref_kegiatan.kegiatan_nama',
				'ref_sub_kegiatan.sub_kegiatan_nama',
				'ref_opd.opd_nama'
			)
			->leftJoin('ref_opd', 'ref_opd.id', '=', 'ref_rkpd_sub_kegiatan.opd_id')
			->leftJoin('ref_program', function ($join) {
				$join->on('ref_program.permen_ver', '=', 'ref_rkpd_sub_kegiatan.permen_ver');
				$join->on('ref_program.urusan_kode', '=', 'ref_rkpd_sub_kegiatan.urusan_kode');
				$join->on('ref_program.bidang_kode', '=', 'ref_rkpd_sub_kegiatan.bidang_kode');
				$join->on('ref_program.program_kode', '=', 'ref_rkpd_sub_kegiatan.program_kode');
			})
			->leftJoin('ref_kegiatan', function ($join) {
				$join->on('ref_kegiatan.permen_ver', '=', 'ref_rkpd_sub_kegiatan.permen_ver');
				$join->on('ref_kegiatan.urusan_kode', '=', 'ref_rkpd_sub_kegiatan.urusan_kode');
				$join->on('ref_kegiatan.bidang_kode', '=', 'ref_rkpd_sub_kegiatan.bidang_kode');
				$join->on('ref_kegiatan.program_kode', '=', 'ref_rkpd_sub_kegiatan.program_kode');
				$join->on('ref_kegiatan.kegiatan_kode', '=', 'ref_rkpd_sub_kegiatan.kegiatan_kode');
			})
			->leftJoin('ref_sub_kegiatan', function ($join) {
				$join->on('ref_sub_kegiatan.permen_ver', '=', 'ref_rkpd_sub_kegiatan.permen_ver');
				$join->on('ref_sub_kegiatan.urusan_kode', '=', 'ref_rkpd_sub_kegiatan.urusan_kode');
				$join->on('ref_sub_kegiatan.bidang_kode', '=', 'ref_rkpd_sub_kegiatan.bidang_kode');
				$join->on('ref_sub_kegiatan.program_kode', '=', 'ref_rkpd_sub_kegiatan.program_kode');
				$join->on('ref_sub_kegiatan.kegiatan_kode', '=', 'ref_rkpd_sub_kegiatan.kegiatan_kode');
				$join->on('ref_sub_kegiatan.sub_kegiatan_kode', '=', 'ref_rkpd_sub_kegiatan.sub_kegiatan_kode');
			})
			->where('ref_opd.id', session('opd'))
			->where('ref_rkpd_sub_kegiatan.tahun_ke', session('tahun'))
			->orderBy('ref_rkpd_sub_kegiatan.opd_id')
			->orderBy('ref_rkpd_sub_kegiatan.permen_ver')
			->orderBy('ref_rkpd_sub_kegiatan.urusan_kode')
			->orderBy('ref_rkpd_sub_kegiatan.bidang_kode')
			->orderBy('ref_rkpd_sub_kegiatan.program_kode')
			->orderBy('ref_rkpd_sub_kegiatan.kegiatan_kode')
			->orderBy('ref_rkpd_sub_kegiatan.sub_kegiatan_kode');

		return $data;
	}

	public function cetak(Request $request)
	{
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


		foreach ($data as $row) {

			// if($tujuan_id != $row->rpjmd_tujuan_id){
			// 	$tujuan_id = $row->rpjmd_tujuan_id;
			// 	$tujuan_index = $index;
			// 	$dataAll[$index]['uraian'] = $row->rpjmd_tujuan_nama;
			// 	$dataAll[$index]['data'] = DB::table('ta_rpjmd_tujuan_indikator')
			// 	->where('ta_rpjmd_tujuan_indikator.rpjmd_tujuan_id', $row->rpjmd_tujuan_id)
			// 	->get();
			// 	$dataAll[$index]['level'] = 1;
			// 	$index++;
			// }

			// if($sasaran_id != $row->rpjmd_sasaran_id){
			// 	$sasaran_id = $row->rpjmd_sasaran_id;
			// 	$sasaran_index = $index;
			// 	$dataAll[$index]['uraian'] = $row->rpjmd_sasaran_nama;
			// 	$dataAll[$index]['data'] = DB::table('ta_rpjmd_sasaran_indikator')
			// 	->where('ta_rpjmd_sasaran_indikator.rpjmd_sasaran_id', $row->rpjmd_sasaran_id)
			// 	->get();
			// 	$dataAll[$index]['level'] = 2;
			// 	$index++;
			// }
			$temp = $row->opd_id
				. "-" . $row->permen_ver
				. "-" . $row->urusan_kode
				. "-" . $row->bidang_kode
				. "-" . $row->program_kode;
			if ($program_id != $temp) {
				$program_id = $temp;
				$program_index = $index;
				$dataAll[$index]['kode'] = (@$row->urusan_kode == 0 ? 'X' : $row->urusan_kode)
					. "." . $this->setKode($row->bidang_kode)
					. "." . $this->setKode($row->program_kode);
				$dataAll[$index]['uraian'] = @$row->program_nama;
				$dataAll[$index]['opd_nama'] = @$row->opd_nama;
				$dataAll[$index]['data'] = DB::table('ta_rpjmd_program_indikator')
					->leftJoin('ref_rpjmd_program', 'ref_rpjmd_program.id', '=', 'ta_rpjmd_program_indikator.rpjmd_program_id')
					->where('ref_rpjmd_program.permen_ver', $row->permen_ver)
					->where('ref_rpjmd_program.urusan_kode', $row->urusan_kode)
					->where('ref_rpjmd_program.bidang_kode', $row->bidang_kode)
					->where('ref_rpjmd_program.program_kode', $row->program_kode)
					->where('ref_rpjmd_program.opd_id', $row->opd_id)
					->get();

				$dataAll[$index]['jumRow'] = count($dataAll[$index]['data']) == 0 ? 1 : count($dataAll[$index]['data']);

				$dataAll[$index]['level'] = 3;
				$index++;
			}

			$temp = $row->opd_id
				. "-" . $row->permen_ver
				. "-" . $row->urusan_kode
				. "-" . $row->bidang_kode
				. "-" . $row->program_kode
				. "-" . $row->kegiatan_kode;
			if ($kegiatan_id != $temp) {
				$kegiatan_id = $temp;
				$kegiatan_index = $index;
				$dataAll[$index]['kode'] = (@$row->urusan_kode == 0 ? 'X' : $row->urusan_kode)
					. "." . $this->setKode($row->bidang_kode)
					. "." . $this->setKode($row->program_kode)
					. "." . $this->setKode($row->kegiatan_kode, 2);
				$dataAll[$index]['uraian'] = $row->kegiatan_nama;
				$dataAll[$index]['data'] = DB::table('ta_renstra_kegiatan_indikator')
					->leftJoin('ref_renstra_kegiatan', 'ref_renstra_kegiatan.id', '=', 'ta_renstra_kegiatan_indikator.renstra_kegiatan_id')
					->leftJoin('ref_rpjmd_program', 'ref_rpjmd_program.id', '=', 'ref_renstra_kegiatan.rpjmd_program_id')
					->where('ref_renstra_kegiatan.permen_ver', $row->permen_ver)
					->where('ref_renstra_kegiatan.urusan_kode', $row->urusan_kode)
					->where('ref_renstra_kegiatan.bidang_kode', $row->bidang_kode)
					->where('ref_renstra_kegiatan.program_kode', $row->program_kode)
					->where('ref_renstra_kegiatan.kegiatan_kode', $row->kegiatan_kode)
					->where('ref_rpjmd_program.opd_id', $row->opd_id)
					->get();

				// echo "<pre>";
				// print_r($dataAll[$index]);
				// die();

				$dataAll[$program_index]['jumRow'] += count($dataAll[$index]['data']) == 0 ? 1 : count($dataAll[$index]['data']);

				// $dataAll[$index]['renstra_data'] = DB::table('ta_renstra_kegiatan_indikator')
				// ->leftJoin('ref_renstra_kegiatan', 'ref_renstra_kegiatan.id', '=', 'ta_renstra_kegiatan_indikator.renstra_kegiatan_id')
				// ->leftJoin('ref_rpjmd_program', 'ref_rpjmd_program.id', '=', 'ref_renstra_kegiatan.rpjmd_program_id')
				// ->where('ref_renstra_kegiatan.permen_ver', $row->permen_ver)
				// ->where('ref_renstra_kegiatan.urusan_kode', $row->urusan_kode)
				// ->where('ref_renstra_kegiatan.bidang_kode', $row->bidang_kode)
				// ->where('ref_renstra_kegiatan.program_kode', $row->program_kode)
				// ->where('ref_renstra_kegiatan.kegiatan_kode', $row->kegiatan_kode)
				// ->where('ref_rpjmd_program.opd_id', $row->opd_id)
				// ->get();
				// echo "<pre>";
				// print_r($dataAll[$index]['renstra_data']);
				// die();
				for($idxRens = 0; $idxRens < count($dataAll[$index]['data']); $idxRens++){
					$temp = 'renstra_kegiatan_indikator_th'.session('tahun').'_pagu';
					$pagu = @$dataAll[$index]['data'][$idxRens]->$temp;
					$dataAll[$index]['dataPagu']['renstra_pagu'] = $pagu + @$dataAll[$index]['dataPagu']['renstra_pagu'];
					
					$dataAll[$program_index]['dataPagu']['renstra_pagu'] = $pagu + @$dataAll[$program_index]['dataPagu']['renstra_pagu'];
					// $dataAll[$kegiatan_index]['dataPagu']['renstra_pagu'] = $pagu + @$dataAll[$kegiatan_index]['dataPagu']['renstra_pagu'];
				}


				$dataAll[$index]['level'] = 4;
				$index++;
			}

			$temp = $row->opd_id
				. "-" . $row->permen_ver
				. "-" . $row->urusan_kode
				. "-" . $row->bidang_kode
				. "-" . $row->program_kode
				. "-" . $row->kegiatan_kode
				. "-" . $row->sub_kegiatan_kode;
			if ($sub_kegiatan_id != $temp) {
				$sub_kegiatan_id = $temp;
				$sub_kegiatan_index = $index;
				$dataAll[$index]['kode'] = (@$row->urusan_kode == 0 ? 'X' : $row->urusan_kode)
					. "." . $this->setKode($row->bidang_kode)
					. "." . $this->setKode($row->program_kode)
					. "." . $this->setKode($row->kegiatan_kode, 2)
					. "." . $this->setKode($row->sub_kegiatan_kode, 3);
				$dataAll[$index]['uraian'] = $row->sub_kegiatan_nama;
				$dataAll[$index]['data'] = DB::table('ref_rkpd_sub_kegiatan_indikator')
					->where('ref_rkpd_sub_kegiatan_indikator.rkpd_sub_kegiatan_id', $row->id)
					->get();


				$dataAll[$program_index]['jumRow'] += count($dataAll[$index]['data']) == 0 ? 1 : count($dataAll[$index]['data']);


				$triwulan = session('triwulan');
				$arrTriwulan = [1,3,6,9,12];

				$temp = 'sub_kegiatan_pagu_bln' . $arrTriwulan[$triwulan];
				$realisasi_pagu = $row->$temp;
				$pagu = $row->sub_kegiatan_pagu;

				$dataAll[$index]['dataPagu']['pagu'] = $pagu + @$dataAll[$index]['dataPagu']['pagu'];
				$dataAll[$program_index]['dataPagu']['pagu'] = $pagu + @$dataAll[$program_index]['dataPagu']['pagu'];
				$dataAll[$kegiatan_index]['dataPagu']['pagu'] = $pagu + @$dataAll[$kegiatan_index]['dataPagu']['pagu'];

				$dataAll[$index]['dataPagu']['realisasi_pagu'] = $realisasi_pagu + @$dataAll[$index]['dataPagu']['realisasi_pagu'];
				$dataAll[$program_index]['dataPagu']['realisasi_pagu'] = $realisasi_pagu + @$dataAll[$program_index]['dataPagu']['realisasi_pagu'];
				$dataAll[$kegiatan_index]['dataPagu']['realisasi_pagu'] = $realisasi_pagu + @$dataAll[$kegiatan_index]['dataPagu']['realisasi_pagu'];
				// echo "<pre>";
				// print_r($realisasi_pagu);
				// die();

				for ($rowPagu = 0; $rowPagu < count($dataAll[$index]['data']); $rowPagu++) {
					$pagu = $dataAll[$index]['data'][$rowPagu]->rkpd_sub_kegiatan_indikator_pagu;
					$temp = 'rkpd_sub_kegiatan_indikator_tw4_pagu';
					$temp = 'rkpd_sub_kegiatan_indikator_tw' . $triwulan . '_pagu';
					$realisasi_pagu = $dataAll[$index]['data'][$rowPagu]->$temp;
					$temp = 'rkpd_sub_kegiatan_indikator_tw' . $triwulan . '_target';
					$realisasi_target = $dataAll[$index]['data'][$rowPagu]->$temp;

					$dataAll[$index]['data'][$rowPagu]->pagu = $pagu;
					$dataAll[$index]['data'][$rowPagu]->realisasi_pagu = $realisasi_pagu;
					$dataAll[$index]['data'][$rowPagu]->realisasi_target = $realisasi_target;

					$dataAll[$program_index]['dataPagu']['pagu'] = $pagu + @$dataAll[$program_index]['dataPagu']['pagu'];
					$dataAll[$kegiatan_index]['dataPagu']['pagu'] = $pagu + @$dataAll[$kegiatan_index]['dataPagu']['pagu'];

					$dataAll[$program_index]['dataPagu']['realisasi_pagu'] = $realisasi_pagu + @$dataAll[$program_index]['dataPagu']['realisasi_pagu'];
					$dataAll[$kegiatan_index]['dataPagu']['realisasi_pagu'] = $realisasi_pagu + @$dataAll[$kegiatan_index]['dataPagu']['realisasi_pagu'];
				}

				

				$dataAll[$index]['level'] = 5;
				$index++;
			}
		}

		// echo "<pre>";
		// print_r($dataAll);

		$cetak = $request->cetak;

		$kirim = [
			'dataAll' => $dataAll,
		];

		if ($cetak == 'pdf') {
			$pdf = PDF::loadView('pdf/renja', $kirim)->setPaper('a4', 'landscape');
			return $pdf->download('pdf_file.pdf');
		} else {
			return view('pdf/renja', $kirim);
		}
	}



	function setKode($angka, $level = 1)
	{
		$hasil = '';

		if ($level == 2) {
			$angka = (string) $angka;
			$hasil = @$angka[0] . '.' . @$angka[1] . @$angka[2];
		} else if ($level == 3) {
			if ($angka < 10) {
				$hasil = '00' . $angka;
			} else if ($angka < 100) {
				$hasil = '0' . $angka;
			} else {
				$hasil = $angka;
			}
		} else {

			if ($angka == 0) {
				$hasil =  'XX';
			} else if ($angka < 10) {
				$hasil = '0' . $angka;
			} else {
				$hasil = $angka;
			}
		}
		return $hasil;
	}
}
