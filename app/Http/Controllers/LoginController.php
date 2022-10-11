<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Validator;
use Illuminate\Support\Facades\Hash;

class LoginController extends Controller
{
  public function view(){
    return view('pages/login2');
  }

  public function cekLogin(Request $request){


    $rule = [
      'username' => 'required|min:2',
      'password' => 'required'
    ];

    $messages = [
      'required' => ':attribute kosong.',
      'min'=>':attribute terlalu pendek',
    ];
    $validator = Validator::make($request->all(), $rule, $messages);

    if ($validator->fails()) {
      return back()
          ->withErrors($validator)
          ->withInput();
    }
    $username = $request->username;
    
    $user = DB::table('login')
            ->where('login_username', $username)
            ->first();
            
    if(@$user->login_password){
      $password = $request->password;
      if(password_verify($password, @$user->login_password)){

        session()->put('login_level', @$user->login_level);
        session()->put('login_username', @$user->login_username);
        session()->put('id', @$user->id);
        session()->put('login_nama', @$user->login_nama);

        // session()->put('permen_ver', 1);
        session()->put('rpjmd', 1); 
        session()->put('opd', 1); // sesuai login opd


				$temp = DB::table('pengaturan')
				->where('nama', 'rpjmd_tahun')->first();
        session()->put('rpjmd_tahun', @$temp->value); // tahun awal RPJMD

				$temp = DB::table('pengaturan')
				->where('nama', 'tahun')->first();
        session()->put('tahun', @$temp->value); // tahun ke untuk RPKD

				$temp = DB::table('pengaturan')
				->where('nama', 'triwulan')->first();
        session()->put('triwulan', @$temp->value); // triwulan


        if(@$user->login_level == 3){
          $dataOPD = DB::table('ref_login_opd')->where('login_id', @$user->id)->first();
          session()->put('opd', @$dataOPD->opd_id);
					return redirect('opd');
        }

        return redirect('admin');
      }
      return back()
          ->withErrors(['password salah!'])
          ->withInput();
    }
    return back()
          ->withErrors(['username salah!']);
  }

  public function logout(){

    session()->flush();
    return redirect('login');
  }

	public function changePassword(Request $request){

		// $rule = [
    //   'password_lama' => 'required',
    //   'password_baru' => 'required',
    //   'password_ulang' => 'required',
    // ];

    // $messages = [
    //   'required' => ':attribute kosong.',
    // ];
    // $validator = Validator::make($request->all(), $rule, $messages);

    // if ($validator->fails()) {
    //   return response([
		// 		'status' => false,
		// 		'pesan' => 'masukkan request dengan benar!',
		// 	]);
    // }

    $password_lama = $request->password_lama;
    $password_baru = $request->password_baru;
    $password_ulang = $request->password_ulang;

		if($password_baru == $password_lama){
			return response([
				'status' => false,
				'pesan' => 'password lama anda sama dengan yg baru!',
			]);
		}

		if($password_baru != $password_ulang){
			return response([
				'status' => false,
				'pesan' => 'tolong ulangi password anda dengan benar!',
			]);
		}

		$user = DB::table('login')->where('id', session('id'))->first();

		if(!password_verify($password_lama, @$user->login_password)){
			return response([
				'status' => false,
				'pesan' => 'password lama anda salah!',
			]);
		}

		DB::table('login')->where('id', $user->id)->update([
			'login_password' => Hash::make($password_baru),
		]);

		return response([
			'status' => true,
			'pesan' => 'password berhasil diubah',
		]);
	}

	public function resetPassword(Request $request){

		$rule = [
      'id' => 'required',
    ];

    $messages = [
      'required' => ':attribute kosong.',
    ];
    $validator = Validator::make($request->all(), $rule, $messages);

    if ($validator->fails()) {
			return response([
				'status' => true,
				'pesan' => 'masukkan akun yang akan direset',
			]);
    }

		$id = $request->id;
		$reset = '123456';
		DB::table('login')->where('id', $id)->update([
			'login_password' => Hash::make($reset),
		]);

		return response([
			'status' => true,
			'pesan' => 'password telah direset menjadi \''.$reset.'\'',
		]);
	}
}
