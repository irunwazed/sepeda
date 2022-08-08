<?php

namespace App\Http\Controllers\PenyusunanRenstra;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Validator;
use DataTables;

class KegiatanController extends Controller
{

	private $table;
	public function __construct()
	{
		$this->table = 'ta_renstra_kegiatan_indikator';
	}

	public function view($kode)
	{

		$data = $this->getQuery([], $kode)->get();
		// echo "<pre>";
		// print_r($data);
		$dataAwal = DB::table('ref_rpjmd_program')
			->leftJoin('ref_program', function ($join) {
				$join->on('ref_program.permen_ver', '=', 'ref_rpjmd_program.permen_ver');
				$join->on('ref_program.urusan_kode', '=', 'ref_rpjmd_program.urusan_kode');
				$join->on('ref_program.bidang_kode', '=', 'ref_rpjmd_program.bidang_kode');
				$join->on('ref_program.program_kode', '=', 'ref_rpjmd_program.program_kode');
			})
			->where('ref_rpjmd_program.id', $kode)
			->first();

		$dataKegiatan = DB::table('ref_kegiatan')
			->where('ref_kegiatan.permen_ver', @$dataAwal->permen_ver)
			->where('ref_kegiatan.urusan_kode', @$dataAwal->urusan_kode)
			->where('ref_kegiatan.bidang_kode', @$dataAwal->bidang_kode)
			->where('ref_kegiatan.program_kode', @$dataAwal->program_kode)
			->get();
		$kirim = [
			'dataAwal' => $dataAwal,
			'dataKegiatan' => $dataKegiatan,
			'kode' => $kode,
		];

		return view('components/penyusunan-renstra/kegiatan', $kirim);
	}

