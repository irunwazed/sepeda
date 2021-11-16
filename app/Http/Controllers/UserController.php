<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Validator;
use DataTables;

class UserController extends Controller
{

	private $table;
	public function __construct()
  {
    $this->table = 'login';
  }

  public function view(){
    return view('components/admin/pengguna');
  }

  public function getData(Request $request, $id = null){

    $data = DB::table($this->table);

		if($id != null){
			$data = $data->where('id', $id);
		}
    
    return DataTables::of($data->get())
    ->addColumn('action', '
		
			<div class="btn-group mb-2 mr-2">
				<button class="btn btn-info dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></button>
				<div class="dropdown-menu" x-placement="bottom-start" style="position: absolute; transform: translate3d(0px, 43px, 0px); top: 0px; left: 0px; will-change: transform;">
						
					<a class="dropdown-item" href="#" onclick="setUpdate(\'{{$id}}\')"><i class="feather icon-edit"></i> Ubah</a>
					<a class="dropdown-item" href="#" onclick="setView(\'{{$id}}\')"><i class="feather icon-search"></i> Detail</a>
					<a class="dropdown-item" href="#" onclick="setDelete(\'{{$id}}\')"><i class="feather icon-trash"></i> Hapus</a>
				</div>
			</div>
			')
    ->rawColumns(['action'])
    ->make(true);
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
      $data = $this->getData($request, $id)->original['data'][0];
      if(@$data['id']){
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

	public function create(Request $request){
		$kirim = $this->action($request);
		return $kirim;
	}

	public function update(Request $request){
		$kirim = $this->action($request, 'update');
		return $kirim;
	}

  public function action($request, $action = 'create'){
    $validator = Validator::make($request->all(), [
      'login_nama' => 'required',
      'login_username' => 'required',
      'login_level' => 'required',
    ]);
    $pesan = 'Gagal Terhubung Pada Server!';
    $status = FALSE;
    $error = [];
    if ($validator->fails()) {
      $error = $validator->errors()->all();
    }else{
			$date = date('Y-m-d H:i:s');
			$data = [
				'login_nama' => $request->login_nama,
				'login_username' => $request->login_username,
				'login_level' => $request->login_level,
				'updated_at' => $date,
			];

			if($action == 'create'){
				$data['created_at'] = $date;
				$data['login_password'] = $request->login_password;
				$data['login_aktif'] = 1;
				
				$status = DB::table($this->table)->insert($data);
				$status?$pesan = 'Berhasil Menambahkan Data':$pesan = 'Gagal Menambahkan Data';
			}else if($action == 'update'){
				if(@$request->id){
					$status = DB::table($this->table)->where('id', $request->id)->update($data);
				}
				$status?$pesan = 'Berhasil Mengubah Data':$pesan = 'Gagal Mengubah Data';
				// print_r($request->all());
			}
    }

    $kirim = array(
      'pesan' => $pesan,
      'error' => $error,
      'status' => $status
    );
    return $kirim;
  }

  public function delete(Request $request, $id){
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


  public function changePassword(Request $request){
    $validator = Validator::make($request->all(), [
      'password_lama' => 'required',
      'password_baru' => 'required',
      'password_ulang' => 'required',
    ]);
    $pesan = 'Gagal Terhubung Pada Server!';
    $status = FALSE;
    $error = [];
    if ($validator->fails()) {
      $error = $validator->errors()->all();
    }else{

      $user = DB::table('login')
            ->where('id', session('id'))
            ->first();
      if(!password_verify($request->password_lama, @$user->login_password)){
        return response()->json([
          'status' => false,
          'pesan' => 'Password anda salah, silahkan masukkan ulang'
        ]);
      }

      if($request->password_baru != $request->password_ulang){
        return response()->json([
          'status' => false,
          'pesan' => 'Password baru yang anda masukkan tidak sama. Ulangi pengisian password baru'
        ]);
      }
      
      $data = LoginModel::find(session('id'));
      $data->login_password = Hash::make($request->password_baru);
      $status = $data->save();
      $status?$pesan = 'Berhasil Mengubah Data':$pesan = 'Gagal Mengubah Data';
    }

    $kirim = array(
      'pesan' => $pesan,
      'error' => $user,
      'status' => $status,
    );
    return response()->json($kirim);
  }
}
