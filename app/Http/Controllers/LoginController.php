<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Validator;

class LoginController extends Controller
{
  public function view(){
    return view('pages/login1');
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
}
