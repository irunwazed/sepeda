<?php

namespace App\Http\Controllers\Realisasi;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Validator;
use DataTables;

class SasaranOPDController extends Controller
{

	private $table;
	public function __construct()
  {
    $this->table = 'ref_renstra_sasaran_indikator';
  }

  public function view(){

		$dataOPD = DB::table('ref_opd')->get();

		$kirim = [
			'dataOPD' => $dataOPD,
			// 'dataProgram' => $dataProgram,
		];
		
    return view('components/realisasi/sasaran-opd', $kirim);
  }

	public function getQuery($request){
		$data = DB::table($this->table)
		->select($this->table.'.*'
		, 'ref_renstra_sasaran.renstra_sasaran_nama'
		, 'ref_renstra_tujuan.renstra_tujuan_nama')

		->leftJoin('ref_renstra_sasaran', function ($join) {
			$join->on('ref_renstra_sasaran.opd_id', '=', 'ref_renstra_sasaran_indikator.opd_id');
			$join->on('ref_renstra_sasaran.renstra_tujuan_kode', '=', 'ref_renstra_sasaran_indikator.renstra_tujuan_kode');
			$join->on('ref_renstra_sasaran.renstra_sasaran_kode', '=', 'ref_renstra_sasaran_indikator.renstra_sasaran_kode');
		})
		->leftJoin('ref_renstra_tujuan', function ($join) {
			$join->on('ref_renstra_tujuan.opd_id', '=', 'ref_renstra_sasaran_indikator.opd_id');
			$join->on('ref_renstra_tujuan.renstra_tujuan_kode', '=', 'ref_renstra_sasaran_indikator.renstra_tujuan_kode');
		})
		->where('ref_renstra_tujuan.opd_id', session('opd'));

		return $data;
	}

  public function getData(Request $request, $id = null){
    $data = $this->getQuery($request);
		if($id != null){
			$kodeId = explode("-", $id);
			$data = $data->where($this->table . '.opd_id', $kodeId[0])
			->where($this->table . '.renstra_tujuan_kode', $kodeId[1])
			->where($this->table . '.renstra_sasaran_kode', $kodeId[2])
			->where($this->table . '.renstra_sasaran_indikator_kode', $kodeId[3]);
		

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
			$th = 'renstra_sasaran_indikator_th'.$tahun_ke.'_target';
			$nilai = $row->$th;
			$hasil = $nilai;
			if (@$row->renstra_sasaran_indikator_nilai_jenis == 2) {
				$arr = json_decode($row->renstra_sasaran_indikator_nilai_json, true);
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
			$th = 'renstra_sasaran_indikator_th'.$tahun_ke.'_realisasi_target';
			$nilai = $row->$th;
			$hasil = $nilai;
			if (@$row->renstra_sasaran_indikator_nilai_jenis == 2) {
				$arr = json_decode($row->renstra_sasaran_indikator_nilai_json, true);
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

			$temp = DB::table('ref_rkpd_sub_kegiatan')
			->leftJoin('ref_rpjmd_program', function($join)
			{
				$join->on('ref_rpjmd_program.permen_ver', '=', 'ref_rkpd_sub_kegiatan.permen_ver');
				$join->on('ref_rpjmd_program.urusan_kode', '=', 'ref_rkpd_sub_kegiatan.urusan_kode');
				$join->on('ref_rpjmd_program.bidang_kode', '=', 'ref_rkpd_sub_kegiatan.bidang_kode');
				$join->on('ref_rpjmd_program.program_kode', '=', 'ref_rkpd_sub_kegiatan.program_kode');
				$join->on('ref_rpjmd_program.opd_id', '=', 'ref_rkpd_sub_kegiatan.opd_id');
			})
			// ->leftJoin('ref_rpjmd_sasaran', 'ref_rpjmd_sasaran.id', '=', 'ref_rpjmd_program.rpjmd_sasaran_id')
			->where('ref_rpjmd_program.renstra_sasaran_kode', $row->renstra_sasaran_kode)
			->where('ref_rkpd_sub_kegiatan.tahun_ke', session('tahun'))
			->sum('ref_rkpd_sub_kegiatan.sub_kegiatan_pagu');
			// ->toSql();

			



			return $temp;
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
			->where('ref_rpjmd_program.renstra_sasaran_kode', $row->renstra_sasaran_kode)
			->where('ref_rkpd_sub_kegiatan.tahun_ke', session('tahun'))
			->sum('ref_rkpd_sub_kegiatan_indikator.rkpd_sub_kegiatan_indikator_tw'.session('triwulan').'_pagu');


			$arrTri = [1,3,6,9,12];

			$temp = DB::table('ref_rkpd_sub_kegiatan')
			->leftJoin('ref_rpjmd_program', function($join)
			{
				$join->on('ref_rpjmd_program.permen_ver', '=', 'ref_rkpd_sub_kegiatan.permen_ver');
				$join->on('ref_rpjmd_program.urusan_kode', '=', 'ref_rkpd_sub_kegiatan.urusan_kode');
				$join->on('ref_rpjmd_program.bidang_kode', '=', 'ref_rkpd_sub_kegiatan.bidang_kode');
				$join->on('ref_rpjmd_program.program_kode', '=', 'ref_rkpd_sub_kegiatan.program_kode');
				$join->on('ref_rpjmd_program.opd_id', '=', 'ref_rkpd_sub_kegiatan.opd_id');
			})
			// ->leftJoin('ref_rpjmd_sasaran', 'ref_rpjmd_sasaran.id', '=', 'ref_rpjmd_program.rpjmd_sasaran_id')
			->where('ref_rpjmd_program.renstra_sasaran_kode', $row->renstra_sasaran_kode)
			->where('ref_rkpd_sub_kegiatan.tahun_ke', session('tahun'))
			->sum('ref_rkpd_sub_kegiatan.sub_kegiatan_pagu_bln'.$arrTri[session('triwulan')]);
			// ->toSql();


			return $temp;
		})
			->addColumn('action', function($row){
				return '
				<span class="btn btn-primary feather icon-edit" onclick="setUpdate(\''.$row->opd_id."-".$row->renstra_tujuan_kode."-".$row->renstra_sasaran_kode."-".$row->renstra_sasaran_indikator_kode.'\')"></span>
				';
			})
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
				'renstra_sasaran_indikator_th'.session('tahun').'_realisasi_target' => $request->realisasi_kinerja,
				'updated_at' => $date,
			];

			
			if(@$request->kode){
				$kode = explode("-", $request->kode);

				$status = DB::table($this->table)->where([
					'opd_id' => session('opd'),
					'renstra_tujuan_kode' => @$kode[0],
					'renstra_sasaran_kode' => @$kode[1],
					'renstra_sasaran_indikator_kode' => @$kode[2],
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

  // public function delete(Request $request, $kode, $id){
  //   $validator = Validator::make($request->all(), [
  //   ]);
  //   $pesan = 'Gagal Terhubung Pada Server!';
  //   $status = FALSE;
  //   $error = [];
  //   if ($validator->fails()) {
  //     $error = $validator->errors()->all();
  //   }else{
  //     $status = DB::table($this->table)->where('id', $id)->delete();
  //     $status?$pesan = 'Berhasil Menghapus Data':$pesan = 'Gagal Menghapus Data';
  //   }

  //   $kirim = array(
  //     'pesan' => $pesan,
  //     'error' => $error,
  //     'status' => $status,
  //   );
  //   return response($kirim);
  // }

}