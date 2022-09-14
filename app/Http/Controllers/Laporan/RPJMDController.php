<?php

namespace App\Http\Controllers\Laporan;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Validator;
use DataTables;
use PDF;

class RPJMDController extends Controller
{

	private $table;
	public function __construct()
	{
		$this->table = 'ref_rpjmd_program';
	}

	public function view()
	{
		$kirim = [];
		return view('components/laporan/rpjmd', $kirim);
	}

	public function getQuery($request)
	{
		$data = DB::table($this->table)
			->select(
				$this->table . '.*',
				'ref_rpjmd_visi.id as rpjmd_visi_id',
				'ref_rpjmd_misi.id as rpjmd_misi_id',
				'ref_rpjmd_tujuan.id as rpjmd_tujuan_id',
				'ref_rpjmd_sasaran.id as rpjmd_sasaran_id',
				'ref_rpjmd_visi.rpjmd_visi_nama',
				'ref_rpjmd_misi.rpjmd_misi_nama',
				'ref_rpjmd_tujuan.rpjmd_tujuan_nama',
				'ref_rpjmd_sasaran.rpjmd_sasaran_nama',
				'ref_program.program_nama',
				'ref_rpjmd_program.opd_id',
				'ref_opd.opd_nama'
			)
			->leftJoin('ref_opd', 'ref_opd.id', '=', 'ref_rpjmd_program.opd_id')
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
			->orderBy('ref_rpjmd_visi.id')
			->orderBy('ref_rpjmd_misi.id')
			->orderBy('ref_rpjmd_tujuan.id')
			->orderBy('ref_rpjmd_sasaran.id')
			->orderBy('ref_rpjmd_program.id');

		return $data;
	}

