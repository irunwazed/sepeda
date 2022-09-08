<?php

namespace App\Http\Controllers\Realisasi;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Validator;
use DataTables;

class TujuanOPDController extends Controller
{

	private $table;
	public function __construct()
  {
    $this->table = 'ref_renstra_tujuan_indikator';
  }

  public function view(){


		$dataOPD = DB::table('ref_opd')->get();


		$kirim = [
			'dataOPD' => $dataOPD,
			// 'dataProgram' => $dataProgram,
		];
		
    return view('components/realisasi/tujuan-opd', $kirim);
  }

	public function getQuery($request){
		$data = DB::table($this->table)
		->select($this->table.'.*'
		, 'ref_renstra_tujuan.renstra_tujuan_nama')
		->leftJoin('ref_renstra_tujuan', function ($join) {
			$join->on('ref_renstra_tujuan.opd_id', '=', 'ref_renstra_tujuan_indikator.opd_id');
			$join->on('ref_renstra_tujuan.renstra_tujuan_kode', '=', 'ref_renstra_tujuan_indikator.renstra_tujuan_kode');
		})
		->where('ref_renstra_tujuan.opd_id', session('opd'));

		return $data;
	}

  public function getData(Request $request, $id = null){
    $data = $this->getQuery($request);
		if($id != null){
			$data = $data->where($this->table.'.renstra_tujuan_kode', $id);

			$kirim = [
				'status' => true,
				'data' => $data->first(),
			];
			return $kirim;
		}

		$number = 0;
    $tahun_ke = session('tahun');
    return DataTables::of($data->get())
		->addColumn('target', function ($row) use ($tahun_ke) {
			$th = 'renstra_tujuan_indikator_th'.$tahun_ke.'_target';
			$nilai = $row->$th;
			$hasil = $nilai;
			if (@$row->renstra_tujuan_indikator_nilai_jenis == 2) {
				$arr = json_decode($row->renstra_tujuan_indikator_nilai_json, true);
				for ($i = 0; $i < count($arr); $i++) {
					$temp = 0;
					if ($nilai <= $arr[$i]['nilai'] && $nilai > $temp) {
						$hasil = $arr[$i]['nama'];
						$temp = $arr[$i]['nilai'];
					}
				}
			}
			return $hasil;
		})
		->addColumn('realisasi_target', function ($row) use ($tahun_ke) {
			$th = 'renstra_tujuan_indikator_th'.$tahun_ke.'_realisasi_target';
			$nilai = $row->$th;
			$hasil = $nilai;
			if (@$row->renstra_tujuan_indikator_nilai_jenis == 2) {
				$arr = json_decode($row->renstra_tujuan_indikator_nilai_json, true);
				for ($i = 0; $i < count($arr); $i++) {
					$temp = 0;
					if ($nilai <= $arr[$i]['nilai'] && $nilai > $temp) {
						$hasil = $arr[$i]['nama'];
						$temp = $arr[$i]['nilai'];
					}
				}
			}
			return $hasil;
		})
		->addColumn('pagu', function($row){
			$hasil = 0;

			$temp = DB::table('ref_rkpd_sub_kegiatan_indikator')
			->leftJoin('ref_rkpd_sub_kegiatan', 'ref_rkpd_sub_kegiatan.id', '=', 'ref_rkpd_sub_kegiatan_indikator.rkpd_sub_kegiatan_id')
			->leftJoin('ref_rpjmd_program', function($join)
			{
				$join->on('ref_rpjmd_program.permen_ver', '=', 'ref_rkpd_sub_kegiatan.permen_ver');
				$join->on('ref_rpjmd_program.urusan_kode', '=', 'ref_rkpd_sub_kegiatan.urusan_kode');
				$join->on('ref_rpjmd_program.bidang_kode', '=', 'ref_rkpd_sub_kegiatan.bidang_kode');
				$join->on('ref_rpjmd_program.program_kode', '=', 'ref_rkpd_sub_kegiatan.program_kode');
				$join->on('ref_rpjmd_program.opd_id', '=', 'ref_rkpd_sub_kegiatan.opd_id');
			})
			->where('ref_rpjmd_program.renstra_tujuan_kode', $row->renstra_tujuan_kode)
			->where('ref_rkpd_sub_kegiatan.tahun_ke', session('tahun'))
			->sum('ref_rkpd_sub_kegiatan_indikator.rkpd_sub_kegiatan_indikator_pagu');


			return @$temp;
		})
		->addColumn('realisasi_pagu', function($row){
			$hasil = 0;


			$temp = DB::table('ref_rkpd_sub_kegiatan_indikator')
			->leftJoin('ref_rkpd_sub_kegiatan', 'ref_rkpd_sub_kegiatan.id', '=', 'ref_rkpd_sub_kegiatan_indikator.rkpd_sub_kegiatan_id')
			->leftJoin('ref_rpjmd_program', function($join)
			{
				$join->on('ref_rpjmd_program.permen_ver', '=', 'ref_rkpd_sub_kegiatan.permen_ver');
				$join->on('ref_rpjmd_program.urusan_kode', '=', 'ref_rkpd_sub_kegiatan.urusan_kode');
				$join->on('ref_rpjmd_program.bidang_kode', '=', 'ref_rkpd_sub_kegiatan.bidang_kode');
				$join->on('ref_rpjmd_program.program_kode', '=', 'ref_rkpd_sub_kegiatan.program_kode');
				$join->on('ref_rpjmd_program.opd_id', '=', 'ref_rkpd_sub_kegiatan.opd_id');
			})
			// ->leftJoin('ref_rpjmd_sasaran', 'ref_rpjmd_sasaran.id', '=', 'ref_rpjmd_program.rpjmd_sasaran_id')
			// ->leftJoin('ref_rpjmd_tujuan', 'ref_rpjmd_tujuan.id', '=', 'ref_rpjmd_sasaran.rpjmd_tujuan_id')
			->where('ref_rpjmd_program.renstra_tujuan_kode', $row->renstra_tujuan_kode)
			->where('ref_rkpd_sub_kegiatan.tahun_ke', session('tahun'))
			->sum('ref_rkpd_sub_kegiatan_indikator.rkpd_sub_kegiatan_indikator_tw'.session('triwulan').'_pagu');



			return @$temp;
		})
			->addColumn('action', '
				<div class="btn-group mb-2 mr-2">
					<button class="btn btn-info dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></button>
					<div class="dropdown-menu" x-placement="bottom-start" style="position: absolute; transform: translate3d(0px, 43px, 0px); top: 0px; left: 0px; will-change: transform;">
							
						<a class="dropdown-item" href="#" onclick="setUpdate(\'{{@$renstra_tujuan_kode}}\')"><i class="feather icon-edit"></i> Realisasi</a>

					</div>
				</div>
				')
			->rawColumns(['action'])
			->make(true);
  }

	function setKode($angka, $level = 1){
		$hasil = '';

		if($level == 2){
			$angka = (String) $angka;
			$hasil = @$angka[0].'.'.@$angka[1].@$angka[2];
			
		}else if($level == 3){
			if($angka < 10){
				$hasil = '00'.$angka;
			}else if($angka < 100){
				$hasil = '0'.$angka;
			}else{
				$hasil = $angka;
			}
		}else{

			if($angka == 0){
				$hasil =  'XX';
			}else if($angka < 10){
				$hasil = '0'.$angka;
			}else{
				$hasil = $angka;
			}
		}
		return $hasil;
	}

	public function create(Request $request, $kode = ''){
		$kirim = $this->action($request, 'create', $kode);
		return $kirim;
	}

	public function update(Request $request, $kode = ''){
		$kirim = $this->action($request, 'update', $kode);
		return $kirim;
	}

  public function action($request, $action = 'create', $kode = ''){
    $validator = Validator::make($request->all(), [
      // 'login_nama' => 'required',
      // 'login_username' => 'required',
      // 'login_level' => 'required',
    ]);
    $pesan = 'Gagal Terhubung Pada Server!';
    $status = FALSE;
    $error = [];
    if ($validator->fails()) {
      $error = $validator->errors()->all();
    }else{
			$date = date('Y-m-d H:i:s');

			$data = [
				'renstra_tujuan_indikator_th'.session('tahun').'_realisasi_target' => $request->realisasi_kinerja,
				'updated_at' => $date,
			];

			
			if(@$request->id){
				$status = DB::table($this->table)->where([

					'opd_id' => session('opd'),
					'renstra_tujuan_kode' => $request->kode,
					'renstra_tujuan_indikator_kode' => $request->id,
				])->update($data);
			}
			$status?$pesan = 'Berhasil Mengubah Data':$pesan = 'Gagal Mengubah Data';

    }

    $kirim = array(
      'pesan' => $pesan,
      'error' => $error,
      'status' => $status
    );
    return $kirim;
  }

  public function delete(Request $request, $kode, $id){
    $validator = Validator::make($request->all(), [
    ]);
    $pesan = 'Gagal Terhubung Pada Server!';
    $status = FALSE;
    $error = [];
    if ($validator->fails()) {
      $error = $validator->errors()->all();
    }else{
      $status = DB::table($this->table)->where('id', $id)->delete();
      $status?$pesan = 'Berhasil Menghapus Data':$pesan = 'Gagal Menghapus Data';
    }

    $kirim = array(
      'pesan' => $pesan,
      'error' => $error,
      'status' => $status,
    );
    return response($kirim);
  }

}