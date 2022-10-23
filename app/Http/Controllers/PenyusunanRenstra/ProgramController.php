<?php

namespace App\Http\Controllers\PenyusunanRenstra;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Validator;
use DataTables;

class ProgramController extends Controller
{

	private $table;
	public function __construct()
  {
    $this->table = 'ref_rpjmd_program';
  }

  public function view(){

		$dataOPD = DB::table('ref_opd')->get();
		$kirim = [
			'dataOPD' => $dataOPD,
		];
    return view('components/penyusunan-renstra/program', $kirim);
  }

	public function getQuery($request){
		$data = DB::table($this->table)
		->select($this->table.'.*', 'rpjmd_tujuan_nama', 'rpjmd_sasaran_nama', 'renstra_tujuan_nama', 'renstra_sasaran_nama'
		, 'ref_program.urusan_kode'
		, 'ref_program.bidang_kode'
		, 'ref_program.program_kode'
		, 'ref_program.program_nama')
		// ->select(DB::raw('MAX(ref_rpjmd_program.id) as total')
		// $this->table.'.*', 'rpjmd_tujuan_nama', 'rpjmd_sasaran_nama', 'renstra_tujuan_nama', 'renstra_sasaran_nama'
		// , $this->table.'.id'
		// , 'ref_program.urusan_kode'
		// , 'ref_program.bidang_kode'
		// , 'ref_program.program_kode'
		// , 'ref_program.program_nama')
		->leftJoin('ref_program', function($join)
		{
			$join->on('ref_program.permen_ver', '=', 'ref_rpjmd_program.permen_ver');
			$join->on('ref_program.urusan_kode', '=', 'ref_rpjmd_program.urusan_kode');
			$join->on('ref_program.bidang_kode', '=', 'ref_rpjmd_program.bidang_kode');
			$join->on('ref_program.program_kode', '=', 'ref_rpjmd_program.program_kode');
		})
		->leftJoin('ref_renstra_tujuan', function($join)
		{
			$join->on('ref_renstra_tujuan.opd_id', '=', 'ref_rpjmd_program.opd_id');
			$join->on('ref_renstra_tujuan.renstra_tujuan_kode', '=', 'ref_rpjmd_program.renstra_tujuan_kode');
		})
		->leftJoin('ref_renstra_sasaran', function($join)
		{
			$join->on('ref_renstra_sasaran.opd_id', '=', 'ref_rpjmd_program.opd_id');
			$join->on('ref_renstra_sasaran.renstra_tujuan_kode', '=', 'ref_rpjmd_program.renstra_tujuan_kode');
			$join->on('ref_renstra_sasaran.renstra_sasaran_kode', '=', 'ref_rpjmd_program.renstra_sasaran_kode');
		})
		->leftJoin('ref_rpjmd_sasaran', 'ref_rpjmd_sasaran.id', '=', 'ref_rpjmd_program.rpjmd_sasaran_id')
		->leftJoin('ref_rpjmd_tujuan', 'ref_rpjmd_tujuan.id', '=', 'ref_rpjmd_sasaran.rpjmd_tujuan_id')
		->where('ref_rpjmd_program.opd_id', session('opd'))
		// ->groupBy('ref_program.urusan_kode');
		->orderBy('ref_rpjmd_program.renstra_tujuan_kode', 'ASC')
		->orderBy('ref_rpjmd_program.renstra_sasaran_kode', 'ASC')
		->orderBy('ref_program.permen_ver', 'ASC')
		->orderBy('ref_program.urusan_kode', 'ASC')
		->orderBy('ref_program.bidang_kode', 'ASC')
		->orderBy('ref_program.program_kode', 'ASC');

		return $data;

	}

  public function getData(Request $request, $id = null){
    $data = $this->getQuery($request);
		if($id != null){
			$data = $data->where($this->table.'.id', $id);

			$kirim = [
				'status' => true,
				'data' => $data->first(),
			];
			return $kirim;
		}
    
    return DataTables::of($data->get())
		->addColumn('kode', function($row){
			return (@$row->urusan_kode==0?'X':$row->urusan_kode).".".$this->setKode($row->bidang_kode).'.'.$this->setKode($row->program_kode);
		})
			->addColumn('action', '
				<div class="btn-group mb-2 mr-2">
					<button class="btn btn-info dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></button>
					<div class="dropdown-menu" x-placement="bottom-start" style="position: absolute; transform: translate3d(0px, 43px, 0px); top: 0px; left: 0px; will-change: transform;">
							
						<a class="dropdown-item" href="./program/{{$id}}" ><i class="feather icon-eye"></i> Kegiatan</a>
						<a class="dropdown-item" href="#" onclick="setUpdate(\'{{$id}}\')"><i class="feather icon-edit"></i> Ubah Tujuan Sasaran</a>

					</div>
				</div>
				')
			->rawColumns(['action'])
			->make(true);
  }

	function setKode($angka, $level = 1){
		$hasil = '';
		if($level == 2){

			$hasil = $angka[0].'.'.$angka[1].$angka[2];
		}else{
			if($angka == 0){
				$hasil = 'XX';
			}else if($angka < 10){
				$hasil = '0'.$angka;
			}else{
				$hasil = $angka;
			}
		}
		return $hasil;
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
			$date = date('Y-m-d H:i:s');

			$kode = explode("-", @$request->renstra_sasaran_kode);
			// $data = [
			// 	'permen_ver' => $permenKode[0],
			// 	'urusan_kode' => $permenKode[1],
			// 	'bidang_kode' => $permenKode[2],
			// 	'program_kode' => $permenKode[3],
			// 	'opd_id' => $request->opd,
			// 	'updated_at' => $date,
			// ];
			$data = [
				'renstra_tujuan_kode' => $kode[1],
				'renstra_sasaran_kode' => $kode[2],
			];

			if(@$request->id){
				$status = DB::table($this->table)->where('id', $request->id)->update($data);
			}
			$status?$pesan = 'Berhasil Mengubah Data':$pesan = 'Gagal Mengubah Data';
			// if($action == 'create'){
			// 	$data['rpjmd_sasaran_id'] = $request->kode;
			// 	$data['created_at'] = $date;

				
			// 	$status = DB::table($this->table)->insert($data);
			// 	$status?$pesan = 'Berhasil Menambahkan Data':$pesan = 'Gagal Menambahkan Data';
			// }else if($action == 'update'){
			// 	// print_r($request->all());
			// }
    }

    $kirim = array(
      'pesan' => $pesan,
      'error' => $error,
      'status' => $status
    );
    return $kirim;
  }

