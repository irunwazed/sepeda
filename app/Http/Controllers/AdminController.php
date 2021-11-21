<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Validator;

class AdminController extends Controller
{
  public function beranda(){
		$jumProgram = DB::table('ref_rpjmd_program')->count();
		$jumKegiatan = DB::table('ref_renstra_kegiatan')->count();
		$jumSubKegiatan = DB::table('ref_renstra_sub_kegiatan')->count();
		$kirim = [
			'jumProgram' => $jumProgram,
			'jumKegiatan' => $jumKegiatan,
			'jumSubKegiatan' => $jumSubKegiatan,
		];
    return view('components/admin/beranda', $kirim);
  }

	public function setOPD(Request $request){
		$opd = $request->opd;


		session()->put('opd', $opd);

		return redirect()->back();
	}

}