	public function cetak(Request $request)
	{
		$data = $this->getQuery($request)->get();

		$dataAll = [];
		$index = 0;

		$visi_id = 0;
		$misi_id = 0;
		$tujuan_id = 0;
		$sasaran_id = 0;
		$program_id = 0;

		$visi_index = 0;
		$misi_index = 0;
		$tujuan_index = 0;
		$sasaran_index = 0;
		$program_index = 0;


		foreach ($data as $row) {

			if ($visi_id != $row->rpjmd_visi_id) {
				$visi_id = $row->rpjmd_visi_id;
				$visi_index = $index;
				$dataAll[$index]['uraian'] = $row->rpjmd_visi_nama;
				$dataAll[$index]['level'] = 1;
				$index++;
			}

			if ($misi_id != $row->rpjmd_misi_id) {
				$misi_id = $row->rpjmd_misi_id;
				$misi_index = $index;
				$dataAll[$index]['uraian'] = $row->rpjmd_misi_nama;
				$dataAll[$index]['level'] = 2;
				$index++;
			}

			if ($tujuan_id != $row->rpjmd_tujuan_id) {
				$tujuan_id = $row->rpjmd_tujuan_id;
				$tujuan_index = $index;
				$dataAll[$index]['uraian'] = $row->rpjmd_tujuan_nama;
				$dataAll[$index]['data'] = DB::table('ta_rpjmd_tujuan_indikator')
					->where('ta_rpjmd_tujuan_indikator.rpjmd_tujuan_id', $row->rpjmd_tujuan_id)
					->get();
				$dataAll[$index]['level'] = 3;
				$index++;
			}

			if ($sasaran_id != $row->rpjmd_sasaran_id) {
				$sasaran_id = $row->rpjmd_sasaran_id;
				$sasaran_index = $index;
				$dataAll[$index]['uraian'] = $row->rpjmd_sasaran_nama;
				$dataAll[$index]['data'] = DB::table('ta_rpjmd_sasaran_indikator')
					->where('ta_rpjmd_sasaran_indikator.rpjmd_sasaran_id', $row->rpjmd_sasaran_id)
					->get();
				$dataAll[$index]['level'] = 4;
				$index++;
			}

			if ($program_id != $row->id) {
				$program_id = $row->id;
				$program_index = $index;
				$dataAll[$index]['uraian'] = @$row->program_nama;
				$dataAll[$index]['data'] = DB::table('ta_rpjmd_program_indikator')
					->leftJoin('ref_rpjmd_program', 'ref_rpjmd_program.id', '=', 'ta_rpjmd_program_indikator.rpjmd_program_id')
					->leftJoin('ref_opd', 'ref_opd.id', '=', 'ref_rpjmd_program.opd_id')
					->where('ta_rpjmd_program_indikator.rpjmd_program_id', $row->id)
					->get();

				$dataAll[$index]['renstra_kegiatan'] = DB::table('ta_renstra_kegiatan_indikator')
				->leftJoin('ref_renstra_kegiatan', 'ref_renstra_kegiatan.id', '=', 'ta_renstra_kegiatan_indikator.renstra_kegiatan_id')
				->where('ref_renstra_kegiatan.permen_ver', $row->permen_ver)
				->where('ref_renstra_kegiatan.urusan_kode', $row->urusan_kode)
				->where('ref_renstra_kegiatan.bidang_kode', $row->bidang_kode)
				->where('ref_renstra_kegiatan.program_kode', $row->program_kode)
				->get();
				
				for ($idxTahun = 1; $idxTahun <= 5; $idxTahun++) {
					$dataAll[$index]['dataPagu'][$idxTahun]['renstra_pagu'] = 0;
					$dataAll[$sasaran_index]['dataPagu'][$idxTahun]['renstra_pagu'] = 0;
					$dataAll[$tujuan_index]['dataPagu'][$idxTahun]['renstra_pagu'] = 0;
				}

				for ($idxRens = 0; $idxRens < count($dataAll[$index]['renstra_kegiatan']); $idxRens++) {
					for ($idxTahun = 1; $idxTahun <= 5; $idxTahun++) {
						$temp = 'renstra_kegiatan_indikator_th'.$idxTahun.'_pagu';
						$sub_pagu = $dataAll[$index]['renstra_kegiatan'][$idxRens]->$temp;
						$dataAll[$index]['dataPagu'][$idxTahun]['renstra_pagu'] += $sub_pagu;
						$dataAll[$sasaran_index]['dataPagu'][$idxTahun]['renstra_pagu'] = $sub_pagu + @$dataAll[$sasaran_index]['dataPagu'][$idxTahun]['renstra_pagu'];
						$dataAll[$tujuan_index]['dataPagu'][$idxTahun]['renstra_pagu'] = $sub_pagu + @$dataAll[$tujuan_index]['dataPagu'][$idxTahun]['renstra_pagu'];
					}
				}


				for ($idxTahun = 1; $idxTahun <= 5; $idxTahun++) {

					$dataAll[$index]['sub_kegiatan'][$idxTahun]['data'] = DB::table('ref_rkpd_sub_kegiatan_indikator')
						->leftJoin('ref_rkpd_sub_kegiatan', 'ref_rkpd_sub_kegiatan.id', '=', 'ref_rkpd_sub_kegiatan_indikator.rkpd_sub_kegiatan_id')
						->where('ref_rkpd_sub_kegiatan.tahun_ke', $idxTahun)
						->where('ref_rkpd_sub_kegiatan.permen_ver', @$dataAll[$index]['data'][0]->permen_ver)
						->where('ref_rkpd_sub_kegiatan.urusan_kode', @$dataAll[$index]['data'][0]->urusan_kode)
						->where('ref_rkpd_sub_kegiatan.bidang_kode', @$dataAll[$index]['data'][0]->bidang_kode)
						->where('ref_rkpd_sub_kegiatan.program_kode', @$dataAll[$index]['data'][0]->program_kode)
						->where('ref_rkpd_sub_kegiatan.opd_id', @$dataAll[$index]['data'][0]->opd_id)
						->get();

					$dataAll[$index]['sub_kegiatan'][$idxTahun]['data_pagu'] = DB::table('ref_rkpd_sub_kegiatan')
						->where('ref_rkpd_sub_kegiatan.tahun_ke', $idxTahun)
						->where('ref_rkpd_sub_kegiatan.permen_ver', @$dataAll[$index]['data'][0]->permen_ver)
						->where('ref_rkpd_sub_kegiatan.urusan_kode', @$dataAll[$index]['data'][0]->urusan_kode)
						->where('ref_rkpd_sub_kegiatan.bidang_kode', @$dataAll[$index]['data'][0]->bidang_kode)
						->where('ref_rkpd_sub_kegiatan.program_kode', @$dataAll[$index]['data'][0]->program_kode)
						->where('ref_rkpd_sub_kegiatan.opd_id', @$dataAll[$index]['data'][0]->opd_id)
						->get();

					// echo "<pre>";
					// print_r($dataAll[$index]['sub_kegiatan'][$idxTahun]['data_pagu']);
					// die();

					$dataAll[$index]['dataPagu'][$idxTahun]['pagu'] = 0;
					$dataAll[$index]['dataPagu'][$idxTahun]['realisasi_pagu'] = 0;
					$dataAll[$index]['dataPagu'][$idxTahun]['capaian_pagu'] = 0;
					$dataAll[$index]['dataPagu'][$idxTahun]['target'] = 0;
					$dataAll[$index]['dataPagu'][$idxTahun]['realisasi_target'] = 0;
					$dataAll[$index]['dataPagu'][$idxTahun]['capaian_target'] = 0;

					foreach ($dataAll[$index]['sub_kegiatan'][$idxTahun]['data'] as $rowTahunan) {
						// $sub_pagu = @$rowTahunan->rkpd_sub_kegiatan_indikator_pagu;
						// $sub_pagu_realisasi = 0;
						$sub_target = @$rowTahunan->rkpd_sub_kegiatan_indikator_target;
						$sub_target_realisasi = 0;
						if ($idxTahun == session('tahun')) {
							// $temp = 'rkpd_sub_kegiatan_indikator_tw' . session('triwulan') . '_pagu';
							// $sub_pagu_realisasi += @$rowTahunan->$temp;
							$temp = 'rkpd_sub_kegiatan_indikator_tw' . session('triwulan') . '_target';
							$sub_target_realisasi += @$rowTahunan->$temp;
						} else {
							// $sub_pagu_realisasi += @$rowTahunan->rkpd_sub_kegiatan_indikator_tw4_pagu;
							$sub_target_realisasi += @$rowTahunan->rkpd_sub_kegiatan_indikator_tw4_target;
						}
						// $sub_pagu_capaian = 100 * $sub_pagu_realisasi / $sub_pagu;
						// $sub_target_capaian = 100 * $sub_target_realisasi / $sub_target;

						// $dataAll[$index]['dataPagu'][$idxTahun]['pagu'] += $sub_pagu;
						// $dataAll[$index]['dataPagu'][$idxTahun]['realisasi_pagu'] += $sub_pagu_realisasi;
						// $dataAll[$index]['dataPagu'][$idxTahun]['capaian_pagu'] = $this->setCapaian($dataAll[$index]['dataPagu'][$idxTahun]['realisasi_pagu'], $dataAll[$index]['dataPagu'][$idxTahun]['renstra_pagu']);
						$dataAll[$index]['dataPagu'][$idxTahun]['target'] += $sub_target;
						$dataAll[$index]['dataPagu'][$idxTahun]['realisasi_target'] += $sub_target_realisasi;
						$dataAll[$index]['dataPagu'][$idxTahun]['capaian_target'] += $this->setCapaian($dataAll[$index]['dataPagu'][$idxTahun]['realisasi_target'], $dataAll[$index]['dataPagu'][$idxTahun]['target']);

						// $dataAll[$sasaran_index]['dataPagu'][$idxTahun]['pagu'] = $sub_pagu + @$dataAll[$sasaran_index]['dataPagu'][$idxTahun]['pagu'];
						// $dataAll[$sasaran_index]['dataPagu'][$idxTahun]['realisasi_pagu'] = $sub_pagu_realisasi + @$dataAll[$sasaran_index]['dataPagu'][$idxTahun]['realisasi_pagu'];
						// $dataAll[$sasaran_index]['dataPagu'][$idxTahun]['capaian_pagu'] = $this->setCapaian($dataAll[$sasaran_index]['dataPagu'][$idxTahun]['realisasi_pagu'], $dataAll[$sasaran_index]['dataPagu'][$idxTahun]['renstra_pagu']);

						// $dataAll[$tujuan_index]['dataPagu'][$idxTahun]['pagu'] = $sub_pagu + @$dataAll[$tujuan_index]['dataPagu'][$idxTahun]['pagu'];
						// $dataAll[$tujuan_index]['dataPagu'][$idxTahun]['realisasi_pagu'] = $sub_pagu_realisasi + @$dataAll[$tujuan_index]['dataPagu'][$idxTahun]['realisasi_pagu'];
						// $dataAll[$tujuan_index]['dataPagu'][$idxTahun]['capaian_pagu'] = $this->setCapaian($dataAll[$tujuan_index]['dataPagu'][$idxTahun]['realisasi_pagu'], $dataAll[$tujuan_index]['dataPagu'][$idxTahun]['renstra_pagu']);
					}


					foreach ($dataAll[$index]['sub_kegiatan'][$idxTahun]['data_pagu'] as $rowTahunan) {
						$sub_pagu = @$rowTahunan->sub_kegiatan_pagu;
						$sub_pagu_realisasi = 0;
						$arrTriwulan = [1,3,6,9,12];
						if ($idxTahun == session('tahun')) {
							$temp = 'sub_kegiatan_pagu_bln' . $arrTriwulan[session('triwulan')];
							$sub_pagu_realisasi += @$rowTahunan->$temp;
						} else {
							$sub_pagu_realisasi += @$rowTahunan->sub_kegiatan_pagu_bln12;
						}
						// $sub_pagu_capaian = 100 * $sub_pagu_realisasi / $sub_pagu;
						// $sub_target_capaian = 100 * $sub_target_realisasi / $sub_target;

						$dataAll[$index]['dataPagu'][$idxTahun]['pagu'] += $sub_pagu;
						$dataAll[$index]['dataPagu'][$idxTahun]['realisasi_pagu'] += $sub_pagu_realisasi;
						$dataAll[$index]['dataPagu'][$idxTahun]['capaian_pagu'] = $this->setCapaian($dataAll[$index]['dataPagu'][$idxTahun]['realisasi_pagu'], $dataAll[$index]['dataPagu'][$idxTahun]['renstra_pagu']);
						// $dataAll[$index]['dataPagu'][$idxTahun]['target'] += $sub_target;
						// $dataAll[$index]['dataPagu'][$idxTahun]['realisasi_target'] += $sub_target_realisasi;
						// $dataAll[$index]['dataPagu'][$idxTahun]['capaian_target'] += $this->setCapaian($dataAll[$index]['dataPagu'][$idxTahun]['realisasi_target'], $dataAll[$index]['dataPagu'][$idxTahun]['target']);

						$dataAll[$sasaran_index]['dataPagu'][$idxTahun]['pagu'] = $sub_pagu + @$dataAll[$sasaran_index]['dataPagu'][$idxTahun]['pagu'];
						$dataAll[$sasaran_index]['dataPagu'][$idxTahun]['realisasi_pagu'] = $sub_pagu_realisasi + @$dataAll[$sasaran_index]['dataPagu'][$idxTahun]['realisasi_pagu'];
						$dataAll[$sasaran_index]['dataPagu'][$idxTahun]['capaian_pagu'] = $this->setCapaian($dataAll[$sasaran_index]['dataPagu'][$idxTahun]['realisasi_pagu'], $dataAll[$sasaran_index]['dataPagu'][$idxTahun]['renstra_pagu']);

						$dataAll[$tujuan_index]['dataPagu'][$idxTahun]['pagu'] = $sub_pagu + @$dataAll[$tujuan_index]['dataPagu'][$idxTahun]['pagu'];
						$dataAll[$tujuan_index]['dataPagu'][$idxTahun]['realisasi_pagu'] = $sub_pagu_realisasi + @$dataAll[$tujuan_index]['dataPagu'][$idxTahun]['realisasi_pagu'];
						$dataAll[$tujuan_index]['dataPagu'][$idxTahun]['capaian_pagu'] = $this->setCapaian($dataAll[$tujuan_index]['dataPagu'][$idxTahun]['realisasi_pagu'], $dataAll[$tujuan_index]['dataPagu'][$idxTahun]['renstra_pagu']);
					}
				}


				$dataAll[$index]['level'] = 5;
				$index++;
			}
		}
		// echo "<pre>";
		// print_r($dataAll);


		$cetak = $request->cetak;

		$kirim = [
			'dataAll' => $dataAll,
		];

		if ($cetak == 'pdf') {
			$pdf = PDF::loadView('pdf/rpjmd', $kirim)->setPaper('a4', 'landscape');
			return $pdf->download('pdf_file.pdf');
		} else {
			return view('pdf/rpjmd', $kirim);
		}
	}

	public function setCapaian($realisasi, $target)
	{
		$hasil = 0;
		if ($target > 0) {
			$hasil = round(100 * $realisasi / $target, 2);
		}
		return $hasil;
	}
}
