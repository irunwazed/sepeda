<!DOCTYPE html>
<html lang="en">
<?php

$triwulan = session('triwulan');
function toRupiah($angka){
	
	$hasil_rupiah = number_format($angka,2,',','.');
	return $hasil_rupiah;
 
}
function setTarget($_nilai, $_jenis, $_json){
		
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

function setCapaian($realisasi, $target){
	$hasil = 0;

	if($target > 0){
		$hasil = round(100*$realisasi/$target, 2);
	}

	return $hasil;
}

function setPredikat($nilai){
	$hasil = "E";

	if($nilai > 100){
		$hasil = 'A+';
	}elseif($nilai > 80){
		$hasil = 'A';
	}else if($nilai > 60){
		$hasil = 'B';
	}else if($nilai > 40){
		$hasil = 'C';
	}else if($nilai > 20){
		$hasil = 'D';
	}else{
		$hasil = "E";
	}

	if($nilai == '' || $nilai == null){
		$hasil = '';
	}
	

	return $hasil;
}

$clNoSubKegiatan = '#FFFFFF';
if(@$_GET['status'] == 1){
	$clNoSubKegiatan = '#F39D95';
}


?>

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Laporan RENSTRA</title>
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
		<h2>RENSTRA</h2>
	</center>
	<br>
	<table>
		<tr>
			<td><b>OPD</b></td>
			<td>:</td>
			<td><b>{{ @$opd_nama }}</b></td>
		</tr>
	</table>
	<br>
	<table class="my-table">
		<thead>
			<tr>
				<!-- <th rowspan="2">No</th> -->
				<th rowspan="3">Kode</th>
				<th rowspan="3">Uraian</th>
				<th rowspan="3">Indikator</th>
				<th rowspan="3">Satuan</th>
				<th rowspan="3">Kondisi Awal</th>
				<th colspan="10">Target</th>
				<th colspan="10">Realisasi</th>
				<th colspan="15">Capaian</th>
			</tr>
			<tr>
				<th colspan="2">{{ session('rpjmd_tahun') }}</th>
				<th colspan="2">{{ session('rpjmd_tahun')+1 }}</th>
				<th colspan="2">{{ session('rpjmd_tahun')+2 }}</th>
				<th colspan="2">{{ session('rpjmd_tahun')+3 }}</th>
				<th colspan="2">{{ session('rpjmd_tahun')+4 }}</th>
				<th colspan="2">{{ session('rpjmd_tahun') }}</th>
				<th colspan="2">{{ session('rpjmd_tahun')+1 }}</th>
				<th colspan="2">{{ session('rpjmd_tahun')+2 }}</th>
				<th colspan="2">{{ session('rpjmd_tahun')+3 }}</th>
				<th colspan="2">{{ session('rpjmd_tahun')+4 }}</th>
				<th colspan="2">{{ session('rpjmd_tahun') }}</th>
				<th colspan="2">{{ session('rpjmd_tahun')+1 }}</th>
				<th colspan="2">{{ session('rpjmd_tahun')+2 }}</th>
				<th colspan="2">{{ session('rpjmd_tahun')+3 }}</th>
				<th colspan="2">{{ session('rpjmd_tahun')+4 }}</th>
			</tr>
			<tr>
				<th>Kinerja</th>
				<th>Pagu</th>
				<th>Kinerja</th>
				<th>Pagu</th>
				<th>Kinerja</th>
				<th>Pagu</th>
				<th>Kinerja</th>
				<th>Pagu</th>
				<th>Kinerja</th>
				<th>Pagu</th>
				<th>Kinerja</th>
				<th>Pagu</th>
				<th>Kinerja</th>
				<th>Pagu</th>
				<th>Kinerja</th>
				<th>Pagu</th>
				<th>Kinerja</th>
				<th>Pagu</th>
				<th>Kinerja</th>
				<th>Pagu</th>
				<th>Kinerja</th>
				<th>Pagu</th>
				<!-- <th>Predikat</th> -->
				<th>Kinerja</th>
				<th>Pagu</th>
				<!-- <th>Predikat</th> -->
				<th>Kinerja</th>
				<th>Pagu</th>
				<!-- <th>Predikat</th> -->
				<th>Kinerja</th>
				<th>Pagu</th>
				<!-- <th>Predikat</th> -->
				<th>Kinerja</th>
				<th>Pagu</th>
				<!-- <th>Predikat</th> -->
			</tr>
		</thead>
		<tbody>
			@foreach($dataAll as $row)
			@if($row['level'] == 1)
			<tr class="row">
				<td colspan="2" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">Tujuan : {{ $row['uraian'] }} </td>
				<td>{{ @$row['data'][0]->renstra_tujuan_indikator_nama }}</td>
				<td>{{ @$row['data'][0]->renstra_tujuan_indikator_satuan }}</td>
				<td>
					{{ setTarget(@$row['data'][0]->renstra_tujuan_indikator_th0_realisasi_target, @$row['data'][0]->renstra_tujuan_indikator_nilai_jenis, @$row['data'][0]->renstra_tujuan_indikator_nilai_json) }}
				</td>
				<td>
					{{ setTarget(@$row['data'][0]->renstra_tujuan_indikator_th1_target, @$row['data'][0]->renstra_tujuan_indikator_nilai_jenis, @$row['data'][0]->renstra_tujuan_indikator_nilai_json) }}
				</td>
				<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
					{{ toRupiah(@$row['dataPagu'][1]['pagu']) }}</td>
				<td>
					{{ setTarget(@$row['data'][0]->renstra_tujuan_indikator_th2_target, @$row['data'][0]->renstra_tujuan_indikator_nilai_jenis, @$row['data'][0]->renstra_tujuan_indikator_nilai_json) }}
				</td>
				<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
					{{ toRupiah(@$row['dataPagu'][2]['pagu']) }}</td>
				<td>
					{{ setTarget(@$row['data'][0]->renstra_tujuan_indikator_th3_target, @$row['data'][0]->renstra_tujuan_indikator_nilai_jenis, @$row['data'][0]->renstra_tujuan_indikator_nilai_json) }}
				</td>
				<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
					{{ toRupiah(@$row['dataPagu'][3]['pagu']) }}</td>
				<td>
					{{ setTarget(@$row['data'][0]->renstra_tujuan_indikator_th4_target, @$row['data'][0]->renstra_tujuan_indikator_nilai_jenis, @$row['data'][0]->renstra_tujuan_indikator_nilai_json) }}
				</td>
				<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
					{{ toRupiah(@$row['dataPagu'][4]['pagu']) }}</td>
				<td>
					{{ setTarget(@$row['data'][0]->renstra_tujuan_indikator_th5_target, @$row['data'][0]->renstra_tujuan_indikator_nilai_jenis, @$row['data'][0]->renstra_tujuan_indikator_nilai_json) }}
				</td>
				<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
					{{ toRupiah(@$row['dataPagu'][5]['pagu']) }}</td>
				<td>
					{{ setTarget(@$row['data'][0]->renstra_tujuan_indikator_th1_realisasi_target, @$row['data'][0]->renstra_tujuan_indikator_nilai_jenis, @$row['data'][0]->renstra_tujuan_indikator_nilai_json) }}
				</td>
				<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
					{{ toRupiah(@$row['dataPagu'][1]['realisasi_pagu']) }}</td>
				<td>
					{{ setTarget(@$row['data'][0]->renstra_tujuan_indikator_th2_realisasi_target, @$row['data'][0]->renstra_tujuan_indikator_nilai_jenis, @$row['data'][0]->renstra_tujuan_indikator_nilai_json) }}
				</td>
				<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
					{{ toRupiah(@$row['dataPagu'][2]['realisasi_pagu']) }}</td>
				<td>
					{{ setTarget(@$row['data'][0]->renstra_tujuan_indikator_th3_realisasi_target, @$row['data'][0]->renstra_tujuan_indikator_nilai_jenis, @$row['data'][0]->renstra_tujuan_indikator_nilai_json) }}
				</td>
				<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
					{{ toRupiah(@$row['dataPagu'][3]['realisasi_pagu']) }}</td>
				<td>
					{{ setTarget(@$row['data'][0]->renstra_tujuan_indikator_th4_realisasi_target, @$row['data'][0]->renstra_tujuan_indikator_nilai_jenis, @$row['data'][0]->renstra_tujuan_indikator_nilai_json) }}
				</td>
				<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
					{{ toRupiah(@$row['dataPagu'][4]['realisasi_pagu']) }}</td>
				<td>
					{{ setTarget(@$row['data'][0]->renstra_tujuan_indikator_th5_realisasi_target, @$row['data'][0]->renstra_tujuan_indikator_nilai_jenis, @$row['data'][0]->renstra_tujuan_indikator_nilai_json) }}
				</td>
				<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
					{{ toRupiah(@$row['dataPagu'][5]['realisasi_pagu']) }}</td>
				<td style="text-align: right;">
					{{ setCapaian(@$row['data'][0]->renstra_tujuan_indikator_th1_realisasi_target, @$row['data'][0]->renstra_tujuan_indikator_th1_target) }}%
				</td>
				<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
					{{ (@$row['dataPagu'][1]['capaian_pagu']) }}%</td>
				<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->renstra_tujuan_indikator_th1_realisasi_target, @$row['data'][0]->renstra_tujuan_indikator_th1_target)) }}</td> -->
				<td style="text-align: right;">
					{{ setCapaian(@$row['data'][0]->renstra_tujuan_indikator_th2_realisasi_target, @$row['data'][0]->renstra_tujuan_indikator_th2_target) }}%
				</td>
				<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
					{{ (@$row['dataPagu'][2]['capaian_pagu']) }}%</td>
				<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->renstra_tujuan_indikator_th2_realisasi_target, @$row['data'][0]->renstra_tujuan_indikator_th2_target)) }}</td> -->
				<td style="text-align: right;">
					{{ setCapaian(@$row['data'][0]->renstra_tujuan_indikator_th3_realisasi_target, @$row['data'][0]->renstra_tujuan_indikator_th3_target) }}%
				</td>
				<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
					{{ (@$row['dataPagu'][3]['capaian_pagu']) }}%</td>
				<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->renstra_tujuan_indikator_th3_realisasi_target, @$row['data'][0]->renstra_tujuan_indikator_th3_target)) }}</td> -->
				<td style="text-align: right;">
					{{ setCapaian(@$row['data'][0]->renstra_tujuan_indikator_th4_realisasi_target, @$row['data'][0]->renstra_tujuan_indikator_th4_target) }}%
				</td>
				<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
					{{ (@$row['dataPagu'][4]['capaian_pagu']) }}%</td>
				<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->renstra_tujuan_indikator_th4_realisasi_target, @$row['data'][0]->renstra_tujuan_indikator_th4_target)) }}</td> -->
				<td style="text-align: right;">
					{{ setCapaian(@$row['data'][0]->renstra_tujuan_indikator_th5_realisasi_target, @$row['data'][0]->renstra_tujuan_indikator_th5_target) }}%
				</td>
				<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
					{{ (@$row['dataPagu'][5]['capaian_pagu']) }}%</td>
				<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->renstra_tujuan_indikator_th5_realisasi_target, @$row['data'][0]->renstra_tujuan_indikator_th5_target)) }}</td> -->
			</tr>

			@for($idxIndikator = 1; $idxIndikator < count(@$row['data']); $idxIndikator++) <tr  class="row">
				<td>{{ @$row['data'][$idxIndikator]->renstra_tujuan_indikator_nama }}</td>
				<td>{{ @$row['data'][$idxIndikator]->renstra_tujuan_indikator_satuan }}</td>
				<td>
					{{ setTarget(@$row['data'][$idxIndikator]->renstra_tujuan_indikator_th0_realisasi_target, @$row['data'][$idxIndikator]->renstra_tujuan_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_tujuan_indikator_nilai_json) }}
				</td>
				<td>
					{{ setTarget(@$row['data'][$idxIndikator]->renstra_tujuan_indikator_th1_target, @$row['data'][$idxIndikator]->renstra_tujuan_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_tujuan_indikator_nilai_json) }}
				</td>
				<td>
					{{ setTarget(@$row['data'][$idxIndikator]->renstra_tujuan_indikator_th2_target, @$row['data'][$idxIndikator]->renstra_tujuan_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_tujuan_indikator_nilai_json) }}
				</td>
				<td>
					{{ setTarget(@$row['data'][$idxIndikator]->renstra_tujuan_indikator_th3_target, @$row['data'][$idxIndikator]->renstra_tujuan_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_tujuan_indikator_nilai_json) }}
				</td>
				<td>
					{{ setTarget(@$row['data'][$idxIndikator]->renstra_tujuan_indikator_th4_target, @$row['data'][$idxIndikator]->renstra_tujuan_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_tujuan_indikator_nilai_json) }}
				</td>
				<td>
					{{ setTarget(@$row['data'][$idxIndikator]->renstra_tujuan_indikator_th5_target, @$row['data'][$idxIndikator]->renstra_tujuan_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_tujuan_indikator_nilai_json) }}
				</td>
				<td>
					{{ setTarget(@$row['data'][$idxIndikator]->renstra_tujuan_indikator_th1_realisasi_target, @$row['data'][$idxIndikator]->renstra_tujuan_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_tujuan_indikator_nilai_json) }}
				</td>
				<td>
					{{ setTarget(@$row['data'][$idxIndikator]->renstra_tujuan_indikator_th2_realisasi_target, @$row['data'][$idxIndikator]->renstra_tujuan_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_tujuan_indikator_nilai_json) }}
				</td>
				<td>
					{{ setTarget(@$row['data'][$idxIndikator]->renstra_tujuan_indikator_th3_realisasi_target, @$row['data'][$idxIndikator]->renstra_tujuan_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_tujuan_indikator_nilai_json) }}
				</td>
				<td>
					{{ setTarget(@$row['data'][$idxIndikator]->renstra_tujuan_indikator_th4_realisasi_target, @$row['data'][$idxIndikator]->renstra_tujuan_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_tujuan_indikator_nilai_json) }}
				</td>
				<td>
					{{ setTarget(@$row['data'][$idxIndikator]->renstra_tujuan_indikator_th5_realisasi_target, @$row['data'][$idxIndikator]->renstra_tujuan_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_tujuan_indikator_nilai_json) }}
				</td>
				<td style="text-align: right;">
					{{ setCapaian(@$row['data'][$idxIndikator]->renstra_tujuan_indikator_th1_realisasi_target, @$row['data'][$idxIndikator]->renstra_tujuan_indikator_th1_target) }}%
				</td>
				<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->renstra_tujuan_indikator_th1_realisasi_target, @$row['data'][$idxIndikator]->renstra_tujuan_indikator_th1_target)) }}</td> -->
				<td style="text-align: right;">
					{{ setCapaian(@$row['data'][$idxIndikator]->renstra_tujuan_indikator_th2_realisasi_target, @$row['data'][$idxIndikator]->renstra_tujuan_indikator_th2_target) }}%
				</td>
				<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->renstra_tujuan_indikator_th2_realisasi_target, @$row['data'][$idxIndikator]->renstra_tujuan_indikator_th2_target)) }}</td> -->
				<td style="text-align: right;">
					{{ setCapaian(@$row['data'][$idxIndikator]->renstra_tujuan_indikator_th3_realisasi_target, @$row['data'][$idxIndikator]->renstra_tujuan_indikator_th3_target) }}%
				</td>
				<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->renstra_tujuan_indikator_th3_realisasi_target, @$row['data'][$idxIndikator]->renstra_tujuan_indikator_th3_target)) }}</td> -->
				<td style="text-align: right;">
					{{ setCapaian(@$row['data'][$idxIndikator]->renstra_tujuan_indikator_th4_realisasi_target, @$row['data'][$idxIndikator]->renstra_tujuan_indikator_th4_target) }}%
				</td>
				<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->renstra_tujuan_indikator_th4_realisasi_target, @$row['data'][$idxIndikator]->renstra_tujuan_indikator_th4_target)) }}</td> -->
				<td style="text-align: right;">
					{{ setCapaian(@$row['data'][$idxIndikator]->renstra_tujuan_indikator_th5_realisasi_target, @$row['data'][$idxIndikator]->renstra_tujuan_indikator_th5_target) }}%
				</td>
				<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->renstra_tujuan_indikator_th5_realisasi_target, @$row['data'][$idxIndikator]->renstra_tujuan_indikator_th5_target)) }}</td> -->
				</tr>
				@endfor
				@elseif($row['level'] == 2)
				<tr class="row">
					<td  colspan="2" style="border-right: 0px; border-left: 0px" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">Sasaran : {{ $row['uraian'] }}</td>
					<td>{{ @$row['data'][0]->renstra_sasaran_indikator_nama }}</td>
					<td>{{ @$row['data'][0]->renstra_sasaran_indikator_satuan }}</td>
					<td>
						{{ setTarget(@$row['data'][0]->renstra_sasaran_indikator_th0_realisasi_target, @$row['data'][0]->renstra_sasaran_indikator_nilai_jenis, @$row['data'][0]->renstra_sasaran_indikator_nilai_json) }}
					</td>
					<td>
						{{ setTarget(@$row['data'][0]->renstra_sasaran_indikator_th1_target, @$row['data'][0]->renstra_sasaran_indikator_nilai_jenis, @$row['data'][0]->renstra_sasaran_indikator_nilai_json) }}
					</td>
					<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
						{{ toRupiah(@$row['dataPagu'][1]['pagu']) }}</td>
					<td>
						{{ setTarget(@$row['data'][0]->renstra_sasaran_indikator_th2_target, @$row['data'][0]->renstra_sasaran_indikator_nilai_jenis, @$row['data'][0]->renstra_sasaran_indikator_nilai_json) }}
					</td>
					<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
						{{ toRupiah(@$row['dataPagu'][2]['pagu']) }}</td>
					<td>
						{{ setTarget(@$row['data'][0]->renstra_sasaran_indikator_th3_target, @$row['data'][0]->renstra_sasaran_indikator_nilai_jenis, @$row['data'][0]->renstra_sasaran_indikator_nilai_json) }}
					</td>
					<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
						{{ toRupiah(@$row['dataPagu'][3]['pagu']) }}</td>
					<td>
						{{ setTarget(@$row['data'][0]->renstra_sasaran_indikator_th4_target, @$row['data'][0]->renstra_sasaran_indikator_nilai_jenis, @$row['data'][0]->renstra_sasaran_indikator_nilai_json) }}
					</td>
					<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
						{{ toRupiah(@$row['dataPagu'][4]['pagu']) }}</td>
					<td>
						{{ setTarget(@$row['data'][0]->renstra_sasaran_indikator_th5_target, @$row['data'][0]->renstra_sasaran_indikator_nilai_jenis, @$row['data'][0]->renstra_sasaran_indikator_nilai_json) }}
					</td>
					<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
						{{ toRupiah(@$row['dataPagu'][5]['pagu']) }}</td>
					<td>
						{{ setTarget(@$row['data'][0]->renstra_sasaran_indikator_th1_realisasi_target, @$row['data'][0]->renstra_sasaran_indikator_nilai_jenis, @$row['data'][0]->renstra_sasaran_indikator_nilai_json) }}
					</td>
					<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
						{{ toRupiah(@$row['dataPagu'][1]['realisasi_pagu']) }}</td>
					<td>
						{{ setTarget(@$row['data'][0]->renstra_sasaran_indikator_th2_realisasi_target, @$row['data'][0]->renstra_sasaran_indikator_nilai_jenis, @$row['data'][0]->renstra_sasaran_indikator_nilai_json) }}
					</td>
					<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
						{{ toRupiah(@$row['dataPagu'][2]['realisasi_pagu']) }}</td>
					<td>
						{{ setTarget(@$row['data'][0]->renstra_sasaran_indikator_th3_realisasi_target, @$row['data'][0]->renstra_sasaran_indikator_nilai_jenis, @$row['data'][0]->renstra_sasaran_indikator_nilai_json) }}
					</td>
					<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
						{{ toRupiah(@$row['dataPagu'][3]['realisasi_pagu']) }}</td>
					<td>
						{{ setTarget(@$row['data'][0]->renstra_sasaran_indikator_th4_realisasi_target, @$row['data'][0]->renstra_sasaran_indikator_nilai_jenis, @$row['data'][0]->renstra_sasaran_indikator_nilai_json) }}
					</td>
					<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
						{{ toRupiah(@$row['dataPagu'][4]['realisasi_pagu']) }}</td>
					<td>
						{{ setTarget(@$row['data'][0]->renstra_sasaran_indikator_th5_realisasi_target, @$row['data'][0]->renstra_sasaran_indikator_nilai_jenis, @$row['data'][0]->renstra_sasaran_indikator_nilai_json) }}
					</td>
					<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
						{{ toRupiah(@$row['dataPagu'][5]['realisasi_pagu']) }}</td>
					<td style="text-align: right;">
						{{ setCapaian(@$row['data'][0]->renstra_sasaran_indikator_th1_realisasi_target, @$row['data'][0]->renstra_sasaran_indikator_th1_target) }}%
					</td>
					<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
						{{ (@$row['dataPagu'][1]['capaian_pagu']) }}%</td>
					<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->renstra_sasaran_indikator_th1_realisasi_target, @$row['data'][0]->renstra_sasaran_indikator_th1_target)) }}</td> -->
					<td style="text-align: right;">
						{{ setCapaian(@$row['data'][0]->renstra_sasaran_indikator_th2_realisasi_target, @$row['data'][0]->renstra_sasaran_indikator_th2_target) }}%
					</td>
					<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
						{{ (@$row['dataPagu'][2]['capaian_pagu']) }}%</td>
					<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->renstra_sasaran_indikator_th2_realisasi_target, @$row['data'][0]->renstra_sasaran_indikator_th2_target)) }}</td> -->
					<td style="text-align: right;">
						{{ setCapaian(@$row['data'][0]->renstra_sasaran_indikator_th3_realisasi_target, @$row['data'][0]->renstra_sasaran_indikator_th3_target) }}%
					</td>
					<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
						{{ (@$row['dataPagu'][3]['capaian_pagu']) }}%</td>
					<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->renstra_sasaran_indikator_th3_realisasi_target, @$row['data'][0]->renstra_sasaran_indikator_th3_target)) }}</td> -->
					<td style="text-align: right;">
						{{ setCapaian(@$row['data'][0]->renstra_sasaran_indikator_th4_realisasi_target, @$row['data'][0]->renstra_sasaran_indikator_th4_target) }}%
					</td>
					<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
						{{ (@$row['dataPagu'][4]['capaian_pagu']) }}%</td>
					<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->renstra_sasaran_indikator_th4_realisasi_target, @$row['data'][0]->renstra_sasaran_indikator_th4_target)) }}</td> -->
					<td style="text-align: right;">
						{{ setCapaian(@$row['data'][0]->renstra_sasaran_indikator_th5_realisasi_target, @$row['data'][0]->renstra_sasaran_indikator_th5_target) }}%
					</td>
					<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
						{{ (@$row['dataPagu'][5]['capaian_pagu']) }}%</td>
					<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->renstra_sasaran_indikator_th5_realisasi_target, @$row['data'][0]->renstra_sasaran_indikator_th5_target)) }}</td> -->
				</tr>

				@for($idxIndikator = 1; $idxIndikator < count(@$row['data']); $idxIndikator++) <tr class="row">
					<td>{{ @$row['data'][$idxIndikator]->renstra_sasaran_indikator_nama }}</td>
					<td>{{ @$row['data'][$idxIndikator]->renstra_sasaran_indikator_satuan }}</td>
					<td>
						{{ setTarget(@$row['data'][$idxIndikator]->renstra_sasaran_indikator_th0_realisasi_target, @$row['data'][$idxIndikator]->renstra_sasaran_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_sasaran_indikator_nilai_json) }}
					</td>
					<td>
						{{ setTarget(@$row['data'][$idxIndikator]->renstra_sasaran_indikator_th1_target, @$row['data'][$idxIndikator]->renstra_sasaran_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_sasaran_indikator_nilai_json) }}
					</td>
					<td>
						{{ setTarget(@$row['data'][$idxIndikator]->renstra_sasaran_indikator_th2_target, @$row['data'][$idxIndikator]->renstra_sasaran_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_sasaran_indikator_nilai_json) }}
					</td>
					<td>
						{{ setTarget(@$row['data'][$idxIndikator]->renstra_sasaran_indikator_th3_target, @$row['data'][$idxIndikator]->renstra_sasaran_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_sasaran_indikator_nilai_json) }}
					</td>
					<td>
						{{ setTarget(@$row['data'][$idxIndikator]->renstra_sasaran_indikator_th4_target, @$row['data'][$idxIndikator]->renstra_sasaran_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_sasaran_indikator_nilai_json) }}
					</td>
					<td>
						{{ setTarget(@$row['data'][$idxIndikator]->renstra_sasaran_indikator_th5_target, @$row['data'][$idxIndikator]->renstra_sasaran_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_sasaran_indikator_nilai_json) }}
					</td>
					<td>
						{{ setTarget(@$row['data'][$idxIndikator]->renstra_sasaran_indikator_th1_realisasi_target, @$row['data'][$idxIndikator]->renstra_sasaran_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_sasaran_indikator_nilai_json) }}
					</td>
					<td>
						{{ setTarget(@$row['data'][$idxIndikator]->renstra_sasaran_indikator_th2_realisasi_target, @$row['data'][$idxIndikator]->renstra_sasaran_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_sasaran_indikator_nilai_json) }}
					</td>
					<td>
						{{ setTarget(@$row['data'][$idxIndikator]->renstra_sasaran_indikator_th3_realisasi_target, @$row['data'][$idxIndikator]->renstra_sasaran_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_sasaran_indikator_nilai_json) }}
					</td>
					<td>
						{{ setTarget(@$row['data'][$idxIndikator]->renstra_sasaran_indikator_th4_realisasi_target, @$row['data'][$idxIndikator]->renstra_sasaran_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_sasaran_indikator_nilai_json) }}
					</td>
					<td>
						{{ setTarget(@$row['data'][$idxIndikator]->renstra_sasaran_indikator_th5_realisasi_target, @$row['data'][$idxIndikator]->renstra_sasaran_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_sasaran_indikator_nilai_json) }}
					</td>
					<td style="text-align: right;">
						{{ setCapaian(@$row['data'][$idxIndikator]->renstra_sasaran_indikator_th1_realisasi_target, @$row['data'][$idxIndikator]->renstra_sasaran_indikator_th1_target) }}%
					</td>
					<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->renstra_sasaran_indikator_th1_realisasi_target, @$row['data'][$idxIndikator]->renstra_sasaran_indikator_th1_target)) }}</td> -->
					<td style="text-align: right;">
						{{ setCapaian(@$row['data'][$idxIndikator]->renstra_sasaran_indikator_th2_realisasi_target, @$row['data'][$idxIndikator]->renstra_sasaran_indikator_th2_target) }}%
					</td>
					<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->renstra_sasaran_indikator_th2_realisasi_target, @$row['data'][$idxIndikator]->renstra_sasaran_indikator_th2_target)) }}</td> -->
					<td style="text-align: right;">
						{{ setCapaian(@$row['data'][$idxIndikator]->renstra_sasaran_indikator_th3_realisasi_target, @$row['data'][$idxIndikator]->renstra_sasaran_indikator_th3_target) }}%
					</td>
					<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->renstra_sasaran_indikator_th3_realisasi_target, @$row['data'][$idxIndikator]->renstra_sasaran_indikator_th3_target)) }}</td> -->
					<td style="text-align: right;">
						{{ setCapaian(@$row['data'][$idxIndikator]->renstra_sasaran_indikator_th4_realisasi_target, @$row['data'][$idxIndikator]->renstra_sasaran_indikator_th4_target) }}%
					</td>
					<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->renstra_sasaran_indikator_th4_realisasi_target, @$row['data'][$idxIndikator]->renstra_sasaran_indikator_th4_target)) }}</td> -->
					<td style="text-align: right;">
						{{ setCapaian(@$row['data'][$idxIndikator]->renstra_sasaran_indikator_th5_realisasi_target, @$row['data'][$idxIndikator]->renstra_sasaran_indikator_th5_target) }}%
					</td>
					<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->renstra_sasaran_indikator_th5_realisasi_target, @$row['data'][$idxIndikator]->renstra_sasaran_indikator_th5_target)) }}</td> -->
					</tr>
					@endfor
					@elseif($row['level'] == 3)
					<tr class="row">

					<td style="border-right: 0px" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ @$row['kode'] }}</td>
						<td style="border-right: 0px;"
							rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ $row['uraian'] }}</td>
						<td>{{ @$row['data'][0]->rpjmd_program_indikator_nama }}</td>
						<td>{{ @$row['data'][0]->rpjmd_program_indikator_satuan }}</td>
						<td>
							{{ setTarget(@$row['data'][0]->rpjmd_program_indikator_th0_realisasi_target, @$row['data'][0]->rpjmd_program_indikator_nilai_jenis, @$row['data'][0]->rpjmd_program_indikator_nilai_json) }}
						</td>
						<td>
							{{ setTarget(@$row['data'][0]->rpjmd_program_indikator_th1_target, @$row['data'][0]->rpjmd_program_indikator_nilai_jenis, @$row['data'][0]->rpjmd_program_indikator_nilai_json) }}
						</td>
						<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
							{{ toRupiah(@$row['dataPagu'][1]['pagu']) }}</td>
						<td>
							{{ setTarget(@$row['data'][0]->rpjmd_program_indikator_th2_target, @$row['data'][0]->rpjmd_program_indikator_nilai_jenis, @$row['data'][0]->rpjmd_program_indikator_nilai_json) }}
						</td>
						<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
							{{ toRupiah(@$row['dataPagu'][2]['pagu']) }}</td>
						<td>
							{{ setTarget(@$row['data'][0]->rpjmd_program_indikator_th3_target, @$row['data'][0]->rpjmd_program_indikator_nilai_jenis, @$row['data'][0]->rpjmd_program_indikator_nilai_json) }}
						</td>
						<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
							{{ toRupiah(@$row['dataPagu'][3]['pagu']) }}</td>
						<td>
							{{ setTarget(@$row['data'][0]->rpjmd_program_indikator_th4_target, @$row['data'][0]->rpjmd_program_indikator_nilai_jenis, @$row['data'][0]->rpjmd_program_indikator_nilai_json) }}
						</td>
						<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
							{{ toRupiah(@$row['dataPagu'][4]['pagu']) }}</td>
						<td>
							{{ setTarget(@$row['data'][0]->rpjmd_program_indikator_th5_target, @$row['data'][0]->rpjmd_program_indikator_nilai_jenis, @$row['data'][0]->rpjmd_program_indikator_nilai_json) }}
						</td>
						<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
							{{ toRupiah(@$row['dataPagu'][5]['pagu']) }}</td>
						<td>
							{{ setTarget(@$row['data'][0]->rpjmd_program_indikator_th1_realisasi_target, @$row['data'][0]->rpjmd_program_indikator_nilai_jenis, @$row['data'][0]->rpjmd_program_indikator_nilai_json) }}
						</td>
						<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
							{{ toRupiah(@$row['dataPagu'][1]['realisasi_pagu']) }}</td>
						<td>
							{{ setTarget(@$row['data'][0]->rpjmd_program_indikator_th2_realisasi_target, @$row['data'][0]->rpjmd_program_indikator_nilai_jenis, @$row['data'][0]->rpjmd_program_indikator_nilai_json) }}
						</td>
						<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
							{{ toRupiah(@$row['dataPagu'][2]['realisasi_pagu']) }}</td>
						<td>
							{{ setTarget(@$row['data'][0]->rpjmd_program_indikator_th3_realisasi_target, @$row['data'][0]->rpjmd_program_indikator_nilai_jenis, @$row['data'][0]->rpjmd_program_indikator_nilai_json) }}
						</td>
						<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
							{{ toRupiah(@$row['dataPagu'][3]['realisasi_pagu']) }}</td>
						<td>
							{{ setTarget(@$row['data'][0]->rpjmd_program_indikator_th4_realisasi_target, @$row['data'][0]->rpjmd_program_indikator_nilai_jenis, @$row['data'][0]->rpjmd_program_indikator_nilai_json) }}
						</td>
						<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
							{{ toRupiah(@$row['dataPagu'][4]['realisasi_pagu']) }}</td>
						<td>
							{{ setTarget(@$row['data'][0]->rpjmd_program_indikator_th5_realisasi_target, @$row['data'][0]->rpjmd_program_indikator_nilai_jenis, @$row['data'][0]->rpjmd_program_indikator_nilai_json) }}
						</td>
						<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
							{{ toRupiah(@$row['dataPagu'][5]['realisasi_pagu']) }}</td>
						<td style="text-align: right;">
							{{ setCapaian(@$row['data'][0]->rpjmd_program_indikator_th1_realisasi_target, @$row['data'][0]->rpjmd_program_indikator_th1_target) }}%
						</td>
						<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
							{{ (@$row['dataPagu'][1]['capaian_pagu']) }}%</td>
						<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->rpjmd_program_indikator_th1_realisasi_target, @$row['data'][0]->rpjmd_program_indikator_th1_target)) }}</td> -->
						<td style="text-align: right;">
							{{ setCapaian(@$row['data'][0]->rpjmd_program_indikator_th2_realisasi_target, @$row['data'][0]->rpjmd_program_indikator_th2_target) }}%
						</td>
						<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
							{{ (@$row['dataPagu'][2]['capaian_pagu']) }}%</td>
						<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->rpjmd_program_indikator_th2_realisasi_target, @$row['data'][0]->rpjmd_program_indikator_th2_target)) }}</td> -->
						<td style="text-align: right;">
							{{ setCapaian(@$row['data'][0]->rpjmd_program_indikator_th3_realisasi_target, @$row['data'][0]->rpjmd_program_indikator_th3_target) }}%
						</td>
						<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
							{{ (@$row['dataPagu'][3]['capaian_pagu']) }}%</td>
						<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->rpjmd_program_indikator_th3_realisasi_target, @$row['data'][0]->rpjmd_program_indikator_th3_target)) }}</td> -->
						<td style="text-align: right;">
							{{ setCapaian(@$row['data'][0]->rpjmd_program_indikator_th4_realisasi_target, @$row['data'][0]->rpjmd_program_indikator_th4_target) }}%
						</td>
						<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
							{{ (@$row['dataPagu'][4]['capaian_pagu']) }}%</td>
						<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->rpjmd_program_indikator_th4_realisasi_target, @$row['data'][0]->rpjmd_program_indikator_th4_target)) }}</td> -->
						<td style="text-align: right;">
							{{ setCapaian(@$row['data'][0]->rpjmd_program_indikator_th5_realisasi_target, @$row['data'][0]->rpjmd_program_indikator_th5_target) }}%
						</td>
						<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
							{{ (@$row['dataPagu'][5]['capaian_pagu']) }}%</td>
						<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->rpjmd_program_indikator_th5_realisasi_target, @$row['data'][0]->rpjmd_program_indikator_th5_target)) }}</td> -->
					</tr>
					@for($idxIndikator = 1; $idxIndikator < count(@$row['data']); $idxIndikator++) <tr class="row">
						<td>{{ @$row['data'][$idxIndikator]->rpjmd_program_indikator_nama }}</td>
						<td>{{ @$row['data'][$idxIndikator]->rpjmd_program_indikator_satuan }}</td>
						<td>
							{{ setTarget(@$row['data'][$idxIndikator]->rpjmd_program_indikator_th0_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_program_indikator_nilai_jenis, @$row['data'][$idxIndikator]->rpjmd_program_indikator_nilai_json) }}
						</td>
						<td>
							{{ setTarget(@$row['data'][$idxIndikator]->rpjmd_program_indikator_th1_target, @$row['data'][$idxIndikator]->rpjmd_program_indikator_nilai_jenis, @$row['data'][$idxIndikator]->rpjmd_program_indikator_nilai_json) }}
						</td>
						<td>
							{{ setTarget(@$row['data'][$idxIndikator]->rpjmd_program_indikator_th2_target, @$row['data'][$idxIndikator]->rpjmd_program_indikator_nilai_jenis, @$row['data'][$idxIndikator]->rpjmd_program_indikator_nilai_json) }}
						</td>
						<td>
							{{ setTarget(@$row['data'][$idxIndikator]->rpjmd_program_indikator_th3_target, @$row['data'][$idxIndikator]->rpjmd_program_indikator_nilai_jenis, @$row['data'][$idxIndikator]->rpjmd_program_indikator_nilai_json) }}
						</td>
						<td>
							{{ setTarget(@$row['data'][$idxIndikator]->rpjmd_program_indikator_th4_target, @$row['data'][$idxIndikator]->rpjmd_program_indikator_nilai_jenis, @$row['data'][$idxIndikator]->rpjmd_program_indikator_nilai_json) }}
						</td>
						<td>
							{{ setTarget(@$row['data'][$idxIndikator]->rpjmd_program_indikator_th5_target, @$row['data'][$idxIndikator]->rpjmd_program_indikator_nilai_jenis, @$row['data'][$idxIndikator]->rpjmd_program_indikator_nilai_json) }}
						</td>
						<td>
							{{ setTarget(@$row['data'][$idxIndikator]->rpjmd_program_indikator_th1_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_program_indikator_nilai_jenis, @$row['data'][$idxIndikator]->rpjmd_program_indikator_nilai_json) }}
						</td>
						<td>
							{{ setTarget(@$row['data'][$idxIndikator]->rpjmd_program_indikator_th2_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_program_indikator_nilai_jenis, @$row['data'][$idxIndikator]->rpjmd_program_indikator_nilai_json) }}
						</td>
						<td>
							{{ setTarget(@$row['data'][$idxIndikator]->rpjmd_program_indikator_th3_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_program_indikator_nilai_jenis, @$row['data'][$idxIndikator]->rpjmd_program_indikator_nilai_json) }}
						</td>
						<td>
							{{ setTarget(@$row['data'][$idxIndikator]->rpjmd_program_indikator_th4_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_program_indikator_nilai_jenis, @$row['data'][$idxIndikator]->rpjmd_program_indikator_nilai_json) }}
						</td>
						<td>
							{{ setTarget(@$row['data'][$idxIndikator]->rpjmd_program_indikator_th5_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_program_indikator_nilai_jenis, @$row['data'][$idxIndikator]->rpjmd_program_indikator_nilai_json) }}
						</td>
						<td style="text-align: right;">
							{{ setCapaian(@$row['data'][$idxIndikator]->rpjmd_program_indikator_th1_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_program_indikator_th1_target) }}%
						</td>
						<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->rpjmd_program_indikator_th1_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_program_indikator_th1_target)) }}</td> -->
						<td style="text-align: right;">
							{{ setCapaian(@$row['data'][$idxIndikator]->rpjmd_program_indikator_th2_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_program_indikator_th2_target) }}%
						</td>
						<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->rpjmd_program_indikator_th2_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_program_indikator_th2_target)) }}</td> -->
						<td style="text-align: right;">
							{{ setCapaian(@$row['data'][$idxIndikator]->rpjmd_program_indikator_th3_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_program_indikator_th3_target) }}%
						</td>
						<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->rpjmd_program_indikator_th3_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_program_indikator_th3_target)) }}</td> -->
						<td style="text-align: right;">
							{{ setCapaian(@$row['data'][$idxIndikator]->rpjmd_program_indikator_th4_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_program_indikator_th4_target) }}%
						</td>
						<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->rpjmd_program_indikator_th4_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_program_indikator_th4_target)) }}</td> -->
						<td style="text-align: right;">
							{{ setCapaian(@$row['data'][$idxIndikator]->rpjmd_program_indikator_th5_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_program_indikator_th5_target) }}%
						</td>
						<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->rpjmd_program_indikator_th5_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_program_indikator_th5_target)) }}</td> -->
						</tr>
						@endfor

						@elseif($row['level'] == 4)
						<tr>
							<td style="border-right: 0px" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ @$row['kode'] }}</td>
							<td style="border-right: 0px;"
								rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ $row['uraian'] }}</td>
							<td>{{ @$row['data'][0]->renstra_kegiatan_indikator_nama }}</td>
							<td>{{ @$row['data'][0]->renstra_kegiatan_indikator_satuan }}</td>
							<td>
								{{ setTarget(@$row['data'][0]->renstra_kegiatan_indikator_th0_realisasi_target, @$row['data'][0]->renstra_kegiatan_indikator_nilai_jenis, @$row['data'][0]->renstra_kegiatan_indikator_nilai_json) }}
							</td>
							<td>
								{{ setTarget(@$row['data'][0]->renstra_kegiatan_indikator_th1_target, @$row['data'][0]->renstra_kegiatan_indikator_nilai_jenis, @$row['data'][0]->renstra_kegiatan_indikator_nilai_json) }}
							</td>
							<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
								{{ toRupiah(@$row['dataPagu'][1]['pagu']) }}</td>
							<td>
								{{ setTarget(@$row['data'][0]->renstra_kegiatan_indikator_th2_target, @$row['data'][0]->renstra_kegiatan_indikator_nilai_jenis, @$row['data'][0]->renstra_kegiatan_indikator_nilai_json) }}
							</td>
							<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
								{{ toRupiah(@$row['dataPagu'][2]['pagu']) }}</td>
							<td>
								{{ setTarget(@$row['data'][0]->renstra_kegiatan_indikator_th3_target, @$row['data'][0]->renstra_kegiatan_indikator_nilai_jenis, @$row['data'][0]->renstra_kegiatan_indikator_nilai_json) }}
							</td>
							<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
								{{ toRupiah(@$row['dataPagu'][3]['pagu']) }}</td>
							<td>
								{{ setTarget(@$row['data'][0]->renstra_kegiatan_indikator_th4_target, @$row['data'][0]->renstra_kegiatan_indikator_nilai_jenis, @$row['data'][0]->renstra_kegiatan_indikator_nilai_json) }}
							</td>
							<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
								{{ toRupiah(@$row['dataPagu'][4]['pagu']) }}</td>
							<td>
								{{ setTarget(@$row['data'][0]->renstra_kegiatan_indikator_th5_target, @$row['data'][0]->renstra_kegiatan_indikator_nilai_jenis, @$row['data'][0]->renstra_kegiatan_indikator_nilai_json) }}
							</td>
							<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
								{{ toRupiah(@$row['dataPagu'][5]['pagu']) }}</td>
							<td>
								{{ setTarget(@$row['data'][0]->renstra_kegiatan_indikator_th1_realisasi_target, @$row['data'][0]->renstra_kegiatan_indikator_nilai_jenis, @$row['data'][0]->renstra_kegiatan_indikator_nilai_json) }}
							</td>
							<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
								{{ toRupiah(@$row['dataPagu'][1]['realisasi_pagu']) }}</td>
							<td>
								{{ setTarget(@$row['data'][0]->renstra_kegiatan_indikator_th2_realisasi_target, @$row['data'][0]->renstra_kegiatan_indikator_nilai_jenis, @$row['data'][0]->renstra_kegiatan_indikator_nilai_json) }}
							</td>
							<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
								{{ toRupiah(@$row['dataPagu'][2]['realisasi_pagu']) }}</td>
							<td style="{{ (@$row['dataStatus'][3]['sub_kegiatan_indikator'])>0?'':'background-color: '.$clNoSubKegiatan }}">
								{{ setTarget(@$row['data'][0]->renstra_kegiatan_indikator_th3_realisasi_target, @$row['data'][0]->renstra_kegiatan_indikator_nilai_jenis, @$row['data'][0]->renstra_kegiatan_indikator_nilai_json) }}
							</td>
							<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
								{{ toRupiah(@$row['dataPagu'][3]['realisasi_pagu']) }}</td>
							<td style="{{ (@$row['dataStatus'][4]['sub_kegiatan_indikator'])>0?'':'background-color: '.$clNoSubKegiatan }}">
								{{ setTarget(@$row['data'][0]->renstra_kegiatan_indikator_th4_realisasi_target, @$row['data'][0]->renstra_kegiatan_indikator_nilai_jenis, @$row['data'][0]->renstra_kegiatan_indikator_nilai_json) }}
							</td>
							<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
								{{ toRupiah(@$row['dataPagu'][4]['realisasi_pagu']) }}</td>
							<td style="{{ (@$row['dataStatus'][5]['sub_kegiatan_indikator'])>0?'':'background-color: '.$clNoSubKegiatan }}">
								{{ setTarget(@$row['data'][0]->renstra_kegiatan_indikator_th5_realisasi_target, @$row['data'][0]->renstra_kegiatan_indikator_nilai_jenis, @$row['data'][0]->renstra_kegiatan_indikator_nilai_json) }}
							</td>
							<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
								{{ toRupiah(@$row['dataPagu'][5]['realisasi_pagu']) }}</td>
							<td style="text-align: right;">
								{{ setCapaian(@$row['data'][0]->renstra_kegiatan_indikator_th1_realisasi_target, @$row['data'][0]->renstra_kegiatan_indikator_th1_target) }}%
							</td>
							<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
								{{ (@$row['dataPagu'][1]['capaian_pagu']) }}%</td>
							<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->renstra_kegiatan_indikator_th1_realisasi_target, @$row['data'][0]->renstra_kegiatan_indikator_th1_target)) }}</td> -->
							<td style="text-align: right;">
								{{ setCapaian(@$row['data'][0]->renstra_kegiatan_indikator_th2_realisasi_target, @$row['data'][0]->renstra_kegiatan_indikator_th2_target) }}%
							</td>
							<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
								{{ (@$row['dataPagu'][2]['capaian_pagu']) }}%</td>
							<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->renstra_kegiatan_indikator_th2_realisasi_target, @$row['data'][0]->renstra_kegiatan_indikator_th2_target)) }}</td> -->
							<td style="text-align: right;">
								{{ setCapaian(@$row['data'][0]->renstra_kegiatan_indikator_th3_realisasi_target, @$row['data'][0]->renstra_kegiatan_indikator_th3_target) }}%
							</td>
							<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
								{{ (@$row['dataPagu'][3]['capaian_pagu']) }}%</td>
							<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->renstra_kegiatan_indikator_th3_realisasi_target, @$row['data'][0]->renstra_kegiatan_indikator_th3_target)) }}</td> -->
							<td style="text-align: right;">
								{{ setCapaian(@$row['data'][0]->renstra_kegiatan_indikator_th4_realisasi_target, @$row['data'][0]->renstra_kegiatan_indikator_th4_target) }}%
							</td>
							<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
								{{ (@$row['dataPagu'][4]['capaian_pagu']) }}%</td>
							<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->renstra_kegiatan_indikator_th4_realisasi_target, @$row['data'][0]->renstra_kegiatan_indikator_th4_target)) }}</td> -->
							<td style="text-align: right;">
								{{ setCapaian(@$row['data'][0]->renstra_kegiatan_indikator_th5_realisasi_target, @$row['data'][0]->renstra_kegiatan_indikator_th5_target) }}%
							</td>
							<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
								{{ (@$row['dataPagu'][5]['capaian_pagu']) }}%</td>
							<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->renstra_kegiatan_indikator_th5_realisasi_target, @$row['data'][0]->renstra_kegiatan_indikator_th5_target)) }}</td> -->
						</tr>
						@for($idxIndikator = 1; $idxIndikator < count(@$row['data']); $idxIndikator++) <tr>
							<td>{{ @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_nama }}</td>
							<td>{{ @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_satuan }}</td>
							<td>
								{{ setTarget(@$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th0_realisasi_target, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_nilai_json) }}
							</td>
							<td>
								{{ setTarget(@$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th1_target, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_nilai_json) }}
							</td>
							<td>
								{{ setTarget(@$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th2_target, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_nilai_json) }}
							</td>
							<td>
								{{ setTarget(@$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th3_target, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_nilai_json) }}
							</td>
							<td>
								{{ setTarget(@$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th4_target, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_nilai_json) }}
							</td>
							<td>
								{{ setTarget(@$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th5_target, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_nilai_json) }}
							</td>
							<td>
								{{ setTarget(@$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th1_realisasi_target, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_nilai_json) }}
							</td>
							<td>
								{{ setTarget(@$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th2_realisasi_target, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_nilai_json) }}
							</td>
							<td style="{{ (@$row['dataStatus'][3]['sub_kegiatan_indikator'])>0?'':'background-color: '.$clNoSubKegiatan }}">
								{{ setTarget(@$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th3_realisasi_target, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_nilai_json) }}
							</td>
							<td style="{{ (@$row['dataStatus'][4]['sub_kegiatan_indikator'])>0?'':'background-color: '.$clNoSubKegiatan }}">
								{{ setTarget(@$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th4_realisasi_target, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_nilai_json) }}
							</td>
							<td style="{{ (@$row['dataStatus'][5]['sub_kegiatan_indikator'])>0?'':'background-color: '.$clNoSubKegiatan }}">
								{{ setTarget(@$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th5_realisasi_target, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_nilai_json) }}
							</td>
							<td style="text-align: right;">
								{{ setCapaian(@$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th1_realisasi_target, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th1_target) }}%
							</td>
							<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th1_realisasi_target, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th1_target)) }}</td> -->
							<td style="text-align: right;">
								{{ setCapaian(@$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th2_realisasi_target, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th2_target) }}%
							</td>
							<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th2_realisasi_target, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th2_target)) }}</td> -->
							<td style="text-align: right;">
								{{ setCapaian(@$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th3_realisasi_target, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th3_target) }}%
							</td>
							<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th3_realisasi_target, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th3_target)) }}</td> -->
							<td style="text-align: right;">
								{{ setCapaian(@$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th4_realisasi_target, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th4_target) }}%
							</td>
							<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th4_realisasi_target, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th4_target)) }}</td> -->
							<td style="text-align: right;">
								{{ setCapaian(@$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th5_realisasi_target, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th5_target) }}%
							</td>
							<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th5_realisasi_target, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th5_target)) }}</td> -->
							</tr>
							@endfor

							@elseif($row['level'] == 5)
							<tr>
								<td style="border-right: 0px" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}"></td>
								<td style="border-right: 0px; border-left: 0px"
									rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ $row['uraian'] }}</td>
								<td>{{ @$row['data'][0]->renstra_sub_kegiatan_indikator_nama }}</td>
								<td>{{ @$row['data'][0]->renstra_sub_kegiatan_indikator_satuan }}</td>
								<td>
									{{ setTarget(@$row['data'][0]->renstra_sub_kegiatan_indikator_th0_realisasi_target, @$row['data'][0]->renstra_sub_kegiatan_indikator_nilai_jenis, @$row['data'][0]->renstra_sub_kegiatan_indikator_nilai_json) }}
								</td>
								<td>
									{{ setTarget(@$row['data'][0]->renstra_sub_kegiatan_indikator_th1_target, @$row['data'][0]->renstra_sub_kegiatan_indikator_nilai_jenis, @$row['data'][0]->renstra_sub_kegiatan_indikator_nilai_json) }}
								</td>
								<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
									{{ toRupiah(@$row['dataPagu'][1]['pagu']) }}</td>
								<td>
									{{ setTarget(@$row['data'][0]->renstra_sub_kegiatan_indikator_th2_target, @$row['data'][0]->renstra_sub_kegiatan_indikator_nilai_jenis, @$row['data'][0]->renstra_sub_kegiatan_indikator_nilai_json) }}
								</td>
								<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
									{{ toRupiah(@$row['dataPagu'][2]['pagu']) }}</td>
								<td>
									{{ setTarget(@$row['data'][0]->renstra_sub_kegiatan_indikator_th3_target, @$row['data'][0]->renstra_sub_kegiatan_indikator_nilai_jenis, @$row['data'][0]->renstra_sub_kegiatan_indikator_nilai_json) }}
								</td>
								<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
									{{ toRupiah(@$row['dataPagu'][3]['pagu']) }}</td>
								<td>
									{{ setTarget(@$row['data'][0]->renstra_sub_kegiatan_indikator_th4_target, @$row['data'][0]->renstra_sub_kegiatan_indikator_nilai_jenis, @$row['data'][0]->renstra_sub_kegiatan_indikator_nilai_json) }}
								</td>
								<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
									{{ toRupiah(@$row['dataPagu'][4]['pagu']) }}</td>
								<td>
									{{ setTarget(@$row['data'][0]->renstra_sub_kegiatan_indikator_th5_target, @$row['data'][0]->renstra_sub_kegiatan_indikator_nilai_jenis, @$row['data'][0]->renstra_sub_kegiatan_indikator_nilai_json) }}
								</td>
								<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
									{{ toRupiah(@$row['dataPagu'][5]['pagu']) }}</td>
								<td>
									{{ setTarget(@$row['dataPagu'][1]['target'], @$row['data'][0]->renstra_sub_kegiatan_indikator_nilai_jenis, @$row['data'][0]->renstra_sub_kegiatan_indikator_nilai_json) }}
								</td>
								<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
									{{ toRupiah(@$row['dataPagu'][1]['realisasi_pagu']) }}</td>
								<td>
									{{ setTarget(@$row['dataPagu'][2]['target'], @$row['data'][0]->renstra_sub_kegiatan_indikator_nilai_jenis, @$row['data'][0]->renstra_sub_kegiatan_indikator_nilai_json) }}
								</td>
								<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
									{{ toRupiah(@$row['dataPagu'][2]['realisasi_pagu']) }}</td>
								<td>
									{{ setTarget(@$row['dataPagu'][3]['target'], @$row['data'][0]->renstra_sub_kegiatan_indikator_nilai_jenis, @$row['data'][0]->renstra_sub_kegiatan_indikator_nilai_json) }}
								</td>
								<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
									{{ toRupiah(@$row['dataPagu'][3]['realisasi_pagu']) }}</td>
								<td>
									{{ setTarget(@$row['dataPagu'][4]['target'], @$row['data'][0]->renstra_sub_kegiatan_indikator_nilai_jenis, @$row['data'][0]->renstra_sub_kegiatan_indikator_nilai_json) }}
								</td>
								<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
									{{ toRupiah(@$row['dataPagu'][4]['realisasi_pagu']) }}</td>
								<td>
									{{ setTarget(@$row['dataPagu'][5]['target'], @$row['data'][0]->renstra_sub_kegiatan_indikator_nilai_jenis, @$row['data'][0]->renstra_sub_kegiatan_indikator_nilai_json) }}
								</td>
								<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
									{{ toRupiah(@$row['dataPagu'][5]['realisasi_pagu']) }}</td>
								<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
									{{ @$row['dataPagu'][1]['capaian_target'] }}%</td>
								<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
									{{ (@$row['dataPagu'][1]['capaian_pagu']) }}%</td>
								<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->renstra_sub_kegiatan_indikator_th1_realisasi_target, @$row['data'][0]->renstra_sub_kegiatan_indikator_th1_target)) }}</td> -->
								<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
									{{ @$row['dataPagu'][2]['capaian_target'] }}%</td>
								<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
									{{ (@$row['dataPagu'][2]['capaian_pagu']) }}%</td>
								<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->renstra_sub_kegiatan_indikator_th2_realisasi_target, @$row['data'][0]->renstra_sub_kegiatan_indikator_th2_target)) }}</td> -->
								<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
									{{ @$row['dataPagu'][3]['capaian_target'] }}%</td>
								<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
									{{ (@$row['dataPagu'][3]['capaian_pagu']) }}%</td>
								<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->renstra_sub_kegiatan_indikator_th3_realisasi_target, @$row['data'][0]->renstra_sub_kegiatan_indikator_th3_target)) }}</td> -->
								<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
									{{ @$row['dataPagu'][4]['capaian_target'] }}%</td>
								<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
									{{ (@$row['dataPagu'][4]['capaian_pagu']) }}%</td>
								<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->renstra_sub_kegiatan_indikator_th4_realisasi_target, @$row['data'][0]->renstra_sub_kegiatan_indikator_th4_target)) }}</td> -->
								<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
									{{ @$row['dataPagu'][5]['capaian_target'] }}%</td>
								<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
									{{ (@$row['dataPagu'][5]['capaian_pagu']) }}%</td>
								<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->renstra_sub_kegiatan_indikator_th5_realisasi_target, @$row['data'][0]->renstra_sub_kegiatan_indikator_th5_target)) }}</td> -->
							</tr>
							@for($idxIndikator = 1; $idxIndikator < count(@$row['data']); $idxIndikator++) <tr>
								<td>{{ @$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_nama }}</td>
								<td>{{ @$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_satuan }}</td>
								<td>
									{{ setTarget(@$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_th0_realisasi_target, @$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_nilai_json) }}
								</td>
								<td>
									{{ setTarget(@$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_th1_target, @$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_nilai_json) }}
								</td>
								<td>
									{{ setTarget(@$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_th2_target, @$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_nilai_json) }}
								</td>
								<td>
									{{ setTarget(@$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_th3_target, @$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_nilai_json) }}
								</td>
								<td>
									{{ setTarget(@$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_th4_target, @$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_nilai_json) }}
								</td>
								<td>
									{{ setTarget(@$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_th5_target, @$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_nilai_json) }}
								</td>
								<td>
									{{ setTarget(@$row['dataPagu'][1]['target'], @$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_nilai_json) }}
								</td>
								<td>
									{{ setTarget(@$row['dataPagu'][2]['target'], @$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_nilai_json) }}
								</td>
								<td>
									{{ setTarget(@$row['dataPagu'][3]['target'], @$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_nilai_json) }}
								</td>
								<td>
									{{ setTarget(@$row['dataPagu'][4]['target'], @$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_nilai_json) }}
								</td>
								<td>
									{{ setTarget(@$row['dataPagu'][5]['target'], @$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_nilai_json) }}
								</td>
								<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_th1_realisasi_target, @$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_th1_target) }}%</td> -->
								<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_th1_realisasi_target, @$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_th1_target)) }}</td> -->
								<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_th2_realisasi_target, @$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_th2_target) }}%</td> -->
								<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_th2_realisasi_target, @$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_th2_target)) }}</td> -->
								<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_th3_realisasi_target, @$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_th3_target) }}%</td> -->
								<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_th3_realisasi_target, @$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_th3_target)) }}</td> -->
								<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_th4_realisasi_target, @$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_th4_target) }}%</td> -->
								<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_th4_realisasi_target, @$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_th4_target)) }}</td> -->
								<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_th5_realisasi_target, @$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_th5_target) }}%</td> -->
								<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_th5_realisasi_target, @$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_th5_target)) }}</td> -->
								</tr>
								@endfor
								@endif
								@endforeach
								<tr>
									<td colspan="6"></td>
									<td style="text-align: right;"><strong>{{ toRupiah(@$dataTotal['target'][1]['pagu']) }}</strong></td>
									<td></td>
									<td style="text-align: right;"><strong>{{ toRupiah(@$dataTotal['target'][2]['pagu']) }}</strong></td>
									<td></td>
									<td style="text-align: right;"><strong>{{ toRupiah(@$dataTotal['target'][3]['pagu']) }}</strong></td>
									<td></td>
									<td style="text-align: right;"><strong>{{ toRupiah(@$dataTotal['target'][4]['pagu']) }}</strong></td>
									<td></td>
									<td style="text-align: right;"><strong>{{ toRupiah(@$dataTotal['target'][5]['pagu']) }}</strong></td>
									<td></td>
									<td style="text-align: right;"><strong>{{ toRupiah(@$dataTotal['realisasi'][1]['pagu']) }}</strong>
									</td>
									<td></td>
									<td style="text-align: right;"><strong>{{ toRupiah(@$dataTotal['realisasi'][2]['pagu']) }}</strong>
									</td>
									<td></td>
									<td style="text-align: right;"><strong>{{ toRupiah(@$dataTotal['realisasi'][3]['pagu']) }}</strong>
									</td>
									<td></td>
									<td style="text-align: right;"><strong>{{ toRupiah(@$dataTotal['realisasi'][4]['pagu']) }}</strong>
									</td>
									<td></td>
									<td style="text-align: right;"><strong>{{ toRupiah(@$dataTotal['realisasi'][5]['pagu']) }}</strong>
									</td>
									<td colspan="10"></td>
								</tr>
		</tbody>
	</table>

	<br>
	@if(@$_GET['status'] == 1)
	<span>Note : </span>
	<ul>
		<li> <span style="background-color: {{ $clNoSubKegiatan }};padding: 5px;">Kegiatan yang tidak memiliki Sub kegiatan di renja</span> </li>
	</ul>
	@endif

</body>

</html>