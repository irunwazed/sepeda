<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Validator;

class AdminController extends Controller
{
  public function beranda(){
    return view('components/admin/beranda');
  }

	public function setOPD(Request $request){
		$opd = $request->opd;


		session()->put('opd', $opd);

		return redirect()->back();
	}

}
