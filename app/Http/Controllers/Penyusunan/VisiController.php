<?php

namespace App\Http\Controllers\Penyusunan;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Validator;
use DataTables;

class VisiController extends Controller
{

	private $table;
	public function __construct()
  {
    $this->table = 'ref_rpjmd_visi';
  }

  public function view(){

		$kirim = [
		];
    return view('components/penyusunan/visi', $kirim);
  }

	public function getQuery($request){
		$data = DB::table($this->table)
		->where($this->table.'.rpjmd_id', session('rpjmd'));

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

			$data = [
				'rpjmd_visi_nama' => $request->rpjmd_visi_nama,
				'updated_at' => $date,
			];

			if($action == 'create'){
				$data['created_at'] = $date;
				$data['rpjmd_visi_status'] = 1;
				$data['rpjmd_id'] = session('rpjmd');
				$status = DB::table($this->table)->insert($data);
				$status?$pesan = 'Berhasil Menambahkan Data':$pesan = 'Gagal Menambahkan Data';
			}else if($action == 'update'){
				if(@$request->id){
					$status = DB::table($this->table)->where('id', $request->id)->update($data);
				}
				$status?$pesan = 'Berhasil Mengubah Data':$pesan = 'Gagal Mengubah Data';
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