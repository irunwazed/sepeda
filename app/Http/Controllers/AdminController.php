<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Validator;

class AdminController extends Controller
{
  public function beranda(){
		$jumProgram = DB::table('ref_rpjmd_program');
		$jumKegiatan = DB::table('ref_renstra_kegiatan');
		$jumSubKegiatan = DB::table('ref_rkpd_sub_kegiatan')->where('ref_rkpd_sub_kegiatan.tahun_ke', session('tahun'));

		if(session('login_level') == 3){
			$jumProgram = $jumProgram->where('ref_rpjmd_program.opd_id', session('opd'));
			$jumKegiatan = $jumKegiatan->leftJoin('ref_rpjmd_program', 'ref_rpjmd_program.id', '=', 'ref_renstra_kegiatan.rpjmd_program_id')
																->where('ref_rpjmd_program.opd_id', session('opd'));
			$jumSubKegiatan = $jumSubKegiatan->where('ref_rkpd_sub_kegiatan.opd_id', session('opd'));
		}

		$jumProgram = $jumProgram->count();
		$jumKegiatan = $jumKegiatan->count();
		$jumSubKegiatan = $jumSubKegiatan->count();
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
