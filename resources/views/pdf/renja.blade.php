<!DOCTYPE html>
<html lang="en">
<?php

function toRupiah($angka)
{

	$hasil_rupiah = number_format($angka, 2, ',', '.');
	return $hasil_rupiah;
}
function setTarget($_nilai, $_jenis, $_json)
{

	$nilai = $_nilai;
	$hasil = $nilai;
	if (@$_jenis == 2) {
		$arr = json_decode($_json, true);
		for ($i = 0; $i < count($arr); $i++) {
			$temp = 0;
			if ($nilai <= $arr[$i]['nilai'] && $nilai > $temp) {
				$hasil = $arr[$i]['nama'];
				$temp = $arr[$i]['nilai'];
			}
		}
	}
	return $hasil;
}

function setCapaian($realisasi, $target)
{
	$hasil = 0;

	if ($target > 0) {
		$hasil = round(100 * $realisasi / $target, 2);
	}

	return $hasil;
}

function setPredikat($nilai)
{
	$hasil = "E";

	if ($nilai > 100) {
		$hasil = 'A+';
	} elseif ($nilai > 80) {
		$hasil = 'A';
	} else if ($nilai > 60) {
		$hasil = 'B';
	} else if ($nilai > 40) {
		$hasil = 'C';
	} else if ($nilai > 20) {
		$hasil = 'D';
	} else {
		$hasil = "E";
	}

	if ($nilai == '' || $nilai == null) {
		$hasil = '';
	}


	return $hasil;
}

$triwulan = session('triwulan');
$tahun = session('tahun');

$targetProgram = 'rpjmd_program_indikator_th' . $tahun . '_target';
$realisasiProgram = 'rpjmd_program_indikator_th' . $tahun . '_realisasi_target';

$targetKegiatan = 'renstra_kegiatan_indikator_th' . $tahun . '_target';
$realisasiKegiatan = 'renstra_kegiatan_indikator_th' . $tahun . '_realisasi_target';
// echo "<pre>";
// print_r($dataAll);

?>

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Laporan RENJA</title>
	<style>
		.my-table th {
			padding: 10px;
		}

		.my-table,
		.my-table td,
		.my-table th {
			border: 1px solid black;
			padding: 10px;
		}

		.my-table {
			border-collapse: collapse;
			width: 100%;
		}
		.row td {
			font-weight: bold;
		}
	</style>
</head>

