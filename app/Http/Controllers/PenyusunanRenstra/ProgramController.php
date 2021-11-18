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
		->select($this->table.'.*', 'rpjmd_tujuan_nama', 'rpjmd_sasaran_nama'
		, 'ref_program.urusan_kode'
		, 'ref_program.bidang_kode'
		, 'ref_program.program_kode'
		, 'ref_program.program_nama')
		->leftJoin('ref_program', function($join)
		{
			$join->on('ref_program.permen_ver', '=', 'ref_rpjmd_program.permen_ver');
			$join->on('ref_program.urusan_kode', '=', 'ref_rpjmd_program.urusan_kode');
			$join->on('ref_program.bidang_kode', '=', 'ref_rpjmd_program.bidang_kode');
			$join->on('ref_program.program_kode', '=', 'ref_rpjmd_program.program_kode');
		})
		->leftJoin('ref_rpjmd_sasaran', 'ref_rpjmd_sasaran.id', '=', 'ref_rpjmd_program.rpjmd_sasaran_id')
		->leftJoin('ref_rpjmd_tujuan', 'ref_rpjmd_tujuan.id', '=', 'ref_rpjmd_sasaran.rpjmd_tujuan_id')
		->orderBy('ref_rpjmd_tujuan.id', 'ASC')
		->orderBy('ref_rpjmd_sasaran.id', 'ASC')
		->orderBy('ref_program.permen_ver', 'ASC')
		->orderBy('ref_program.urusan_kode', 'ASC')
		->orderBy('ref_program.bidang_kode', 'ASC')
		->orderBy('ref_program.program_kode', 'ASC')
		->where('ref_rpjmd_program.opd_id', session('opd'));

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
							
						<a class="dropdown-item" href="../program/{{$id}}/indikator"><i class="feather icon-plus"></i> Indikator</a>
						<a class="dropdown-item" href="#" onclick="setUpdate(\'{{$id}}\')"><i class="feather icon-edit"></i> Ubah</a>
						<a class="dropdown-item" href="#" onclick="setView(\'{{$id}}\')"><i class="feather icon-search"></i> Detail</a>
						<a class="dropdown-item" href="#" onclick="setDelete(\'{{$id}}\')"><i class="feather icon-trash"></i> Hapus</a>

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

			$permenKode = explode("-", @$request->program);
			$data = [
				'permen_ver' => $permenKode[0],
				'urusan_kode' => $permenKode[1],
				'bidang_kode' => $permenKode[2],
				'program_kode' => $permenKode[3],
				'opd_id' => $request->opd,
				'updated_at' => $date,
			];

			if($action == 'create'){
				$data['rpjmd_sasaran_id'] = $request->kode;
				$data['created_at'] = $date;

				
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

}