	public function getQuery($request, $kode)
	{
		$data = DB::table($this->table)
			->select(
				$this->table . '.*',
				'ref_renstra_kegiatan.permen_ver',
				'ref_renstra_kegiatan.urusan_kode',
				'ref_renstra_kegiatan.bidang_kode',
				'ref_renstra_kegiatan.program_kode',
				'ref_renstra_kegiatan.kegiatan_kode',
				'program_nama',
				'kegiatan_nama'
			)
			->leftJoin('ref_renstra_kegiatan', 'ref_renstra_kegiatan.id', '=', 'ta_renstra_kegiatan_indikator.renstra_kegiatan_id')
			->leftJoin('ref_program', function ($join) {
				$join->on('ref_program.permen_ver', '=', 'ref_renstra_kegiatan.permen_ver');
				$join->on('ref_program.urusan_kode', '=', 'ref_renstra_kegiatan.urusan_kode');
				$join->on('ref_program.bidang_kode', '=', 'ref_renstra_kegiatan.bidang_kode');
				$join->on('ref_program.program_kode', '=', 'ref_renstra_kegiatan.program_kode');
			})
			->leftJoin('ref_kegiatan', function ($join) {
				$join->on('ref_kegiatan.permen_ver', '=', 'ref_renstra_kegiatan.permen_ver');
				$join->on('ref_kegiatan.urusan_kode', '=', 'ref_renstra_kegiatan.urusan_kode');
				$join->on('ref_kegiatan.bidang_kode', '=', 'ref_renstra_kegiatan.bidang_kode');
				$join->on('ref_kegiatan.program_kode', '=', 'ref_renstra_kegiatan.program_kode');
				$join->on('ref_kegiatan.kegiatan_kode', '=', 'ref_renstra_kegiatan.kegiatan_kode');
			})
			->where('ref_renstra_kegiatan.rpjmd_program_id', $kode);

		// echo "<pre>";
		// print_r($data->get());
		// echo "</pre>";

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
			->addColumn('kode', function ($row) {
				return (@$row->urusan_kode == 0 ? 'X' : $row->urusan_kode) . "." . $this->setKode(@$row->bidang_kode) . '.' . $this->setKode(@$row->program_kode) . '.' . $this->setKode(@$row->kegiatan_kode, 2);
				// return '';
			})
			->addColumn('program', function ($row) {
				$hasil = '';
				$data = DB::table('ref_program')->where([
					'urusan_kode' => @$row->urusan_kode,
					'bidang_kode' => @$row->bidang_kode,
					'program_kode' => @$row->program_kode,
				])->first();
				return @$data->program_nama;
				// return '';
			})
			->addColumn('kegiatan', function ($row) {
				$hasil = '';
				$data = DB::table('ref_kegiatan')->where([
					'urusan_kode' => @$row->urusan_kode,
					'bidang_kode' => @$row->bidang_kode,
					'program_kode' => @$row->program_kode,
					'kegiatan_kode' => @$row->kegiatan_kode,
				])->first();
				return @$data->kegiatan_nama;
				// return '';
			})
			->addColumn('th0_target', function ($row) {
				$nilai = $row->renstra_kegiatan_indikator_th0_realisasi_target;
				$hasil = $nilai;
				if (@$row->renstra_kegiatan_indikator_nilai_jenis == 2) {
					$arr = json_decode($row->renstra_kegiatan_indikator_nilai_json, true);
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
				$nilai = $row->renstra_kegiatan_indikator_th1_target;
				$hasil = $nilai;
				if (@$row->renstra_kegiatan_indikator_nilai_jenis == 2) {
					$arr = json_decode($row->renstra_kegiatan_indikator_nilai_json, true);
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
				$nilai = $row->renstra_kegiatan_indikator_th2_target;
				$hasil = $nilai;
				if (@$row->renstra_kegiatan_indikator_nilai_jenis == 2) {
					$arr = json_decode($row->renstra_kegiatan_indikator_nilai_json, true);
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
				$nilai = $row->renstra_kegiatan_indikator_th3_target;
				$hasil = $nilai;
				if (@$row->renstra_kegiatan_indikator_nilai_jenis == 2) {
					$arr = json_decode($row->renstra_kegiatan_indikator_nilai_json, true);
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
				$nilai = $row->renstra_kegiatan_indikator_th4_target;
				$hasil = $nilai;
				if (@$row->renstra_kegiatan_indikator_nilai_jenis == 2) {
					$arr = json_decode($row->renstra_kegiatan_indikator_nilai_json, true);
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
				$nilai = $row->renstra_kegiatan_indikator_th5_target;
				$hasil = $nilai;
				if (@$row->renstra_kegiatan_indikator_nilai_jenis == 2) {
					$arr = json_decode($row->renstra_kegiatan_indikator_nilai_json, true);
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
				$nilai = $row->renstra_kegiatan_indikator_th6_target;
				$hasil = $nilai;
				if (@$row->renstra_kegiatan_indikator_nilai_jenis == 2) {
					$arr = json_decode($row->renstra_kegiatan_indikator_nilai_json, true);
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

	function setKode($angka, $level = 1)
	{
		$hasil = '';

		if ($level == 2) {
			$angka = (string) $angka;
			$hasil = @$angka[0] . '.' . @$angka[1] . @$angka[2];
		} else {

			if ($angka == 0) {
				$hasil =  'XX';
			} else if ($angka < 10) {
				$hasil = '0' . $angka;
			} else {
				$hasil = $angka;
			}
		}
		return $hasil;
	}

	public function create(Request $request, $kode = '')
	{
		$kirim = $this->action($request, 'create', $kode);
		return $kirim;
	}

	public function update(Request $request, $kode = '')
	{
		$kirim = $this->action($request, 'update', $kode);
		return $kirim;
	}

	public function action($request, $action = 'create', $kode = '')
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

			$permenKode = explode("-", @$request->kegiatan);

			$data = [
				'rpjmd_program_id' => $kode,
				'permen_ver' => @$permenKode[0],
				'urusan_kode' => @$permenKode[1],
				'bidang_kode' => @$permenKode[2],
				'program_kode' => @$permenKode[3],
				'kegiatan_kode' => @$permenKode[4],
			];
			$cekKegiatan = DB::table('ref_renstra_kegiatan')
				->where($data)->first();
			if (!@$cekKegiatan->id) {
				$kegiatanId = DB::table('ref_renstra_kegiatan')->insertGetId($data);
			} else {
				$kegiatanId = $cekKegiatan->id;
			}

			$data = [
				'renstra_kegiatan_indikator_nama' => $request->renstra_kegiatan_indikator_nama,
				'renstra_kegiatan_indikator_satuan' => $request->renstra_kegiatan_indikator_satuan,
				'renstra_kegiatan_indikator_th0_realisasi_target' => $request->renstra_kegiatan_indikator_th0_realisasi_target,
				'renstra_kegiatan_indikator_th1_target' => $request->renstra_kegiatan_indikator_th1_target,
				'renstra_kegiatan_indikator_th2_target' => $request->renstra_kegiatan_indikator_th2_target,
				'renstra_kegiatan_indikator_th3_target' => $request->renstra_kegiatan_indikator_th3_target,
				'renstra_kegiatan_indikator_th4_target' => $request->renstra_kegiatan_indikator_th4_target,
				'renstra_kegiatan_indikator_th5_target' => $request->renstra_kegiatan_indikator_th5_target,
				'renstra_kegiatan_indikator_th6_target' => $request->renstra_kegiatan_indikator_th6_target,

				'renstra_kegiatan_indikator_th1_pagu' => $request->renstra_kegiatan_indikator_th1_pagu,
				'renstra_kegiatan_indikator_th2_pagu' => $request->renstra_kegiatan_indikator_th2_pagu,
				'renstra_kegiatan_indikator_th3_pagu' => $request->renstra_kegiatan_indikator_th3_pagu,
				'renstra_kegiatan_indikator_th4_pagu' => $request->renstra_kegiatan_indikator_th4_pagu,
				'renstra_kegiatan_indikator_th5_pagu' => $request->renstra_kegiatan_indikator_th5_pagu,
				'updated_at' => $date,
			];

			if ($action == 'create') {
				$json = [];
				if (@$request->renstra_kegiatan_indikator_nilai_jenis == 2) {
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
				$jenis = @$request->renstra_kegiatan_indikator_nilai_jenis ? $request->renstra_kegiatan_indikator_nilai_jenis : 1;
				$data['renstra_kegiatan_indikator_nilai_jenis'] = $jenis;
				$data['renstra_kegiatan_indikator_nilai_json'] = $json;
				$data['renstra_kegiatan_id'] = $kegiatanId;
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
