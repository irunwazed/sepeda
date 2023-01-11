<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Validator;
use DataTables;

class JadwalController extends Controller
{

	private $table;
	public function __construct()
  {
    $this->table = 'pengaturan';
  }

  public function view(){

    $tahun = DB::table($this->table)->where('nama', 'tahun')->first();
    $triwulan = DB::table($this->table)->where('nama', 'triwulan')->first();

    $dataJadwal = DB::table('ref_jadwal')->get();

    $kirim = [
      'tahun' => $tahun,
      'triwulan' => $triwulan,
			'dataJadwal' => $dataJadwal,
    ];
		
    return view('components/admin/jadwal', $kirim);
  }

  public function getById(Request $request, $id){
    $validator = Validator::make($request->all(), [
      // 'id' => 'required',
    ]);
    $pesan = 'Gagal Terhubung Pada Server!';
    $status = FALSE;
    $error = [];
    $data = array();
    if ($validator->fails()) {
      $error = $validator->errors()->all();
    }else{
      $data = DB::table('ref_jadwal')->where('id', $id)->first();
      if(@$data->id){
        $status = true;
      }
      $status?$pesan = '':$pesan = 'Gagal Load Data';
    }

    $kirim = array(
      'data' => $data,
      'pesan' => $pesan,
      'error' => $error,
      'status' => $status,
    );
    return response($kirim);
  }

	public function update(Request $request){
		$kirim = $this->action($request, 'update');
		return $kirim;
	}

  public function action($request, $action = 'create'){
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

      $status = DB::table($this->table)->where('nama', 'tahun')->update(['value' => $request->tahun]);
      $status = DB::table($this->table)->where('nama', 'triwulan')->update(['value' => $request->triwulan]);

      $status?$pesan = 'Berhasil Mengubah Data':$pesan = 'Gagal Mengubah Data';
      
    }

    return redirect('logout');
  }

	public function setTahun(Request $request){
		$validator = Validator::make($request->all(), [
      'tahun' => 'required',
      'triwulan' => 'numeric|min:1|max:4',
    ]);
    $pesan = 'Gagal Terhubung Pada Server!';
    $status = FALSE;
    $error = [];
    if ($validator->fails()) {
      $error = $validator->errors()->all();
    }else{

			$tahun = $request->tahun;
			$triwulan = $request->triwulan;

			if($tahun > 5){
				$tahun = 5;
			}else if($tahun < 1){
				$tahun = 1;
			}

			if($triwulan > 4){
				$triwulan = 4;
			}else if($triwulan < 1){
				$triwulan = 1;
			}


			session()->put('tahun', @$tahun);
			session()->put('triwulan', @$triwulan);


      $status?$pesan = 'Berhasil Mengubah Data':$pesan = 'Gagal Mengubah Data';
      
    }

    return redirect()->back();
	}

	public function createJadwal(Request $request){
		$validator = Validator::make($request->all(), []);
    $pesan = 'Gagal Terhubung Pada Server!';
    $status = FALSE;
    $error = [];
    if ($validator->fails()) {
      $error = $validator->errors()->all();
    }else{
			$id = $request->id;
      $status = DB::table('ref_jadwal')->insert([
				'jadwal_nama' => $request->jadwal_nama,
				'jadwal_tahun' => '[]',
				'jadwal_triwulan' => '[1,2,3,4]',
				'jadwal_mulai' => $request->jadwal_mulai,
				'jadwal_akhir' => $request->jadwal_akhir,
				'jadwal_data' => '[]',
				'jadwal_status' => 1,
			]);

      $status?$pesan = 'Berhasil Menambah Data':$pesan = 'Gagal Menambah Data';
      
    }

    return redirect()->back();
	}

	public function updateJadwal(Request $request){
		$validator = Validator::make($request->all(), []);
    $pesan = 'Gagal Terhubung Pada Server!';
    $status = FALSE;
    $error = [];
    if ($validator->fails()) {
      $error = $validator->errors()->all();
    }else{
			$id = $request->id;
      $status = DB::table('ref_jadwal')->where('id', $id)->update([
				'jadwal_nama' => $request->jadwal_nama,
				'jadwal_akhir' => $request->jadwal_akhir,
			]);

      $status?$pesan = 'Berhasil Mengubah Data':$pesan = 'Gagal Mengubah Data';
      
    }

    return redirect()->back();
	}


	public function deleteJadwal(Request $request, $id){
		$validator = Validator::make($request->all(), []);
    $pesan = 'Gagal Terhubung Pada Server!';
    $status = FALSE;
    $error = [];
    if ($validator->fails()) {
      $error = $validator->errors()->all();
    }else{
      $status = DB::table('ref_jadwal')->where('id', $id)->delete();
      $status?$pesan = 'Berhasil Menghapus Data':$pesan = 'Gagal Menghapus Data';
    }

    return redirect()->back();
	}

	public function kunciJadwal(Request $request, $id){
		$validator = Validator::make($request->all(), []);
    $pesan = 'Gagal Terhubung Pada Server!';
    $status = FALSE;
    $error = [];
    if ($validator->fails()) {
      $error = $validator->errors()->all();
    }else{
      $status = DB::table('ref_jadwal')->where('id', $id)->update([
				'jadwal_status' => 2
			]);
      $status?$pesan = 'Berhasil Mengunci Data':$pesan = 'Gagal Mengunci Data';
    }

    return redirect()->back();
	}

}
