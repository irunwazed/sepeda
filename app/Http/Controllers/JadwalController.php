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

    $kirim = [
      'tahun' => $tahun,
      'triwulan' => $triwulan,
    ];
    print_r($kirim);
    return view('components/admin/jadwal', $kirim);
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

}
