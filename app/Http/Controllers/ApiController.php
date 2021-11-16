<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Validator;
use DataTables;

class ApiController extends Controller
{
  public function getProgramByOPD(Request $request){

		$dataOpd = DB::table('ref_opd')->where('id', @$request->opd)->first();

		$program = DB::table('ref_program')
		->orWhere(function($query) use ($dataOpd) {
			$query->where('urusan_kode', @$dataOpd->urusan1_kode)
						->where('bidang_kode', @$dataOpd->bidang1_kode);
		})
		->orWhere(function($query) use ($dataOpd) {
			$query->where('urusan_kode', @$dataOpd->urusan2_kode)
						->where('bidang_kode', @$dataOpd->bidang2_kode);
		})
		->orWhere(function($query) use ($dataOpd) {
			$query->where('urusan_kode', @$dataOpd->urusan3_kode)
						->where('bidang_kode', @$dataOpd->bidang3_kode);
		})
		->orWhere(function($query) {
			$query->where('urusan_kode', 0)
						->where('bidang_kode', 0);
		})
		->get();

		return $kirim = [
			'data' => $program,
			'status' => true,
		];
  }

	public function getKegiatanByProgram(Request $request){

		$program = explode("-", @$request->program);
		
		$data = DB::table('ref_kegiatan')
		->where('permen_ver', $program[0])
		->where('urusan_kode', $program[1])
		->where('bidang_kode', $program[2])
		->where('program_kode', $program[3])
		->get();

		return $kirim = [
			'data' => $data,
			'status' => true,
		];
	}

	public function getSubKegiatanByKegiatan(Request $request){

		$kegiatan = explode("-", @$request->kegiatan);
		
		$data = DB::table('ref_sub_kegiatan')
		->where('permen_ver', $kegiatan[0])
		->where('urusan_kode', $kegiatan[1])
		->where('bidang_kode', $kegiatan[2])
		->where('program_kode', $kegiatan[3])
		->where('kegiatan_kode', $kegiatan[4])
		->get();

		return $kirim = [
			'data' => $data,
			'status' => true,
		];
	}

	
}