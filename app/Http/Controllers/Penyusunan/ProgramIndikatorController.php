<?php

namespace App\Http\Controllers\Penyusunan;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Validator;
use DataTables;

class ProgramIndikatorController extends Controller
{

	private $table;
	public function __construct()
	{
		$this->table = 'ta_rpjmd_program_indikator';
	}

	public function view($kode)
	{
		$dataAwal = DB::table('ref_rpjmd_program')
			->leftJoin('ref_program', function ($join) {
				$join->on('ref_program.permen_ver', '=', 'ref_rpjmd_program.permen_ver');
				$join->on('ref_program.urusan_kode', '=', 'ref_rpjmd_program.urusan_kode');
				$join->on('ref_program.bidang_kode', '=', 'ref_rpjmd_program.bidang_kode');
				$join->on('ref_program.program_kode', '=', 'ref_rpjmd_program.program_kode');
			})
			->where('ref_rpjmd_program.id', $kode)->first();
		echo "<pre>";
		print_r($dataAwal->program_nama);
		echo "</pre>";
		$kirim = [
			'kode' => $kode,
			'dataAwal' => $dataAwal,
		];
		return view('components/penyusunan/program-indikator', $kirim);
	}

	public function getQuery($request, $kode)
	{
		$data = DB::table($this->table)
			->select($this->table . '.*', 'rpjmd_visi_nama', 'rpjmd_misi_nama', 'rpjmd_tujuan_nama', 'rpjmd_sasaran_nama', 'program_nama')
			->leftJoin('ref_rpjmd_program', 'ref_rpjmd_program.id', '=', 'ta_rpjmd_program_indikator.rpjmd_program_id')
			->leftJoin('ref_rpjmd_sasaran', 'ref_rpjmd_sasaran.id', '=', 'ref_rpjmd_program.rpjmd_sasaran_id')
			->leftJoin('ref_rpjmd_tujuan', 'ref_rpjmd_tujuan.id', '=', 'ref_rpjmd_sasaran.rpjmd_tujuan_id')
			->leftJoin('ref_rpjmd_misi', 'ref_rpjmd_misi.id', '=', 'ref_rpjmd_tujuan.rpjmd_misi_id')
			->leftJoin('ref_rpjmd_visi', 'ref_rpjmd_visi.id', '=', 'ref_rpjmd_misi.rpjmd_visi_id')
			->leftJoin('ref_program', function ($join) {
				$join->on('ref_program.permen_ver', '=', 'ref_rpjmd_program.permen_ver');
				$join->on('ref_program.urusan_kode', '=', 'ref_rpjmd_program.urusan_kode');
				$join->on('ref_program.bidang_kode', '=', 'ref_rpjmd_program.bidang_kode');
				$join->on('ref_program.program_kode', '=', 'ref_rpjmd_program.program_kode');
			})
			->where($this->table . '.rpjmd_program_id', $kode);

		return $data;
	}

	public function getData(Request $request, $kode = null, $id = null)
	{
		$data = $this->getQuery($request, $kode);
		if ($id != null) {
			$data = $data->where($this->table . '.id', $id);
			$kirim = [
				'status' => true,
				'data' => $data->first(),
			];
			return $kirim;
		}

		return DataTables::of($data->get())
			->addColumn('th0_target', function ($row) {
				$nilai = $row->rpjmd_program_indikator_th0_realisasi_target;
				$hasil = $nilai;
				if (@$row->rpjmd_program_indikator_nilai_jenis == 2) {
					$arr = json_decode($row->rpjmd_program_indikator_nilai_json, true);
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
				$nilai = $row->rpjmd_program_indikator_th1_target;
				$hasil = $nilai;
				if (@$row->rpjmd_program_indikator_nilai_jenis == 2) {
					$arr = json_decode($row->rpjmd_program_indikator_nilai_json, true);
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
				$nilai = $row->rpjmd_program_indikator_th2_target;
				$hasil = $nilai;
				if (@$row->rpjmd_program_indikator_nilai_jenis == 2) {
					$arr = json_decode($row->rpjmd_program_indikator_nilai_json, true);
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
				$nilai = $row->rpjmd_program_indikator_th3_target;
				$hasil = $nilai;
				if (@$row->rpjmd_program_indikator_nilai_jenis == 2) {
					$arr = json_decode($row->rpjmd_program_indikator_nilai_json, true);
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
				$nilai = $row->rpjmd_program_indikator_th4_target;
				$hasil = $nilai;
				if (@$row->rpjmd_program_indikator_nilai_jenis == 2) {
					$arr = json_decode($row->rpjmd_program_indikator_nilai_json, true);
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
				$nilai = $row->rpjmd_program_indikator_th5_target;
				$hasil = $nilai;
				if (@$row->rpjmd_program_indikator_nilai_jenis == 2) {
					$arr = json_decode($row->rpjmd_program_indikator_nilai_json, true);
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
				$nilai = $row->rpjmd_program_indikator_th6_target;
				$hasil = $nilai;
				if (@$row->rpjmd_program_indikator_nilai_jenis == 2) {
					$arr = json_decode($row->rpjmd_program_indikator_nilai_json, true);
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

				'rpjmd_program_indikator_nama' => $request->rpjmd_program_indikator_nama,
				'rpjmd_program_indikator_satuan' => $request->rpjmd_program_indikator_satuan,
				'rpjmd_program_indikator_th0_realisasi_target' => $request->rpjmd_program_indikator_th0_realisasi_target,
				'rpjmd_program_indikator_th1_target' => $request->rpjmd_program_indikator_th1_target,
				'rpjmd_program_indikator_th2_target' => $request->rpjmd_program_indikator_th2_target,
				'rpjmd_program_indikator_th3_target' => $request->rpjmd_program_indikator_th3_target,
				'rpjmd_program_indikator_th4_target' => $request->rpjmd_program_indikator_th4_target,
				'rpjmd_program_indikator_th5_target' => $request->rpjmd_program_indikator_th5_target,
				'rpjmd_program_indikator_th6_target' => $request->rpjmd_program_indikator_th6_target,
				'updated_at' => $date,
			];

			if ($action == 'create') {
				$json = [];
				if (@$request->rpjmd_program_indikator_nilai_jenis == 2) {
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
				$jenis = @$request->rpjmd_program_indikator_nilai_jenis ? $request->rpjmd_program_indikator_nilai_jenis : 1;
				$data['rpjmd_program_indikator_nilai_jenis'] = $jenis;
				$data['rpjmd_program_indikator_nilai_json'] = $json;
				$data['rpjmd_program_id'] = $request->kode;
				$data['created_at'] = $date;


				$status = DB::table($this->table)->insert($data);
				$status ? $pesan = 'Berhasil Menambahkan Data' : $pesan = 'Gagal Menambahkan Data';
			} else if ($action == 'update') {
				if (@$request->id) {
					$status = DB::table($this->table)->where('id', $request->id)->update($data);
				}
				$status ? $pesan = 'Berhasil Mengubah Data' : $pesan = 'Gagal Mengubah Data';
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

	public function delete(Request $request, $kode, $id)
	{
		$validator = Validator::make($request->all(), []);
		$pesan = 'Gagal Terhubung Pada Server!';
		$status = FALSE;
		$error = [];
		if ($validator->fails()) {
			$error = $validator->errors()->all();
		} else {
			$status = DB::table($this->table)->where('id', $id)->delete();
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
