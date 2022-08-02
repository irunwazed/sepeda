<?php

namespace App\Http\Controllers\PenyusunanRenstra;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Validator;
use DataTables;

class SasaranIndikatorController extends Controller
{

	private $table;
	public function __construct()
	{
		$this->table = 'ref_renstra_sasaran_indikator';
	}

	public function view($kode)
	{
		$dataKode = explode('-', $kode);
		$dataAwal = DB::table('ref_renstra_sasaran')
		->where('opd_id', session('opd'))
		->where('renstra_tujuan_kode', $dataKode[0])
		->where('renstra_sasaran_kode', $dataKode[1])->first();

		// print_r($dataKode);
		$kirim = [
			'kode' => $kode,
			'dataAwal' => $dataAwal,
		];
		return view('components/penyusunan-renstra/sasaran-indikator', $kirim);
	}

	public function getQuery($request, $kode)
	{
		$dataKode = explode('-', $kode);
		$data = DB::table($this->table)
			// ->select($this->table . '.*', 'rpjmd_visi_nama', 'rpjmd_misi_nama', 'rpjmd_tujuan_nama')
			// ->leftJoin('ref_renstra_sasaran', 'ref_renstra_sasaran.renstra_sasaran_kode', '=', 'ref_renstra_sasaran_indikator.renstra_sasaran_kode')
			// ->leftJoin('ref_rpjmd_misi', 'ref_rpjmd_misi.id', '=', 'ref_rpjmd_tujuan.rpjmd_misi_id')
			// ->leftJoin('ref_rpjmd_visi', 'ref_rpjmd_visi.id', '=', 'ref_rpjmd_misi.rpjmd_visi_id')
			// ->where($this->table . '.rpjmd_tujuan_id', $kode);

			->leftJoin('ref_renstra_tujuan', function($join)
			{
				$join->on('ref_renstra_tujuan.opd_id', '=', 'ref_renstra_sasaran_indikator.opd_id');
				$join->on('ref_renstra_tujuan.renstra_tujuan_kode', '=', 'ref_renstra_sasaran_indikator.renstra_tujuan_kode');
			})
			->leftJoin('ref_renstra_sasaran', function($join)
			{
				$join->on('ref_renstra_sasaran.opd_id', '=', 'ref_renstra_sasaran_indikator.opd_id');
				$join->on('ref_renstra_sasaran.renstra_tujuan_kode', '=', 'ref_renstra_sasaran_indikator.renstra_tujuan_kode');
				$join->on('ref_renstra_sasaran.renstra_sasaran_kode', '=', 'ref_renstra_sasaran_indikator.renstra_sasaran_kode');
			})
			->where('ref_renstra_sasaran.opd_id', session('opd'))
			->where('ref_renstra_sasaran.renstra_tujuan_kode', $dataKode[0])
			->where('ref_renstra_sasaran.renstra_sasaran_kode', $dataKode[1]);

		return $data;
	}

