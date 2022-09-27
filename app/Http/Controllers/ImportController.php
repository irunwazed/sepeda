<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Validator;
use DataTables;
use App\Imports\RKPDImport;
use App\Imports\RKPDPaguImport;
use Maatwebsite\Excel\Facades\Excel;

class ImportController extends Controller
{

	private $table;
	public function __construct()
  {
    $this->table = 'pengaturan';
  }

  public function view(){

    $tahun = DB::table($this->table)->where('nama', 'tahun')->first();
    $triwulan = DB::table($this->table)->where('nama', 'triwulan')->first();

		$dataOPD = DB::table('ref_opd')->get();
    $kirim = [
      'tahun' => $tahun,
      'triwulan' => $triwulan,
      'dataOPD' => $dataOPD,
    ];
    // print_r($kirim);
    return view('components/admin/import-rkpd', $kirim);
  }

	public function import(Request $request){
		// $kirim = $this->action($request, 'update');
		// return $kirim;
    Excel::import(new RKPDImport, $request->file('file'));

                // echo "<pre>";
                // print_r($data);
                // echo "</pre>";
    // die();
    return redirect(\Request::get('levelPath').'/penyusunan/renja/sub-kegiatan');

	}

	public function importPagu(Request $request){

		$pagu = @$request->pagu=='on'?true:false;
		$paguPerubahan = @$request->paguPerubahan=='on'?true:false;

    Excel::import(new RKPDPaguImport($pagu, $paguPerubahan), $request->file('file'));

    //             echo "<pre>";
    //             print_r($request->all());
    //             echo "</pre>";
    // die();
    return redirect(\Request::get('levelPath').'/penyusunan/renja/sub-kegiatan');

	}

	

}
