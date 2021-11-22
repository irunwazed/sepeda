<!DOCTYPE html>
<html lang="en">
<?php

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

?>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Rapor Kinerja</title>
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
	</style>
</head>

<body>


	<center>
		<h2>Rapor Kinerja</h2>
	</center>
	<br>
	<table class="my-table">
		<thead>
			<tr>
				<!-- <th rowspan="2">No</th> -->
				<th rowspan="2" colspan="6">Uraian</th>
				<th rowspan="2">Indikator</th>
				<th colspan="5">Predikat</th>
			</tr>
			<tr>
				<th>{{ session('rpjmd_tahun') }}</th>
				<th>{{ session('rpjmd_tahun')+1 }}</th>
				<th>{{ session('rpjmd_tahun')+2 }}</th>
				<th>{{ session('rpjmd_tahun')+3 }}</th>
				<th>{{ session('rpjmd_tahun')+4 }}</th>
			</tr>
		</thead>
		<tbody>
			@foreach($dataAll as $row)
				@if($row['level'] == 1)
				<tr>
						<td rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}" colspan="6">{{ $row['uraian'] }}</td>
						<td>{{ @$row['data'][0]->rpjmd_tujuan_indikator_nama }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][0]->rpjmd_tujuan_indikator_th1_realisasi_target, @$row['data'][0]->rpjmd_tujuan_indikator_th1_target) }}%</td> -->
						<!-- <td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ (@$row['dataPagu'][1]['capaian_pagu']) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->rpjmd_tujuan_indikator_th1_realisasi_target, @$row['data'][0]->rpjmd_tujuan_indikator_th1_target)) }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][0]->rpjmd_tujuan_indikator_th2_realisasi_target, @$row['data'][0]->rpjmd_tujuan_indikator_th2_target) }}%</td> -->
						<!-- <td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ (@$row['dataPagu'][2]['capaian_pagu']) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->rpjmd_tujuan_indikator_th2_realisasi_target, @$row['data'][0]->rpjmd_tujuan_indikator_th2_target)) }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][0]->rpjmd_tujuan_indikator_th3_realisasi_target, @$row['data'][0]->rpjmd_tujuan_indikator_th3_target) }}%</td> -->
						<!-- <td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ (@$row['dataPagu'][3]['capaian_pagu']) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->rpjmd_tujuan_indikator_th3_realisasi_target, @$row['data'][0]->rpjmd_tujuan_indikator_th3_target)) }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][0]->rpjmd_tujuan_indikator_th4_realisasi_target, @$row['data'][0]->rpjmd_tujuan_indikator_th4_target) }}%</td> -->
						<!-- <td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ (@$row['dataPagu'][4]['capaian_pagu']) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->rpjmd_tujuan_indikator_th4_realisasi_target, @$row['data'][0]->rpjmd_tujuan_indikator_th4_target)) }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][0]->rpjmd_tujuan_indikator_th5_realisasi_target, @$row['data'][0]->rpjmd_tujuan_indikator_th5_target) }}%</td> -->
						<!-- <td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ (@$row['dataPagu'][5]['capaian_pagu']) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->rpjmd_tujuan_indikator_th5_realisasi_target, @$row['data'][0]->rpjmd_tujuan_indikator_th5_target)) }}</td>
					</tr>

					@for($idxIndikator = 1; $idxIndikator < count(@$row['data']); $idxIndikator++)
					<tr>
						<td>{{ @$row['data'][$idxIndikator]->rpjmd_tujuan_indikator_nama }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][$idxIndikator]->rpjmd_tujuan_indikator_th1_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_tujuan_indikator_th1_target) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->rpjmd_tujuan_indikator_th1_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_tujuan_indikator_th1_target)) }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][$idxIndikator]->rpjmd_tujuan_indikator_th2_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_tujuan_indikator_th2_target) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->rpjmd_tujuan_indikator_th2_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_tujuan_indikator_th2_target)) }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][$idxIndikator]->rpjmd_tujuan_indikator_th3_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_tujuan_indikator_th3_target) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->rpjmd_tujuan_indikator_th3_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_tujuan_indikator_th3_target)) }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][$idxIndikator]->rpjmd_tujuan_indikator_th4_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_tujuan_indikator_th4_target) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->rpjmd_tujuan_indikator_th4_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_tujuan_indikator_th4_target)) }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][$idxIndikator]->rpjmd_tujuan_indikator_th5_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_tujuan_indikator_th5_target) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->rpjmd_tujuan_indikator_th5_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_tujuan_indikator_th5_target)) }}</td>
					</tr>
					@endfor
				@elseif($row['level'] == 2)
					<tr>
						<td style="border-right: 0px" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}"></td>
						<td style="border-right: 0px; border-left: 0px" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}" colspan="5">{{ $row['uraian'] }}</td>
						<td>{{ @$row['data'][0]->rpjmd_sasaran_indikator_nama }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][0]->rpjmd_sasaran_indikator_th1_realisasi_target, @$row['data'][0]->rpjmd_sasaran_indikator_th1_target) }}%</td> -->
						<!-- <td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ (@$row['dataPagu'][1]['capaian_pagu']) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->rpjmd_sasaran_indikator_th1_realisasi_target, @$row['data'][0]->rpjmd_sasaran_indikator_th1_target)) }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][0]->rpjmd_sasaran_indikator_th2_realisasi_target, @$row['data'][0]->rpjmd_sasaran_indikator_th2_target) }}%</td> -->
						<!-- <td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ (@$row['dataPagu'][2]['capaian_pagu']) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->rpjmd_sasaran_indikator_th2_realisasi_target, @$row['data'][0]->rpjmd_sasaran_indikator_th2_target)) }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][0]->rpjmd_sasaran_indikator_th3_realisasi_target, @$row['data'][0]->rpjmd_sasaran_indikator_th3_target) }}%</td> -->
						<!-- <td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ (@$row['dataPagu'][3]['capaian_pagu']) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->rpjmd_sasaran_indikator_th3_realisasi_target, @$row['data'][0]->rpjmd_sasaran_indikator_th3_target)) }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][0]->rpjmd_sasaran_indikator_th4_realisasi_target, @$row['data'][0]->rpjmd_sasaran_indikator_th4_target) }}%</td> -->
						<!-- <td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ (@$row['dataPagu'][4]['capaian_pagu']) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->rpjmd_sasaran_indikator_th4_realisasi_target, @$row['data'][0]->rpjmd_sasaran_indikator_th4_target)) }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][0]->rpjmd_sasaran_indikator_th5_realisasi_target, @$row['data'][0]->rpjmd_sasaran_indikator_th5_target) }}%</td> -->
						<!-- <td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ (@$row['dataPagu'][5]['capaian_pagu']) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->rpjmd_sasaran_indikator_th5_realisasi_target, @$row['data'][0]->rpjmd_sasaran_indikator_th5_target)) }}</td>
					</tr>

					@for($idxIndikator = 1; $idxIndikator < count(@$row['data']); $idxIndikator++)
					<tr>
						<td>{{ @$row['data'][$idxIndikator]->rpjmd_sasaran_indikator_nama }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][$idxIndikator]->rpjmd_sasaran_indikator_th1_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_sasaran_indikator_th1_target) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->rpjmd_sasaran_indikator_th1_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_sasaran_indikator_th1_target)) }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][$idxIndikator]->rpjmd_sasaran_indikator_th2_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_sasaran_indikator_th2_target) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->rpjmd_sasaran_indikator_th2_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_sasaran_indikator_th2_target)) }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][$idxIndikator]->rpjmd_sasaran_indikator_th3_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_sasaran_indikator_th3_target) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->rpjmd_sasaran_indikator_th3_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_sasaran_indikator_th3_target)) }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][$idxIndikator]->rpjmd_sasaran_indikator_th4_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_sasaran_indikator_th4_target) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->rpjmd_sasaran_indikator_th4_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_sasaran_indikator_th4_target)) }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][$idxIndikator]->rpjmd_sasaran_indikator_th5_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_sasaran_indikator_th5_target) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->rpjmd_sasaran_indikator_th5_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_sasaran_indikator_th5_target)) }}</td>
					</tr>
					@endfor
				@elseif($row['level'] == 3)
					<tr>
						<td style="border-right: 0px" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}"></td>
						<td style="border-right: 0px; border-left: 0px" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}"></td>
						<td style="border-right: 0px; border-left: 0px" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}" colspan="4">{{ $row['uraian'] }}</td>
						<td>{{ @$row['data'][0]->rpjmd_program_indikator_nama }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][0]->rpjmd_program_indikator_th1_realisasi_target, @$row['data'][0]->rpjmd_program_indikator_th1_target) }}%</td> -->
						<!-- <td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ (@$row['dataPagu'][1]['capaian_pagu']) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->rpjmd_program_indikator_th1_realisasi_target, @$row['data'][0]->rpjmd_program_indikator_th1_target)) }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][0]->rpjmd_program_indikator_th2_realisasi_target, @$row['data'][0]->rpjmd_program_indikator_th2_target) }}%</td> -->
						<!-- <td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ (@$row['dataPagu'][2]['capaian_pagu']) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->rpjmd_program_indikator_th2_realisasi_target, @$row['data'][0]->rpjmd_program_indikator_th2_target)) }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][0]->rpjmd_program_indikator_th3_realisasi_target, @$row['data'][0]->rpjmd_program_indikator_th3_target) }}%</td> -->
						<!-- <td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ (@$row['dataPagu'][3]['capaian_pagu']) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->rpjmd_program_indikator_th3_realisasi_target, @$row['data'][0]->rpjmd_program_indikator_th3_target)) }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][0]->rpjmd_program_indikator_th4_realisasi_target, @$row['data'][0]->rpjmd_program_indikator_th4_target) }}%</td> -->
						<!-- <td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ (@$row['dataPagu'][4]['capaian_pagu']) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->rpjmd_program_indikator_th4_realisasi_target, @$row['data'][0]->rpjmd_program_indikator_th4_target)) }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][0]->rpjmd_program_indikator_th5_realisasi_target, @$row['data'][0]->rpjmd_program_indikator_th5_target) }}%</td> -->
						<!-- <td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ (@$row['dataPagu'][5]['capaian_pagu']) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->rpjmd_program_indikator_th5_realisasi_target, @$row['data'][0]->rpjmd_program_indikator_th5_target)) }}</td>
					</tr>
					@for($idxIndikator = 1; $idxIndikator < count(@$row['data']); $idxIndikator++)
					<tr>
						<td>{{ @$row['data'][$idxIndikator]->rpjmd_program_indikator_nama }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][$idxIndikator]->rpjmd_program_indikator_th1_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_program_indikator_th1_target) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->rpjmd_program_indikator_th1_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_program_indikator_th1_target)) }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][$idxIndikator]->rpjmd_program_indikator_th2_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_program_indikator_th2_target) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->rpjmd_program_indikator_th2_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_program_indikator_th2_target)) }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][$idxIndikator]->rpjmd_program_indikator_th3_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_program_indikator_th3_target) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->rpjmd_program_indikator_th3_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_program_indikator_th3_target)) }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][$idxIndikator]->rpjmd_program_indikator_th4_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_program_indikator_th4_target) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->rpjmd_program_indikator_th4_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_program_indikator_th4_target)) }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][$idxIndikator]->rpjmd_program_indikator_th5_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_program_indikator_th5_target) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->rpjmd_program_indikator_th5_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_program_indikator_th5_target)) }}</td>
					</tr>
					@endfor

				@elseif($row['level'] == 4)
					<tr>
						<td style="border-right: 0px" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}"></td>
						<td style="border-right: 0px; border-left: 0px" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}"></td>
						<td style="border-right: 0px; border-left: 0px" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}"></td>
						<td style="border-right: 0px; border-left: 0px" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}" colspan="3">{{ $row['uraian'] }}</td>
						<td>{{ @$row['data'][0]->renstra_kegiatan_indikator_nama }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][0]->renstra_kegiatan_indikator_th1_realisasi_target, @$row['data'][0]->renstra_kegiatan_indikator_th1_target) }}%</td> -->
						<!-- <td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ (@$row['dataPagu'][1]['capaian_pagu']) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->renstra_kegiatan_indikator_th1_realisasi_target, @$row['data'][0]->renstra_kegiatan_indikator_th1_target)) }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][0]->renstra_kegiatan_indikator_th2_realisasi_target, @$row['data'][0]->renstra_kegiatan_indikator_th2_target) }}%</td> -->
						<!-- <td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ (@$row['dataPagu'][2]['capaian_pagu']) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->renstra_kegiatan_indikator_th2_realisasi_target, @$row['data'][0]->renstra_kegiatan_indikator_th2_target)) }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][0]->renstra_kegiatan_indikator_th3_realisasi_target, @$row['data'][0]->renstra_kegiatan_indikator_th3_target) }}%</td> -->
						<!-- <td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ (@$row['dataPagu'][3]['capaian_pagu']) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->renstra_kegiatan_indikator_th3_realisasi_target, @$row['data'][0]->renstra_kegiatan_indikator_th3_target)) }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][0]->renstra_kegiatan_indikator_th4_realisasi_target, @$row['data'][0]->renstra_kegiatan_indikator_th4_target) }}%</td> -->
						<!-- <td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ (@$row['dataPagu'][4]['capaian_pagu']) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->renstra_kegiatan_indikator_th4_realisasi_target, @$row['data'][0]->renstra_kegiatan_indikator_th4_target)) }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][0]->renstra_kegiatan_indikator_th5_realisasi_target, @$row['data'][0]->renstra_kegiatan_indikator_th5_target) }}%</td> -->
						<!-- <td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ (@$row['dataPagu'][5]['capaian_pagu']) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][0]->renstra_kegiatan_indikator_th5_realisasi_target, @$row['data'][0]->renstra_kegiatan_indikator_th5_target)) }}</td>
					</tr>
					@for($idxIndikator = 1; $idxIndikator < count(@$row['data']); $idxIndikator++)
					<tr>
						<td>{{ @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_nama }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th1_realisasi_target, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th1_target) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th1_realisasi_target, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th1_target)) }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th2_realisasi_target, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th2_target) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th2_realisasi_target, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th2_target)) }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th3_realisasi_target, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th3_target) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th3_realisasi_target, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th3_target)) }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th4_realisasi_target, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th4_target) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th4_realisasi_target, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th4_target)) }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th5_realisasi_target, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th5_target) }}%</td> -->
						<td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th5_realisasi_target, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_th5_target)) }}</td>
					</tr>
					@endfor

				@elseif($row['level'] == 5)
					<tr>
						<td style="border-right: 0px" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}"></td>
						<td style="border-right: 0px; border-left: 0px" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}"></td>
						<td style="border-right: 0px; border-left: 0px" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}"></td>
						<td style="border-right: 0px; border-left: 0px" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}"></td>
						<td style="border-right: 0px; border-left: 0px" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}" colspan="2">{{ $row['uraian'] }}</td>
						<td>{{ @$row['data'][0]->renstra_sub_kegiatan_indikator_nama }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][0]->renstra_sub_kegiatan_indikator_th1_realisasi_target, @$row['data'][0]->renstra_sub_kegiatan_indikator_th1_target) }}%</td> -->
						<!-- <td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ (@$row['dataPagu'][1]['capaian_pagu']) }}%</td> -->
						<td style="text-align: center;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{  setPredikat(@$row['dataPagu'][1]['capaian_target']) }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][0]->renstra_sub_kegiatan_indikator_th2_realisasi_target, @$row['data'][0]->renstra_sub_kegiatan_indikator_th2_target) }}%</td> -->
						<!-- <td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ (@$row['dataPagu'][2]['capaian_pagu']) }}%</td> -->
						<td style="text-align: center;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{  setPredikat(@$row['dataPagu'][2]['capaian_target']) }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][0]->renstra_sub_kegiatan_indikator_th3_realisasi_target, @$row['data'][0]->renstra_sub_kegiatan_indikator_th3_target) }}%</td> -->
						<!-- <td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ (@$row['dataPagu'][3]['capaian_pagu']) }}%</td> -->
						<td style="text-align: center;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{  setPredikat(@$row['dataPagu'][3]['capaian_target']) }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][0]->renstra_sub_kegiatan_indikator_th4_realisasi_target, @$row['data'][0]->renstra_sub_kegiatan_indikator_th4_target) }}%</td> -->
						<!-- <td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ (@$row['dataPagu'][4]['capaian_pagu']) }}%</td> -->
						<td style="text-align: center;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{  setPredikat(@$row['dataPagu'][4]['capaian_target']) }}</td>
						<!-- <td style="text-align: right;">{{ setCapaian(@$row['data'][0]->renstra_sub_kegiatan_indikator_th5_realisasi_target, @$row['data'][0]->renstra_sub_kegiatan_indikator_th5_target) }}%</td> -->
						<!-- <td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ (@$row['dataPagu'][5]['capaian_pagu']) }}%</td> -->
						<td style="text-align: center;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{  setPredikat(@$row['dataPagu'][5]['capaian_target']) }}</td>
					</tr>
					@for($idxIndikator = 1; $idxIndikator < count(@$row['data']); $idxIndikator++)
					<tr>
						<td>{{ @$row['data'][$idxIndikator]->renstra_sub_kegiatan_indikator_nama }}</td>
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
		</tbody>
	</table>
</body>

</html>