	public function getData(Request $request, $kode = null, $id = null)
	{
		$data = $this->getQuery($request, $kode);
		if ($id != null) {
			$kodeId = explode("-", $id);
			$data = $data->where($this->table . '.opd_id', $kodeId[0])
			->where($this->table . '.renstra_tujuan_kode', $kodeId[1])
			->where($this->table . '.renstra_sasaran_kode', $kodeId[2])
			->where($this->table . '.renstra_sasaran_indikator_kode', $kodeId[3]);

			$kirim = [
				'status' => true,
				'data' => $data->first(),
			];
			return $kirim;
		}

		return DataTables::of($data->get())
			->addColumn('th0_target', function ($row) {
				$hasil = $row->renstra_sasaran_indikator_th0_realisasi_target;
				if (@$row->renstra_sasaran_indikator_nilai_jenis == 2) {
					$arr = json_decode($row->renstra_sasaran_indikator_nilai_json, true);
					$nilai = $row->renstra_sasaran_indikator_th0_realisasi_target;
					for ($i = 0; $i < count($arr); $i++) {
						$temp = 0;
						if ($nilai <= $arr[$i]['nilai'] && $nilai > $temp) {
							$hasil = $arr[$i]['nama'];
							$temp = $arr[$i]['nilai'];
						}
					}
				}
				return $hasil;
			})
			->addColumn('th1_target', function ($row) {
				$hasil = $row->renstra_sasaran_indikator_th1_target;
				if (@$row->renstra_sasaran_indikator_nilai_jenis == 2) {
					$arr = json_decode($row->renstra_sasaran_indikator_nilai_json, true);
					$nilai = $row->renstra_sasaran_indikator_th1_target;
					for ($i = 0; $i < count($arr); $i++) {
						$temp = 0;
						if ($nilai <= $arr[$i]['nilai'] && $nilai > $temp) {
							$hasil = $arr[$i]['nama'];
							$temp = $arr[$i]['nilai'];
						}
					}
				}
				return $hasil;
			})
			->addColumn('th2_target', function ($row) {
				$hasil = $row->renstra_sasaran_indikator_th2_target;
				if (@$row->renstra_sasaran_indikator_nilai_jenis == 2) {
					$arr = json_decode($row->renstra_sasaran_indikator_nilai_json, true);
					$nilai = $row->renstra_sasaran_indikator_th2_target;
					for ($i = 0; $i < count($arr); $i++) {
						$temp = 0;
						if ($nilai <= $arr[$i]['nilai'] && $nilai > $temp) {
							$hasil = $arr[$i]['nama'];
							$temp = $arr[$i]['nilai'];
						}
					}
				}
				return $hasil;
			})
			->addColumn('th3_target', function ($row) {
				$hasil = $row->renstra_sasaran_indikator_th3_target;
				if (@$row->renstra_sasaran_indikator_nilai_jenis == 2) {
					$arr = json_decode($row->renstra_sasaran_indikator_nilai_json, true);
					$nilai = $row->renstra_sasaran_indikator_th3_target;
					for ($i = 0; $i < count($arr); $i++) {
						$temp = 0;
						if ($nilai <= $arr[$i]['nilai'] && $nilai > $temp) {
							$hasil = $arr[$i]['nama'];
							$temp = $arr[$i]['nilai'];
						}
					}
				}
				return $hasil;
			})
			->addColumn('th4_target', function ($row) {
				$hasil = $row->renstra_sasaran_indikator_th4_target;
				if (@$row->renstra_sasaran_indikator_nilai_jenis == 2) {
					$arr = json_decode($row->renstra_sasaran_indikator_nilai_json, true);
					$nilai = $row->renstra_sasaran_indikator_th4_target;
					for ($i = 0; $i < count($arr); $i++) {
						$temp = 0;
						if ($nilai <= $arr[$i]['nilai'] && $nilai > $temp) {
							$hasil = $arr[$i]['nama'];
							$temp = $arr[$i]['nilai'];
						}
					}
				}
				return $hasil;
			})
			->addColumn('th5_target', function ($row) {
				$hasil = $row->renstra_sasaran_indikator_th5_target;
				if (@$row->renstra_sasaran_indikator_nilai_jenis == 2) {
					$arr = json_decode($row->renstra_sasaran_indikator_nilai_json, true);
					$nilai = $row->renstra_sasaran_indikator_th5_target;
					for ($i = 0; $i < count($arr); $i++) {
						$temp = 0;
						if ($nilai <= $arr[$i]['nilai'] && $nilai > $temp) {
							$hasil = $arr[$i]['nama'];
							$temp = $arr[$i]['nilai'];
						}
					}
				}
				return $hasil;
			})
			->addColumn('th6_target', function ($row) {
				$hasil = $row->renstra_sasaran_indikator_th6_target;
				if (@$row->renstra_sasaran_indikator_nilai_jenis == 2) {
					$arr = json_decode($row->renstra_sasaran_indikator_nilai_json, true);
					$nilai = $row->renstra_sasaran_indikator_th6_target;
					for ($i = 0; $i < count($arr); $i++) {
						$temp = 0;
						if ($nilai <= $arr[$i]['nilai'] && $nilai > $temp) {
							$hasil = $arr[$i]['nama'];
							$temp = $arr[$i]['nilai'];
						}
					}
				}
				return $hasil;
			})
			->addColumn('action', function($row){
				return '
				<div class="btn-group mb-2 mr-2">
					<button class="btn btn-info dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></button>
					<div class="dropdown-menu" x-placement="bottom-start" style="position: absolute; transform: translate3d(0px, 43px, 0px); top: 0px; left: 0px; will-change: transform;">
							
						<a class="dropdown-item" href="#" onclick="setUpdate(\''.$row->opd_id."-".$row->renstra_tujuan_kode."-".$row->renstra_sasaran_kode."-".$row->renstra_sasaran_indikator_kode.'\')"><i class="feather icon-edit"></i> Ubah</a>
						<a class="dropdown-item" href="#" onclick="setView(\''.$row->opd_id."-".$row->renstra_tujuan_kode."-".$row->renstra_sasaran_kode."-".$row->renstra_sasaran_indikator_kode.'\')"><i class="feather icon-search"></i> Detail</a>
						<a class="dropdown-item" href="#" onclick="setDelete(\''.$row->opd_id."-".$row->renstra_tujuan_kode."-".$row->renstra_sasaran_kode."-".$row->renstra_sasaran_indikator_kode.'\')"><i class="feather icon-trash"></i> Hapus</a>

					</div>
				</div>
				';
			})
			->rawColumns(['action'])
			->make(true);
	}

