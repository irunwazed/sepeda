<?php

namespace App\Http\Controllers\Penyusunan;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Validator;
use DataTables;

class MisiController extends Controller
{

	private $table;
	public function __construct()
  {
    $this->table = 'ref_rpjmd_misi';
  }

  public function view($kode){

		$kirim = [
			'kode' => $kode,
		];
    return view('components/penyusunan/misi', $kirim);
  }

	public function getQuery($request, $kode){
		$data = DB::table($this->table)
		->select($this->table.'.*', 'rpjmd_visi_nama')
		->leftJoin('ref_rpjmd_visi', 'ref_rpjmd_visi.id', '=', 'ref_rpjmd_misi.rpjmd_visi_id')
		->where($this->table.'.rpjmd_visi_id', $kode);

		return $data;

	}

  public function getData(Request $request, $kode = null, $id = null){
    $data = $this->getQuery($request, $kode);
		if($id != null){
			$data = $data->where($this->table.'.id', $id);

			$kirim = [
				'status' => true,
				'data' => $data->first(),
			];
			return $kirim;
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
				'rpjmd_misi_nama' => $request->rpjmd_misi_nama,
				'updated_at' => $date,
			];

			if($action == 'create'){
				$data['rpjmd_visi_id'] = $request->kode;
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

  public function delete(Request $request, $kode, $id){
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