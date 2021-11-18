<?php

namespace App\Http\Controllers\PenyusunanRKPD;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Validator;
use DataTables;

class SubKegiatanController extends Controller
{

	private $table;
	public function __construct()
	{
		$this->table = 'ref_rkpd_sub_kegiatan_indikator';
	}

	public function view()
	{



		$dataOpd = DB::table('ref_opd')->where('id', session('opd'))->first();


		$dataProgram = DB::table('ref_program')
			->orWhere(function ($query) use ($dataOpd) {
				$query->where('urusan_kode', @$dataOpd->urusan1_kode)
					->where('bidang_kode', @$dataOpd->bidang1_kode);
			})
			->orWhere(function ($query) use ($dataOpd) {
				$query->where('urusan_kode', @$dataOpd->urusan2_kode)
					->where('bidang_kode', @$dataOpd->bidang2_kode);
			})
			->orWhere(function ($query) use ($dataOpd) {
				$query->where('urusan_kode', @$dataOpd->urusan3_kode)
					->where('bidang_kode', @$dataOpd->bidang3_kode);
			})
			->orWhere(function ($query) {
				$query->where('urusan_kode', 0)
					->where('bidang_kode', 0);
			})
			->get();

		$dataOPD = DB::table('ref_opd')->get();


		$kirim = [
			'dataOPD' => $dataOPD,
			'dataProgram' => $dataProgram,
		];

		return view('components/penyusunan-rkpd/sub-kegiatan', $kirim);
	}

	public function getQuery($request)
	{
		$data = DB::table($this->table)
			->select(
				$this->table . '.*',
				'ref_rkpd_sub_kegiatan.permen_ver',
				'ref_rkpd_sub_kegiatan.urusan_kode',
				'ref_rkpd_sub_kegiatan.bidang_kode',
				'ref_rkpd_sub_kegiatan.program_kode',
				'ref_rkpd_sub_kegiatan.kegiatan_kode',
				'ref_rkpd_sub_kegiatan.sub_kegiatan_kode',
				'program_nama',
				'kegiatan_nama',
				'sub_kegiatan_nama'
			)
			->leftJoin('ref_rkpd_sub_kegiatan', 'ref_rkpd_sub_kegiatan.id', '=', 'ref_rkpd_sub_kegiatan_indikator.rkpd_sub_kegiatan_id')
			->leftJoin('ref_program', function ($join) {
				$join->on('ref_program.permen_ver', '=', 'ref_rkpd_sub_kegiatan.permen_ver');
				$join->on('ref_program.urusan_kode', '=', 'ref_rkpd_sub_kegiatan.urusan_kode');
				$join->on('ref_program.bidang_kode', '=', 'ref_rkpd_sub_kegiatan.bidang_kode');
				$join->on('ref_program.program_kode', '=', 'ref_rkpd_sub_kegiatan.program_kode');
			})
			->leftJoin('ref_kegiatan', function ($join) {
				$join->on('ref_kegiatan.permen_ver', '=', 'ref_rkpd_sub_kegiatan.permen_ver');
				$join->on('ref_kegiatan.urusan_kode', '=', 'ref_rkpd_sub_kegiatan.urusan_kode');
				$join->on('ref_kegiatan.bidang_kode', '=', 'ref_rkpd_sub_kegiatan.bidang_kode');
				$join->on('ref_kegiatan.program_kode', '=', 'ref_rkpd_sub_kegiatan.program_kode');
				$join->on('ref_kegiatan.kegiatan_kode', '=', 'ref_rkpd_sub_kegiatan.kegiatan_kode');
			})
			->leftJoin('ref_sub_kegiatan', function ($join) {
				$join->on('ref_sub_kegiatan.permen_ver', '=', 'ref_rkpd_sub_kegiatan.permen_ver');
				$join->on('ref_sub_kegiatan.urusan_kode', '=', 'ref_rkpd_sub_kegiatan.urusan_kode');
				$join->on('ref_sub_kegiatan.bidang_kode', '=', 'ref_rkpd_sub_kegiatan.bidang_kode');
				$join->on('ref_sub_kegiatan.program_kode', '=', 'ref_rkpd_sub_kegiatan.program_kode');
				$join->on('ref_sub_kegiatan.kegiatan_kode', '=', 'ref_rkpd_sub_kegiatan.kegiatan_kode');
				$join->on('ref_sub_kegiatan.sub_kegiatan_kode', '=', 'ref_rkpd_sub_kegiatan.sub_kegiatan_kode');
			})
			->where('ref_rkpd_sub_kegiatan.tahun_ke', session('tahun'))
			->where('ref_rkpd_sub_kegiatan.opd_id', session('opd'));

		return $data;
	}

