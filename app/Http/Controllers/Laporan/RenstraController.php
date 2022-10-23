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
    $this->table = 'ref_renstra_kegiatan';
  }

  public function view(){

		$dataOPD = DB::table('ref_opd')->get();
		$kirim = [
			'dataOPD' => $dataOPD,
		];
    return view('components/laporan/renstra', $kirim);
  }

  public function viewRapor(){

		$dataOPD = DB::table('ref_opd')->get();
		$kirim = [
			'dataOPD' => $dataOPD,
		];
    return view('components/laporan/predikat', $kirim);
  }

	public function getQuery($request){
		$data = DB::table($this->table)
		->select($this->table.'.*'
		, 'ref_rpjmd_program.renstra_tujuan_kode'
		, 'ref_rpjmd_program.renstra_sasaran_kode'
		, 'ref_rpjmd_program.id as rpjmd_program_id'
		, 'ref_renstra_kegiatan.id as renstra_kegiatan_id'
		, 'ref_renstra_tujuan.renstra_tujuan_nama'
		, 'ref_renstra_sasaran.renstra_sasaran_nama'
		, 'ref_urusan.urusan_kode'
		, 'ref_bidang.bidang_kode'
		, 'ref_program.program_kode'
		, 'ref_kegiatan.kegiatan_kode'
		, 'ref_program.program_nama'
		, 'ref_kegiatan.kegiatan_nama'
		, 'ref_rpjmd_program.opd_id'
		, 'ref_renstra_tujuan.renstra_tujuan_nama'
		, 'ref_renstra_sasaran.renstra_sasaran_nama'
		, 'ref_opd.opd_nama')
		// ->leftJoin('ref_renstra_kegiatan', 'ref_renstra_kegiatan.id', '=', 'ref_renstra_sub_kegiatan.renstra_kegiatan_id')
		->leftJoin('ref_rpjmd_program', 'ref_rpjmd_program.id', '=', 'ref_renstra_kegiatan.rpjmd_program_id')
		->leftJoin('ref_opd', 'ref_opd.id', '=', 'ref_rpjmd_program.opd_id')
		// ->leftJoin('ref_rpjmd_sasaran', 'ref_rpjmd_sasaran.id', '=', 'ref_rpjmd_program.rpjmd_sasaran_id')
		// ->leftJoin('ref_rpjmd_tujuan', 'ref_rpjmd_tujuan.id', '=', 'ref_rpjmd_sasaran.rpjmd_tujuan_id')
		->leftJoin('ref_urusan', function($join){
			$join->on('ref_urusan.permen_ver', '=', 'ref_renstra_kegiatan.permen_ver');
			$join->on('ref_urusan.urusan_kode', '=', 'ref_renstra_kegiatan.urusan_kode');
		})
		->leftJoin('ref_bidang', function($join){
			$join->on('ref_bidang.permen_ver', '=', 'ref_renstra_kegiatan.permen_ver');
			$join->on('ref_bidang.urusan_kode', '=', 'ref_renstra_kegiatan.urusan_kode');
			$join->on('ref_bidang.bidang_kode', '=', 'ref_renstra_kegiatan.bidang_kode');
		})
		->leftJoin('ref_program', function($join){
			$join->on('ref_program.permen_ver', '=', 'ref_renstra_kegiatan.permen_ver');
			$join->on('ref_program.urusan_kode', '=', 'ref_renstra_kegiatan.urusan_kode');
			$join->on('ref_program.bidang_kode', '=', 'ref_renstra_kegiatan.bidang_kode');
			$join->on('ref_program.program_kode', '=', 'ref_renstra_kegiatan.program_kode');
		})
		->leftJoin('ref_kegiatan', function($join)
		{
			$join->on('ref_kegiatan.permen_ver', '=', 'ref_renstra_kegiatan.permen_ver');
			$join->on('ref_kegiatan.urusan_kode', '=', 'ref_renstra_kegiatan.urusan_kode');
			$join->on('ref_kegiatan.bidang_kode', '=', 'ref_renstra_kegiatan.bidang_kode');
			$join->on('ref_kegiatan.program_kode', '=', 'ref_renstra_kegiatan.program_kode');
			$join->on('ref_kegiatan.kegiatan_kode', '=', 'ref_renstra_kegiatan.kegiatan_kode');
		})
		->leftJoin('ref_renstra_tujuan', function($join)
		{
			$join->on('ref_renstra_tujuan.opd_id', '=', 'ref_rpjmd_program.opd_id');
			$join->on('ref_renstra_tujuan.renstra_tujuan_kode', '=', 'ref_rpjmd_program.renstra_tujuan_kode');
		})
		->leftJoin('ref_renstra_sasaran', function($join)
		{
			$join->on('ref_renstra_sasaran.opd_id', '=', 'ref_rpjmd_program.opd_id');
			$join->on('ref_renstra_sasaran.renstra_tujuan_kode', '=', 'ref_rpjmd_program.renstra_tujuan_kode');
			$join->on('ref_renstra_sasaran.renstra_sasaran_kode', '=', 'ref_rpjmd_program.renstra_sasaran_kode');
		})
		->where('ref_opd.id', session('opd'))
		->orderBy('ref_rpjmd_program.renstra_tujuan_kode')
		->orderBy('ref_rpjmd_program.renstra_sasaran_kode')
		->orderBy('ref_kegiatan.permen_ver')
		->orderBy('ref_kegiatan.urusan_kode')
		->orderBy('ref_kegiatan.bidang_kode')
		->orderBy('ref_kegiatan.program_kode')
		->orderBy('ref_kegiatan.kegiatan_kode');
		// ->orderBy('ref_rpjmd_program.id')
		// ->orderBy('ref_renstra_kegiatan.id');

		return $data;

	}

	public function setDataLaporan($request){
		$data = $this->getQuery($request)->get();

		$dataAll = [];
		$dataTotal = [];
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
			
			if($tujuan_id != $row->renstra_tujuan_kode){
				$tujuan_id = $row->renstra_tujuan_kode;
				$tujuan_index = $index;
				$dataAll[$index]['uraian'] = $row->renstra_tujuan_nama;
				$dataAll[$index]['data'] = DB::table('ref_renstra_tujuan_indikator')
				->where('ref_renstra_tujuan_indikator.opd_id', $row->opd_id)
				->where('ref_renstra_tujuan_indikator.renstra_tujuan_kode', $row->renstra_tujuan_kode)
				->get();
				$dataAll[$index]['level'] = 1;
				$index++;
			}

			if($sasaran_id != $row->renstra_sasaran_kode){
				$sasaran_id = $row->renstra_sasaran_kode;
				$sasaran_index = $index;
				$dataAll[$index]['uraian'] = $row->renstra_sasaran_nama;
				$dataAll[$index]['data'] = DB::table('ref_renstra_sasaran_indikator')
				->where('ref_renstra_sasaran_indikator.opd_id', $row->opd_id)
				->where('ref_renstra_sasaran_indikator.renstra_tujuan_kode', $row->renstra_tujuan_kode)
				->where('ref_renstra_sasaran_indikator.renstra_sasaran_kode', $row->renstra_sasaran_kode)
				->get();
				$dataAll[$index]['level'] = 2;
				$index++;
			}

			$temp = $row->urusan_kode."-".$row->bidang_kode."-".$row->program_kode;
			if($program_id != $temp){
				$program_id = $temp;
				$program_index = $index;
				$dataAll[$index]['kode'] = $this->setKode($row->urusan_kode, 1).".".$this->setKode($row->bidang_kode,2).".".$this->setKode($row->program_kode,3);
				$dataAll[$index]['uraian'] = @$row->program_nama;
				$dataAll[$index]['data'] = DB::table('ta_rpjmd_program_indikator')
				->leftJoin('ref_rpjmd_program', 'ref_rpjmd_program.id', '=', 'ta_rpjmd_program_indikator.rpjmd_program_id')
				->leftJoin('ref_opd', 'ref_opd.id', '=', 'ref_rpjmd_program.opd_id')
				->where('ref_rpjmd_program.permen_ver', $row->permen_ver)
				->where('ref_rpjmd_program.urusan_kode', $row->urusan_kode)
				->where('ref_rpjmd_program.bidang_kode', $row->bidang_kode)
				->where('ref_rpjmd_program.program_kode', $row->program_kode)
				->where('ref_rpjmd_program.opd_id', $row->opd_id)
				// ->where('ta_rpjmd_program_indikator.rpjmd_program_id', $row->rpjmd_program_id)
				->get();

				$dataAll[$index]['level'] = 3;
				$index++;
			}


			$temp = $row->urusan_kode."-".$row->bidang_kode."-".$row->program_kode."-".$row->kegiatan_kode;
			if($kegiatan_id != $temp){
				$kegiatan_id = $temp;
				$kegiatan_index = $index;
				$dataAll[$index]['kode'] = $this->setKode($row->urusan_kode, 1).".".$this->setKode($row->bidang_kode,2).".".$this->setKode($row->program_kode,3).".".$this->setKode($row->kegiatan_kode,4);
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

				// target
				for($idxSub = 0; $idxSub < count($dataAll[$index]['data']); $idxSub++){
					for($rowTahun = 1; $rowTahun <= 5; $rowTahun++){
						$temp = 'renstra_kegiatan_indikator_th'.$rowTahun.'_pagu';
						$pagu = $dataAll[$index]['data'][$idxSub]->$temp;

						$dataAll[$index]['dataPagu'][$rowTahun]['pagu'] = $pagu + @$dataAll[$index]['dataPagu'][$rowTahun]['pagu'];
						// $dataAll[$kegiatan_index]['dataPagu'][$rowTahun]['pagu'] = $pagu + @$dataAll[$kegiatan_index]['dataPagu'][$rowTahun]['pagu'];
						$dataAll[$program_index]['dataPagu'][$rowTahun]['pagu'] = $pagu + @$dataAll[$program_index]['dataPagu'][$rowTahun]['pagu'];
						$dataAll[$sasaran_index]['dataPagu'][$rowTahun]['pagu'] = $pagu + @$dataAll[$sasaran_index]['dataPagu'][$rowTahun]['pagu'];
						$dataAll[$tujuan_index]['dataPagu'][$rowTahun]['pagu'] = $pagu + @$dataAll[$tujuan_index]['dataPagu'][$rowTahun]['pagu'];

						$dataTotal['target'][$rowTahun]['pagu'] = $pagu + @$dataTotal['target'][$rowTahun]['pagu'];
					}
				}
				// . target

				//realisasi
				for($rowTahun = 1; $rowTahun <= 5; $rowTahun++){

					$triwulan = 4;
					$arrTriwulan = ['1', '3', '6', '9', '12'];
					if(date('Y')-session('rpjmd_tahun')+1 == $rowTahun){
						// $triwulan = session('triwulan');
						$month = date('m');
						if($month > 9){
							$triwulan = 3;
						}else if($month > 6){
							$triwulan = 2;
						}else{
							$triwulan = 1;
						}
					}
					

					$data_realisasi_pagu = DB::table('ref_rkpd_sub_kegiatan_indikator')
					->select('ref_rkpd_sub_kegiatan_indikator.*'
					, 'ref_rkpd_sub_kegiatan.sub_kegiatan_pagu_bln3'
					, 'ref_rkpd_sub_kegiatan.sub_kegiatan_pagu_bln6'
					, 'ref_rkpd_sub_kegiatan.sub_kegiatan_pagu_bln9'
					, 'ref_rkpd_sub_kegiatan.sub_kegiatan_pagu_bln12')
					->leftJoin('ref_rkpd_sub_kegiatan', 'ref_rkpd_sub_kegiatan.id', '=', 'ref_rkpd_sub_kegiatan_indikator.rkpd_sub_kegiatan_id')
					->where('ref_rkpd_sub_kegiatan.permen_ver', $row->permen_ver)
					->where('ref_rkpd_sub_kegiatan.urusan_kode', $row->urusan_kode)
					->where('ref_rkpd_sub_kegiatan.bidang_kode', $row->bidang_kode)
					->where('ref_rkpd_sub_kegiatan.program_kode', $row->program_kode)
					->where('ref_rkpd_sub_kegiatan.kegiatan_kode', $row->kegiatan_kode)
					->where('ref_rkpd_sub_kegiatan.opd_id', $row->opd_id)
					->where('ref_rkpd_sub_kegiatan.tahun_ke', $rowTahun)
					->get();

					$data_realisasi_pagu2 = DB::table('ref_rkpd_sub_kegiatan')
					->where('ref_rkpd_sub_kegiatan.permen_ver', $row->permen_ver)
					->where('ref_rkpd_sub_kegiatan.urusan_kode', $row->urusan_kode)
					->where('ref_rkpd_sub_kegiatan.bidang_kode', $row->bidang_kode)
					->where('ref_rkpd_sub_kegiatan.program_kode', $row->program_kode)
					->where('ref_rkpd_sub_kegiatan.kegiatan_kode', $row->kegiatan_kode)
					->where('ref_rkpd_sub_kegiatan.opd_id', $row->opd_id)
					->where('ref_rkpd_sub_kegiatan.tahun_ke', $rowTahun)
					// ->groupBy('opd_id', 'tahun_ke', 'permen_ver', 'urusan_kode', 'bidang_kode', 'program_kode', 'kegiatan_kode')
					->get();

					$dataAll[$index]['dataStatus'][$rowTahun]['sub_kegiatan_indikator'] = count($data_realisasi_pagu);

					// pagu
					for($idxReal = 0; $idxReal < count($data_realisasi_pagu2); $idxReal++){
						$temp = 'sub_kegiatan_pagu_bln'.$arrTriwulan[$triwulan];
						$realisasi_pagu = (float)@$data_realisasi_pagu2[$idxReal]->$temp;
						$dataAll[$index]['dataPagu'][$rowTahun]['realisasi_pagu'] = $realisasi_pagu + @$dataAll[$index]['dataPagu'][$rowTahun]['realisasi_pagu'];
						$dataAll[$index]['dataPagu'][$rowTahun]['capaian_pagu'] = $this->setCapaian($realisasi_pagu, @$dataAll[$index]['dataPagu'][$rowTahun]['pagu']);
						
						// $dataAll[$kegiatan_index]['dataPagu'][$rowTahun]['realisasi_pagu'] = $realisasi_pagu + @$dataAll[$kegiatan_index]['dataPagu'][$rowTahun]['realisasi_pagu'];
						$dataAll[$program_index]['dataPagu'][$rowTahun]['realisasi_pagu'] = $realisasi_pagu + @$dataAll[$program_index]['dataPagu'][$rowTahun]['realisasi_pagu'];
						$dataAll[$sasaran_index]['dataPagu'][$rowTahun]['realisasi_pagu'] = $realisasi_pagu + @$dataAll[$sasaran_index]['dataPagu'][$rowTahun]['realisasi_pagu'];
						$dataAll[$tujuan_index]['dataPagu'][$rowTahun]['realisasi_pagu'] = $realisasi_pagu + @$dataAll[$tujuan_index]['dataPagu'][$rowTahun]['realisasi_pagu'];
						
						$dataAll[$program_index]['dataPagu'][$rowTahun]['capaian_pagu'] = $this->setCapaian($dataAll[$program_index]['dataPagu'][$rowTahun]['realisasi_pagu'], @$dataAll[$program_index]['dataPagu'][$rowTahun]['pagu']);
						$dataAll[$sasaran_index]['dataPagu'][$rowTahun]['capaian_pagu'] = $this->setCapaian($dataAll[$sasaran_index]['dataPagu'][$rowTahun]['realisasi_pagu'], @$dataAll[$sasaran_index]['dataPagu'][$rowTahun]['pagu']);
						$dataAll[$tujuan_index]['dataPagu'][$rowTahun]['capaian_pagu'] = $this->setCapaian($dataAll[$tujuan_index]['dataPagu'][$rowTahun]['realisasi_pagu'], @$dataAll[$tujuan_index]['dataPagu'][$rowTahun]['pagu']);

						$dataTotal['realisasi'][$rowTahun]['pagu'] = $realisasi_pagu + @$dataTotal['realisasi'][$rowTahun]['pagu'];
						
					}

				}
				// . realisasi


				$dataAll[$index]['level'] = 4;
				$index++;
			}


		}
		// echo "<pre>";
		// print_r($dataAll);
		// echo "</pre>";
		// die();


		$opd = DB::table('ref_opd')->where('id', session('opd'))->first();
		
		$kirim = [
			'dataAll' => $dataAll,
			'dataTotal' => $dataTotal,
			'opd_nama' => @$opd->opd_nama,
		];



		return $kirim;
	}
	
	public function cetak(Request $request){
		
		$cetak = $request->cetak;
		$kirim = $this->setDataLaporan($request);


    if($cetak == 'pdf'){
      $pdf = PDF::loadView('pdf/renstra', $kirim)->setPaper('a4', 'landscape');
      return $pdf->download('pdf_file.pdf');
    }else{
      return view('pdf/renstra', $kirim);
    }

	}
	
	public function rapor(Request $request){
		
		$cetak = $request->cetak;
		$kirim = $this->setDataLaporan($request);

    if($cetak == 'pdf'){
      $pdf = PDF::loadView('pdf/predikat', $kirim)->setPaper('a4', 'landscape');
      return $pdf->download('pdf_file.pdf');
    }else{
      return view('pdf/predikat', $kirim);
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


	function setKode($kode, $jenis){ // jenis 1 = urusan, 2 = bidang, 3 = program, 4 = kegiatan
		if($jenis == 1){
			if($kode == 0){
				$kode = "X";
			}
		}else if($jenis == 2){
			if($kode == 0){
				$kode = "XX";
			}else if((int)$kode  < 10){
				$kode = "0".$kode;
			}
		}else if($jenis == 3){
			if((int)$kode  < 10){
				$kode = "0".$kode;
			}
		}else if($jenis == 4){
			$kode = str_split($kode);
			$kode = @$kode[0].".".@$kode[1].@$kode[2];
		}
		return $kode;
	}

}