	public function create(Request $request)
	{
		$kirim = $this->action($request);
		return $kirim;
	}

	public function update(Request $request)
	{
		$kirim = $this->action($request, 'update');
		return $kirim;
	}

	public function action($request, $action = 'create')
	{
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
		} else {
			$date = date('Y-m-d H:i:s');
			$permenKode = explode("-", @$request->program);

			$data = [
				'renstra_sasaran_indikator_nama' => $request->renstra_sasaran_indikator_nama,
				'renstra_sasaran_indikator_satuan' => $request->renstra_sasaran_indikator_satuan,
				'renstra_sasaran_indikator_th0_realisasi_target' => $request->renstra_sasaran_indikator_th0_realisasi_target,
				'renstra_sasaran_indikator_th1_target' => $request->renstra_sasaran_indikator_th1_target,
				'renstra_sasaran_indikator_th2_target' => $request->renstra_sasaran_indikator_th2_target,
				'renstra_sasaran_indikator_th3_target' => $request->renstra_sasaran_indikator_th3_target,
				'renstra_sasaran_indikator_th4_target' => $request->renstra_sasaran_indikator_th4_target,
				'renstra_sasaran_indikator_th5_target' => $request->renstra_sasaran_indikator_th5_target,
				'renstra_sasaran_indikator_th6_target' => $request->renstra_sasaran_indikator_th6_target,
				'updated_at' => $date,
			];

			if ($action == 'create') {
				$json = [];
				if (@$request->renstra_sasaran_indikator_nilai_jenis == 2) {
					$idx = 0;
					foreach (@$request->indikator_nama as $row) {
						$json[$idx] =  [
							'nama' => $request->indikator_nama[$idx],
							'nilai' => $request->indikator_nilai[$idx]
						];
						$idx++;
					}
				}
				$json = json_encode($json);
				$jenis = @$request->renstra_sasaran_indikator_nilai_jenis?$request->renstra_sasaran_indikator_nilai_jenis:1;
				$data['renstra_sasaran_indikator_nilai_jenis'] = $jenis;
				$data['renstra_sasaran_indikator_nilai_json'] = $json;

				$kodeSasaran = explode('-', $request->kode);


				$dataKode = DB::table('ref_renstra_sasaran_indikator')
				->where('opd_id', session('opd'))
				->where('renstra_tujuan_kode', $kodeSasaran[0])
				->where('renstra_sasaran_kode', $kodeSasaran[1])
				->orderBy('renstra_sasaran_indikator_kode', 'DESC')
				->first();

				$kodeIndikator = 1;
				if(@$dataKode->renstra_sasaran_indikator_kode){
					$kodeIndikator = $dataKode->renstra_sasaran_indikator_kode+1;
				}

				
				$data['renstra_tujuan_kode'] = $kodeSasaran[0];
				$data['renstra_sasaran_kode'] = $kodeSasaran[1];
				$data['renstra_sasaran_indikator_kode'] = $kodeIndikator;
				$data['opd_id'] = session('opd');
				$data['created_at'] = $date;


				$status = DB::table($this->table)->insert($data);
				$status ? $pesan = 'Berhasil Menambahkan Data' : $pesan = 'Gagal Menambahkan Data';
			} else if ($action == 'update') {
				if (@$request->id) {

					$kodeId = explode("-", $request->id);
			
					$status = DB::table($this->table)
					->where('opd_id', $kodeId[0])
					->where('renstra_tujuan_kode', $kodeId[1])
					->where('renstra_sasaran_kode', $kodeId[2])
					->where('renstra_sasaran_indikator_kode', $kodeId[3])
					->update($data);
				}
				// print_r($request->all());
				$status ? $pesan = 'Berhasil Mengubah Data' : $pesan = 'Gagal Mengubah Data';

			}
		}

		$kirim = array(
			'pesan' => $pesan,
			'error' => $error,
			'status' => $status
		);
		return $kirim;
	}

	public function delete(Request $request, $kode, $id)
	{
		$validator = Validator::make($request->all(), []);
		$pesan = 'Gagal Terhubung Pada Server!';
		$status = FALSE;
		$error = [];
		if ($validator->fails()) {
			$error = $validator->errors()->all();
		} else {

			$kodeId = explode("-", $id);
			$status = DB::table($this->table)
			->where('opd_id', $kodeId[0])
			->where('renstra_tujuan_kode', $kodeId[1])
			->where('renstra_sasaran_kode', $kodeId[2])
			->where('renstra_sasaran_indikator_kode', $kodeId[3])
			->delete();
			$status ? $pesan = 'Berhasil Menghapus Data' : $pesan = 'Gagal Menghapus Data';
		}

		$kirim = array(
			'pesan' => $pesan,
			'error' => $error,
			'status' => $status,
		);
		return response($kirim);
	}
}