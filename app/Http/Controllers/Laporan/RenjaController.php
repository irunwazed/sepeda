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

  public function view(){

		$dataOPD = DB::table('ref_opd')->get();
		$kirim = [
			'dataOPD' => $dataOPD,
		];
    return view('components/laporan/renja', $kirim);
  }

	public function getQuery($request){
		$data = DB::table($this->table)
		->select($this->table.'.*'
		, 'ref_program.program_nama'
		, 'ref_kegiatan.kegiatan_nama'
		, 'ref_sub_kegiatan.sub_kegiatan_nama'
		, 'ref_opd.opd_nama')
		->leftJoin('ref_opd', 'ref_opd.id', '=', 'ref_rkpd_sub_kegiatan.opd_id')
		->leftJoin('ref_program', function($join){
			$join->on('ref_program.permen_ver', '=', 'ref_rkpd_sub_kegiatan.permen_ver');
			$join->on('ref_program.urusan_kode', '=', 'ref_rkpd_sub_kegiatan.urusan_kode');
			$join->on('ref_program.bidang_kode', '=', 'ref_rkpd_sub_kegiatan.bidang_kode');
			$join->on('ref_program.program_kode', '=', 'ref_rkpd_sub_kegiatan.program_kode');
		})
		->leftJoin('ref_kegiatan', function($join)
		{
			$join->on('ref_kegiatan.permen_ver', '=', 'ref_rkpd_sub_kegiatan.permen_ver');
			$join->on('ref_kegiatan.urusan_kode', '=', 'ref_rkpd_sub_kegiatan.urusan_kode');
			$join->on('ref_kegiatan.bidang_kode', '=', 'ref_rkpd_sub_kegiatan.bidang_kode');
			$join->on('ref_kegiatan.program_kode', '=', 'ref_rkpd_sub_kegiatan.program_kode');
			$join->on('ref_kegiatan.kegiatan_kode', '=', 'ref_rkpd_sub_kegiatan.kegiatan_kode');
		})
		->leftJoin('ref_sub_kegiatan', function($join)
		{
			$join->on('ref_sub_kegiatan.permen_ver', '=', 'ref_rkpd_sub_kegiatan.permen_ver');
			$join->on('ref_sub_kegiatan.urusan_kode', '=', 'ref_rkpd_sub_kegiatan.urusan_kode');
			$join->on('ref_sub_kegiatan.bidang_kode', '=', 'ref_rkpd_sub_kegiatan.bidang_kode');
			$join->on('ref_sub_kegiatan.program_kode', '=', 'ref_rkpd_sub_kegiatan.program_kode');
			$join->on('ref_sub_kegiatan.kegiatan_kode', '=', 'ref_rkpd_sub_kegiatan.kegiatan_kode');
			$join->on('ref_sub_kegiatan.sub_kegiatan_kode', '=', 'ref_rkpd_sub_kegiatan.sub_kegiatan_kode');
		})
		->where('ref_opd.id', session('opd'))
		->orderBy('ref_rkpd_sub_kegiatan.opd_id')
		->orderBy('ref_rkpd_sub_kegiatan.permen_ver')
		->orderBy('ref_rkpd_sub_kegiatan.urusan_kode')
		->orderBy('ref_rkpd_sub_kegiatan.bidang_kode')
		->orderBy('ref_rkpd_sub_kegiatan.program_kode')
		->orderBy('ref_rkpd_sub_kegiatan.kegiatan_kode')
		->orderBy('ref_rkpd_sub_kegiatan.sub_kegiatan_kode');

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
			."-".$row->permen_ver
			."-".$row->urusan_kode
			."-".$row->bidang_kode
			."-".$row->program_kode;
			if($program_id != $temp){
				$program_id = $temp;
				$program_index = $index;
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

				$dataAll[$index]['jumRow'] = count($dataAll[$index]['data'])==0?1:count($dataAll[$index]['data']);

				$dataAll[$index]['level'] = 3;
				$index++;
			}

			$temp = $row->opd_id
			."-".$row->permen_ver
			."-".$row->urusan_kode
			."-".$row->bidang_kode
			."-".$row->program_kode
			."-".$row->kegiatan_kode;
			if($kegiatan_id != $temp){
				$kegiatan_id = $temp;
				$kegiatan_index = $index;
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

				$dataAll[$program_index]['jumRow'] += count($dataAll[$index]['data'])==0?1:count($dataAll[$index]['data']);

				$dataAll[$index]['level'] = 4;
				$index++;
			}

			$temp = $row->opd_id
			."-".$row->permen_ver
			."-".$row->urusan_kode
			."-".$row->bidang_kode
			."-".$row->program_kode
			."-".$row->kegiatan_kode
			."-".$row->sub_kegiatan_kode;
			if($sub_kegiatan_id != $temp){
				$sub_kegiatan_id = $temp;
				$sub_kegiatan_index = $index;
				$dataAll[$index]['uraian'] = $row->sub_kegiatan_nama;
				$dataAll[$index]['data'] = DB::table('ref_rkpd_sub_kegiatan_indikator')
				->where('ref_rkpd_sub_kegiatan_indikator.rkpd_sub_kegiatan_id', $row->id)
				->get();


				$dataAll[$program_index]['jumRow'] += count($dataAll[$index]['data'])==0?1:count($dataAll[$index]['data']);

				for($rowPagu = 0; $rowPagu < count($dataAll[$index]['data']);$rowPagu++) {
					$pagu = $dataAll[$index]['data'][$rowPagu]->rkpd_sub_kegiatan_indikator_pagu;
					$temp = 'rkpd_sub_kegiatan_indikator_tw4_pagu';
					$triwulan = session('triwulan');
					$temp = 'rkpd_sub_kegiatan_indikator_tw'.$triwulan.'_pagu';
					$realisasi_pagu = $dataAll[$index]['data'][$rowPagu]->$temp;
					$temp = 'rkpd_sub_kegiatan_indikator_tw'.$triwulan.'_target';
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

    if($cetak == 'pdf'){
      $pdf = PDF::loadView('pdf/renja', $kirim)->setPaper('a4', 'landscape');
      return $pdf->download('pdf_file.pdf');
    }else{
      return view('pdf/renja', $kirim);
    }

	}

}