	public function getData(Request $request, $id = null)
	{
		$data = $this->getQuery($request);
		if ($id != null) {
			$data = $data->where($this->table . '.id', $id);

			$kirim = [
				'status' => true,
				'data' => $data->first(),
			];
			return $kirim;
		}

		return DataTables::of($data->get())
			->addColumn('program', function ($row) {
				return (@$row->urusan_kode == 0 ? 'X' : $row->urusan_kode) . "." . $this->setKode(@$row->bidang_kode) . '.' . $this->setKode(@$row->program_kode) . " " . @$row->program_nama;
				// return '';
			})
			->addColumn('kegiatan', function ($row) {
				return (@$row->urusan_kode == 0 ? 'X' : $row->urusan_kode) . "." . $this->setKode(@$row->bidang_kode) . '.' . $this->setKode(@$row->program_kode) . '.' . $this->setKode(@$row->kegiatan_kode, 2) . " " . @$row->kegiatan_nama;
				// return '';
			})
			->addColumn('sub_kegiatan', function ($row) {
				return (@$row->urusan_kode == 0 ? 'X' : $row->urusan_kode) . "." . $this->setKode(@$row->bidang_kode) . '.' . $this->setKode(@$row->program_kode) . '.' . $this->setKode(@$row->kegiatan_kode, 2) . '.' . $this->setKode(@$row->sub_kegiatan_kode, 3) . " " . @$row->sub_kegiatan_nama;
				// return '';
			})
			->addColumn('target', function ($row) {
				$nilai = $row->rkpd_sub_kegiatan_indikator_target;
				$hasil = $nilai;
				if (@$row->rkpd_sub_kegiatan_indikator_nilai_jenis == 2) {
					$arr = json_decode($row->rkpd_sub_kegiatan_indikator_nilai_json, true);
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
		} else if ($level == 3) {
			if ($angka < 10) {
				$hasil = '00' . $angka;
			} else if ($angka < 100) {
				$hasil = '0' . $angka;
			} else {
				$hasil = $angka;
			}
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

			$permenKode = explode("-", @$request->sub_kegiatan);

			$data = [
				'opd_id' => session('opd'),
				'tahun_ke' => session('tahun'),
				'permen_ver' => @$permenKode[0],
				'urusan_kode' => @$permenKode[1],
				'bidang_kode' => @$permenKode[2],
				'program_kode' => @$permenKode[3],
				'kegiatan_kode' => @$permenKode[4],
				'sub_kegiatan_kode' => @$permenKode[5],
			];
			$cekKegiatan = DB::table('ref_rkpd_sub_kegiatan')
				->where($data)->first();
			if (!@$cekKegiatan->id) {
				$kegiatanId = DB::table('ref_rkpd_sub_kegiatan')->insertGetId($data);
			} else {
				$kegiatanId = $cekKegiatan->id;
			}

			$data = [
				'rkpd_sub_kegiatan_id' => $kegiatanId,
				'rkpd_sub_kegiatan_indikator_nama' => $request->rkpd_sub_kegiatan_indikator_nama,
				'rkpd_sub_kegiatan_indikator_satuan' => $request->rkpd_sub_kegiatan_indikator_satuan,
				'rkpd_sub_kegiatan_indikator_target' => $request->rkpd_sub_kegiatan_indikator_target,
				'rkpd_sub_kegiatan_indikator_pagu' => $request->rkpd_sub_kegiatan_indikator_pagu,
				'updated_at' => $date,
			];

			if ($action == 'create') {
				$json = [];
				if (@$request->rkpd_sub_kegiatan_indikator_nilai_jenis == 2) {
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
				$jenis = @$request->rkpd_sub_kegiatan_indikator_nilai_jenis ? $request->rkpd_sub_kegiatan_indikator_nilai_jenis : 1;
				$data['rkpd_sub_kegiatan_indikator_nilai_jenis'] = $jenis;
				$data['rkpd_sub_kegiatan_indikator_nilai_json'] = $json;
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
			// $status = DB::table($this->table)->where('id', $id)->delete();
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