<body>


	<center>
		<h2>RENJA</h2>
	</center>
	<br>
	<table class="my-table">
		<thead>
			<tr>
				<!-- <th rowspan="2">No</th> -->
				<th rowspan="2">Kode</th>
				<th rowspan="2" colspan="6">Uraian</th>
				<th rowspan="2">Indikator</th>
				<th rowspan="2">Satuan</th>
				<th colspan="3">Target</th>
				<th colspan="2">Realisasi</th>
				<th colspan="3">Capaian</th>
			</tr>
			<tr>
				<th>Kinerja</th>
				<th>Pagu</th>
				<th>Renstra Pagu</th>
				<th>Kinerja</th>
				<th>Pagu</th>
				<th>Kinerja</th>
				<th>Pagu</th>
				<th>Predikat</th>
			</tr>
		</thead>
		<tbody>
			@foreach($dataAll as $row)
			@if($row['level'] == 1)
			<tr class="row">
				<td rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ $row['kode'] }}</td>
				<td rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}" colspan="6">{{ $row['uraian'] }}</td>
				<td>{{ @$row['data'][0]->rpjmd_tujuan_indikator_nama }}</td>
				<td>{{ @$row['data'][0]->rpjmd_tujuan_indikator_satuan }}</td>
				<td>{{ @$row['data'][0]->rpjmd_tujuan_indikator_th0_realisasi_target }}</td>
				<td>{{ @$row['data'][0]->rpjmd_tujuan_indikator_th1_target }}</td>
				<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ toRupiah(@$row['dataPagu'][1]['pagu']) }}</td>
				<td>{{ @$row['data'][0]->rpjmd_tujuan_indikator_th2_target }}</td>
				<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ toRupiah(@$row['dataPagu'][2]['pagu']) }}</td>
				<td>{{ @$row['data'][0]->rpjmd_tujuan_indikator_th3_target }}</td>
				<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ toRupiah(@$row['dataPagu'][3]['pagu']) }}</td>
				<td>{{ @$row['data'][0]->rpjmd_tujuan_indikator_th4_target }}</td>
				<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ toRupiah(@$row['dataPagu'][4]['pagu']) }}</td>
				<td>{{ @$row['data'][0]->rpjmd_tujuan_indikator_th5_target }}</td>
				<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ toRupiah(@$row['dataPagu'][5]['pagu']) }}</td>
				<td>{{ @$row['data'][0]->rpjmd_tujuan_indikator_th1_realisasi_target }}</td>
				<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ toRupiah(@$row['dataPagu'][1]['realisasi_pagu']) }}</td>
				<td>{{ @$row['data'][0]->rpjmd_tujuan_indikator_th2_realisasi_target }}</td>
				<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ toRupiah(@$row['dataPagu'][2]['realisasi_pagu']) }}</td>
				<td>{{ @$row['data'][0]->rpjmd_tujuan_indikator_th3_realisasi_target }}</td>
				<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ toRupiah(@$row['dataPagu'][3]['realisasi_pagu']) }}</td>
				<td>{{ @$row['data'][0]->rpjmd_tujuan_indikator_th4_realisasi_target }}</td>
				<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ toRupiah(@$row['dataPagu'][4]['realisasi_pagu']) }}</td>
				<td>{{ @$row['data'][0]->rpjmd_tujuan_indikator_th5_realisasi_target }}</td>
				<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ toRupiah(@$row['dataPagu'][5]['realisasi_pagu']) }}</td>
			</tr>

			@for($idxIndikator = 1; $idxIndikator < count(@$row['data']); $idxIndikator++) 
			<tr class="row">
				<td>{{ @$row['data'][$idxIndikator]->rpjmd_tujuan_indikator_nama }}</td>
				<td>{{ @$row['data'][$idxIndikator]->rpjmd_tujuan_indikator_satuan }}</td>
				<td>{{ @$row['data'][$idxIndikator]->rpjmd_tujuan_indikator_th0_realisasi_target }}</td>
				<td>{{ @$row['data'][$idxIndikator]->rpjmd_tujuan_indikator_th1_target }}</td>
				<td>{{ @$row['data'][$idxIndikator]->rpjmd_tujuan_indikator_th2_target }}</td>
				<td>{{ @$row['data'][$idxIndikator]->rpjmd_tujuan_indikator_th3_target }}</td>
				<td>{{ @$row['data'][$idxIndikator]->rpjmd_tujuan_indikator_th4_target }}</td>
				<td>{{ @$row['data'][$idxIndikator]->rpjmd_tujuan_indikator_th5_target }}</td>
				<td>{{ @$row['data'][$idxIndikator]->rpjmd_tujuan_indikator_th1_realisasi_target }}</td>
				<td>{{ @$row['data'][$idxIndikator]->rpjmd_tujuan_indikator_th2_realisasi_target }}</td>
				<td>{{ @$row['data'][$idxIndikator]->rpjmd_tujuan_indikator_th3_realisasi_target }}</td>
				<td>{{ @$row['data'][$idxIndikator]->rpjmd_tujuan_indikator_th4_realisasi_target }}</td>
				<td>{{ @$row['data'][$idxIndikator]->rpjmd_tujuan_indikator_th5_realisasi_target }}</td>
				</tr>
				@endfor
				@elseif($row['level'] == 2)
				<tr class="row">
					<td rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ $row['kode'] }}</td>
					<td style="border-right: 0px" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}"></td>
					<td style="border-right: 0px; border-left: 0px" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}" colspan="5">{{ $row['uraian'] }}</td>
					<td>{{ @$row['data'][0]->rpjmd_sasaran_indikator_nama }}</td>
					<td>{{ @$row['data'][0]->rpjmd_sasaran_indikator_satuan }}</td>
					<td>{{ @$row['data'][0]->rpjmd_sasaran_indikator_th0_realisasi_target }}</td>
					<td>{{ @$row['data'][0]->rpjmd_sasaran_indikator_th1_target }}</td>
					<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ toRupiah(@$row['dataPagu'][1]['pagu']) }}</td>
					<td>{{ @$row['data'][0]->rpjmd_sasaran_indikator_th2_target }}</td>
					<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ toRupiah(@$row['dataPagu'][2]['pagu']) }}</td>
					<td>{{ @$row['data'][0]->rpjmd_sasaran_indikator_th3_target }}</td>
					<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ toRupiah(@$row['dataPagu'][3]['pagu']) }}</td>
					<td>{{ @$row['data'][0]->rpjmd_sasaran_indikator_th4_target }}</td>
					<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ toRupiah(@$row['dataPagu'][4]['pagu']) }}</td>
					<td>{{ @$row['data'][0]->rpjmd_sasaran_indikator_th5_target }}</td>
					<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ toRupiah(@$row['dataPagu'][5]['pagu']) }}</td>
					<td>{{ @$row['data'][0]->rpjmd_sasaran_indikator_th1_realisasi_target }}</td>
					<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ toRupiah(@$row['dataPagu'][1]['realisasi_pagu']) }}</td>
					<td>{{ @$row['data'][0]->rpjmd_sasaran_indikator_th2_realisasi_target }}</td>
					<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ toRupiah(@$row['dataPagu'][2]['realisasi_pagu']) }}</td>
					<td>{{ @$row['data'][0]->rpjmd_sasaran_indikator_th3_realisasi_target }}</td>
					<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ toRupiah(@$row['dataPagu'][3]['realisasi_pagu']) }}</td>
					<td>{{ @$row['data'][0]->rpjmd_sasaran_indikator_th4_realisasi_target }}</td>
					<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ toRupiah(@$row['dataPagu'][4]['realisasi_pagu']) }}</td>
					<td>{{ @$row['data'][0]->rpjmd_sasaran_indikator_th5_realisasi_target }}</td>
					<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ toRupiah(@$row['dataPagu'][5]['realisasi_pagu']) }}</td>
				</tr>

				@for($idxIndikator = 1; $idxIndikator < count(@$row['data']); $idxIndikator++) 
				<tr class="row">
					<td>{{ @$row['data'][$idxIndikator]->rpjmd_sasaran_indikator_nama }}</td>
					<td>{{ @$row['data'][$idxIndikator]->rpjmd_sasaran_indikator_satuan }}</td>
					<td>{{ @$row['data'][$idxIndikator]->rpjmd_sasaran_indikator_th0_realisasi_target }}</td>
					<td>{{ @$row['data'][$idxIndikator]->rpjmd_sasaran_indikator_th1_target }}</td>
					<td>{{ @$row['data'][$idxIndikator]->rpjmd_sasaran_indikator_th2_target }}</td>
					<td>{{ @$row['data'][$idxIndikator]->rpjmd_sasaran_indikator_th3_target }}</td>
					<td>{{ @$row['data'][$idxIndikator]->rpjmd_sasaran_indikator_th4_target }}</td>
					<td>{{ @$row['data'][$idxIndikator]->rpjmd_sasaran_indikator_th5_target }}</td>
					<td>{{ @$row['data'][$idxIndikator]->rpjmd_sasaran_indikator_th1_realisasi_target }}</td>
					<td>{{ @$row['data'][$idxIndikator]->rpjmd_sasaran_indikator_th2_realisasi_target }}</td>
					<td>{{ @$row['data'][$idxIndikator]->rpjmd_sasaran_indikator_th3_realisasi_target }}</td>
					<td>{{ @$row['data'][$idxIndikator]->rpjmd_sasaran_indikator_th4_realisasi_target }}</td>
					<td>{{ @$row['data'][$idxIndikator]->rpjmd_sasaran_indikator_th5_realisasi_target }}</td>
					</tr>
					@endfor
					@elseif($row['level'] == 3)
					<tr class="row">
						<td rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ $row['kode'] }}</td>
						<td rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}" colspan="6">{{ $row['uraian'] }}</td>
						<td>{{ @$row['data'][0]->rpjmd_program_indikator_nama }}</td>
						<td>{{ @$row['data'][0]->rpjmd_program_indikator_satuan }}</td>
						<td>{{ setTarget(@$row['data'][0]->$targetProgram, @$row['data'][0]->rpjmd_program_indikator_nilai_jenis, @$row['data'][0]->rpjmd_program_indikator_nilai_json) }}</td>
						<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ toRupiah(@$row['dataPagu']['pagu']) }}</td>
						<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ toRupiah(@$row['dataPagu']['renstra_pagu']) }}</td>
						<td>{{ setTarget(@$row['data'][0]->$realisasiProgram, @$row['data'][0]->rpjmd_program_indikator_nilai_jenis, @$row['data'][0]->rpjmd_program_indikator_nilai_json) }}</td>
						<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ toRupiah(@$row['dataPagu']['realisasi_pagu']) }}</td>
						<td style="text-align: right;">{{ setCapaian(@$row['data'][0]->$realisasiProgram, @$row['data'][0]->$targetProgram) }}%</td>
						<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ setCapaian(@$row['dataPagu']['realisasi_pagu'], @$row['dataPagu']['pagu']) }}%</td>
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->$realisasiProgram, @$row['data'][0]->$targetProgram)) }}</td>
					</tr>
					@for($idxIndikator = 1; $idxIndikator < count(@$row['data']); $idxIndikator++) 
					<tr class="row">
						<td>{{ @$row['data'][$idxIndikator]->rpjmd_program_indikator_nama }}</td>
						<td>{{ @$row['data'][$idxIndikator]->rpjmd_program_indikator_satuan }}</td>
						<td>{{ setTarget(@$row['data'][$idxIndikator]->$targetProgram, @$row['data'][$idxIndikator]->rpjmd_program_indikator_nilai_jenis, @$row['data'][$idxIndikator]->rpjmd_program_indikator_nilai_json) }}</td>
						<td>{{ setTarget(@$row['data'][$idxIndikator]->$realisasiProgram, @$row['data'][$idxIndikator]->rpjmd_program_indikator_nilai_jenis, @$row['data'][$idxIndikator]->rpjmd_program_indikator_nilai_json) }}</td>
						<td style="text-align: right;">{{ setCapaian(@$row['data'][$idxIndikator]->$realisasiProgram, @$row['data'][$idxIndikator]->$targetProgram) }}%</td>
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->$realisasiProgram, @$row['data'][$idxIndikator]->$targetProgram)) }}</td>
						</tr>
						@endfor

						@elseif($row['level'] == 4)
						<tr class="row">
							<td rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ $row['kode'] }}</td>
							<td style="border-right: 0px" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}"></td>
							<td style="border-right: 0px; border-left: 0px" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}" colspan="5">{{ $row['uraian'] }}</td>
							<td>{{ @$row['data'][0]->renstra_kegiatan_indikator_nama }}</td>
							<td>{{ @$row['data'][0]->renstra_kegiatan_indikator_satuan }}</td>
							<td>{{ setTarget(@$row['data'][0]->$targetKegiatan, @$row['data'][0]->renstra_kegiatan_indikator_nilai_jenis, @$row['data'][0]->renstra_kegiatan_indikator_nilai_json) }}</td>
							<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ toRupiah(@$row['dataPagu']['pagu']) }}</td>
							<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ toRupiah(@$row['dataPagu']['renstra_pagu']) }}</td>
							<td>{{ setTarget(@$row['data'][0]->$realisasiKegiatan, @$row['data'][0]->renstra_kegiatan_indikator_nilai_jenis, @$row['data'][0]->renstra_kegiatan_indikator_nilai_json) }}</td>
							<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ toRupiah(@$row['dataPagu']['realisasi_pagu']) }}</td>
							<td style="text-align: right;">{{ setCapaian(@$row['data'][0]->$realisasiKegiatan, @$row['data'][0]->$targetKegiatan) }}%</td>
							<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ setCapaian(@$row['dataPagu']['realisasi_pagu'], @$row['dataPagu']['pagu']) }}%</td>
							<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->$realisasiKegiatan, @$row['data'][0]->$realisasiKegiatan)) }}</td>
						</tr>
						@for($idxIndikator = 1; $idxIndikator < count(@$row['data']); $idxIndikator++)
						<tr class="row">
							<td>{{ @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_nama }}</td>
							<td>{{ @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_satuan }}</td>
							<td>{{ setTarget(@$row['data'][$idxIndikator]->$targetKegiatan, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_nilai_json) }}</td>
							<td>{{ setTarget(@$row['data'][$idxIndikator]->$realisasiKegiatan, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_nilai_json) }}</td>
							<td style="text-align: right;">{{ setCapaian(@$row['data'][$idxIndikator]->$realisasiKegiatan, @$row['data'][$idxIndikator]->$targetKegiatan) }}%</td>
							<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->$realisasiKegiatan, @$row['data'][$idxIndikator]->$targetKegiatan)) }}</td>
							</tr>
							@endfor

							@elseif($row['level'] == 5)
							<tr>
								<td rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ $row['kode'] }}</td>
								<td style="border-right: 0px" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}"></td>
								<td style="border-right: 0px; border-left: 0px" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}"></td>
								<td style="border-right: 0px; border-left: 0px" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}" colspan="4">{{ $row['uraian'] }}</td>
								<td>{{ @$row['data'][0]->rkpd_sub_kegiatan_indikator_nama }}</td>
								<td>{{ @$row['data'][0]->rkpd_sub_kegiatan_indikator_satuan }}</td>
								<td>{{ setTarget(@$row['data'][0]->rkpd_sub_kegiatan_indikator_target, @$row['data'][0]->rkpd_sub_kegiatan_indikator_nilai_jenis, @$row['data'][0]->rkpd_sub_kegiatan_indikator_nilai_json) }}</td>
								<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ toRupiah(@$row['dataPagu']['pagu']) }}</td>
								<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}"></td>
								<td>{{ setTarget(@$row['data'][0]->realisasi_target, @$row['data'][0]->rkpd_sub_kegiatan_indikator_nilai_jenis, @$row['data'][0]->rkpd_sub_kegiatan_indikator_nilai_json) }}</td>
								<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ toRupiah(@$row['dataPagu']['realisasi_pagu']) }}</td>
								<td style="text-align: right;">{{ setCapaian(@$row['data'][0]->realisasi_target, @$row['data'][0]->rkpd_sub_kegiatan_indikator_target) }}%</td>
								<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ setCapaian(@$row['dataPagu']['realisasi_pagu'], @$row['dataPagu']['pagu']) }}%</td>
								<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->realisasi_target, @$row['data'][0]->rkpd_sub_kegiatan_indikator_target)) }}</td>
							</tr>
							@for($idxIndikator = 1; $idxIndikator < count(@$row['data']); $idxIndikator++) <tr>
								<td>{{ @$row['data'][$idxIndikator]->rkpd_sub_kegiatan_indikator_nama }}</td>
								<td>{{ @$row['data'][$idxIndikator]->rkpd_sub_kegiatan_indikator_satuan }}</td>
								<td>{{ @$row['data'][$idxIndikator]->rkpd_sub_kegiatan_indikator_target }}</td>
								<!-- <td style="text-align: right;">{{ toRupiah(@$row['data'][$idxIndikator]->pagu) }}</td> -->
								<td>{{ @$row['data'][$idxIndikator]->realisasi_target }}</td>
								<!-- <td style="text-align: right;">{{ toRupiah(@$row['data'][$idxIndikator]->realisasi_pagu) }}</td> -->
								</tr>
								@endfor
								@endif
								@endforeach
		</tbody>
	</table>
</body>

</html>