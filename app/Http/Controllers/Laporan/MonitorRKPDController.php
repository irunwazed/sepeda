<?php

namespace App\Http\Controllers\Laporan;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Validator;
use DataTables;
use PDF;

class MonitorRKPDController extends Controller
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
    return view('components/laporan/monitor-rkpd', $kirim);
  }

	public function setDataLaporan($request){
		

		$dataProgram = DB::table('ref_program')->get();
		$dataOPD = DB::table('ref_opd')->get();


		$dataAll = [];
		$idx = 0;
		$dataTotal = [];

		foreach($dataOPD as $rowOPD){
			foreach($dataProgram as $row){
				$jum_rkpd = DB::table('ref_rkpd_sub_kegiatan')
					->where('permen_ver', $row->permen_ver)
					->where('urusan_kode', $row->urusan_kode)
					->where('bidang_kode', $row->bidang_kode)
					->where('program_kode', $row->program_kode)
					->where('tahun_ke', session('tahun'))
					->where('opd_id', @$rowOPD->id)
					->count();

					

				$jum_rpjmd = DB::table('ref_rpjmd_program')
					->where('permen_ver', $row->permen_ver)
					->where('urusan_kode', $row->urusan_kode)
					->where('bidang_kode', $row->bidang_kode)
					->where('program_kode', $row->program_kode);
				if($rowOPD->opd_level == 2){
					$jum_rpjmd = $jum_rpjmd->where('opd_id', @$rowOPD->opd_id);
				}else{
					$jum_rpjmd = $jum_rpjmd->where('opd_id', @$rowOPD->id);
				}
				$jum_rpjmd = $jum_rpjmd->count();

				if($jum_rkpd > 0 || $jum_rpjmd > 0){
					// echo @$rowOPD->opd_nama." - ".$row->program_nama."<br>";
					// $dataAll[$idx] = $row;
					$dataAll[$idx]['kode'] = $this->setKode($row->urusan_kode, 1).".".$this->setKode($row->bidang_kode,2).".".$this->setKode($row->program_kode,3);
					$dataAll[$idx]['jum_rkpd'] = $jum_rkpd > 0?1:0;
					$dataAll[$idx]['jum_rpjmd'] = $jum_rpjmd;
					$dataAll[$idx]['opd_nama'] = @$rowOPD->opd_nama;
					$dataAll[$idx]['program'] = $row->program_nama;
					$idx++;

					if($jum_rkpd > 0)$dataTotal['jum_rkpd'] = 1 + @$dataTotal['jum_rkpd'];
					if($jum_rpjmd > 0)$dataTotal['jum_rpjmd'] = 1 + @$dataTotal['jum_rpjmd'];
				}
			}
		}

		
		// echo "<pre>";
		// print_r($dataAll);
		// echo "</pre>";
		// die();

		
		$kirim = [
			'dataAll' => @$dataAll,
			'dataTotal' => @$dataTotal,
		];

		return $kirim;
	}
	
	public function cetak(Request $request){
		
		$cetak = $request->cetak;
		$kirim = $this->setDataLaporan($request);
    if($cetak == 'pdf'){
      $pdf = PDF::loadView('pdf/monitor-rkpd', $kirim)->setPaper('a4', 'landscape');
      return $pdf->download('monitor-rkpd.pdf');
    }else{
      return view('pdf/monitor-rkpd', $kirim);
    }
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