  // public function delete(Request $request, $id){
  //   $validator = Validator::make($request->all(), [
  //   ]);
  //   $pesan = 'Gagal Terhubung Pada Server!';
  //   $status = FALSE;
  //   $error = [];
  //   if ($validator->fails()) {
  //     $error = $validator->errors()->all();
  //   }else{
  //     $status = DB::table($this->table)->where('id', $id)->delete();
  //     $status?$pesan = 'Berhasil Menghapus Data':$pesan = 'Gagal Menghapus Data';
  //   }

  //   $kirim = array(
  //     'pesan' => $pesan,
  //     'error' => $error,
  //     'status' => $status,
  //   );
  //   return response($kirim);
  // }


	public function createTusa(Request $request){
		$validator = Validator::make($request->all(), [
			
    ]);
    $pesan = 'Gagal Terhubung Pada Server!';
    $status = FALSE;
    $error = [];
    if ($validator->fails()) {
      $error = $validator->errors()->all();
    }else{
			$date = date('Y-m-d H:i:s');

			$simpan = true;
			
			if($request->jenis == 1){
				$table = 'ref_renstra_tujuan';
				$dataTujuan = DB::table($table)->orderBy('renstra_tujuan_kode', 'DESC')->first();
				$kode = 1;
				if(@$dataTujuan->renstra_tujuan_kode){
					$kode = $dataTujuan->renstra_tujuan_kode+1;
				}

				$dataTujuan = DB::table($table)->where([
					'renstra_tujuan_nama' => $request->tusa,
					'opd_id' => session('opd'),
				])->count();
				if($dataTujuan > 0){
					$simpan = false;
					$pesan = "Tujuan OPD sudah ada";
				}

				$data = [
					'renstra_tujuan_kode' => $kode,
					'renstra_tujuan_nama' => $request->tusa,
					'opd_id' => session('opd'),
					'created_at' => $date,
					'updated_at' => $date,
				];

			}else if($request->jenis == 2){
				$table = 'ref_renstra_sasaran';
				$dataSasaran = DB::table($table)->orderBy('renstra_sasaran_kode', 'DESC')->first();
				$kode = 1;
				if(@$dataSasaran->renstra_sasaran_kode){
					$kode = $dataSasaran->renstra_sasaran_kode+1;
				}

				$dataTujuan = DB::table($table)->where([
					'renstra_sasaran_nama' => $request->tusa,
					'opd_id' => session('opd'),
				])->count();
				if($dataTujuan > 0){
					$simpan = false;
					$pesan = "Sasaran OPD sudah ada";
				}

				$tujuanKode = explode("-", $request->tujuan);
				$data = [
					'renstra_tujuan_kode' => @$tujuanKode[1],
					'renstra_sasaran_kode' => $kode,
					'renstra_sasaran_nama' => $request->tusa,
					'opd_id' => session('opd'),
					'created_at' => $date,
					'updated_at' => $date,
				];

			}
			
			if($simpan){
				$status = DB::table($table)->insert($data);
				$status?$pesan = 'Berhasil Menambah Data':$pesan = 'Gagal Menambah Data';
			}

    }

    $kirim = array(
      'pesan' => $pesan,
      'error' => $error,
      'status' => $status
    );
    return $kirim;
	}

	public function getTujuan(){
		$table = 'ref_renstra_tujuan';
		$data = DB::table($table)
		->where('opd_id', session('opd'))
		->get();

		return $kirim = [
			'data' => $data,
			'status' => true,
		];
	}

	public function getSasaran(Request $request){
		$table = 'ref_renstra_sasaran';
		$kode = explode("-", $request->tujuan);
		$data = DB::table($table)
		->where('opd_id', session('opd'))
		->where('renstra_tujuan_kode', $kode[1])
		->get();

		return $kirim = [
			'data' => $data,
			'status' => true,
		];
	}

	
	

}