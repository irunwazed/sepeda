<!DOCTYPE html>
<html lang="en">
<?php

$triwulan = session('triwulan');
$tahun = @$tahun?$tahun:1;
$indikator = @$indikator==1?$indikator:0;
// echo $indikator;
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
	<title>Laporan Form Urusan</title>
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
		<h2>Form Urusan</h2>
	</center>
	<br>
	<table>
		<tr>
			<td><b>{{ @$urusan->urusan_kode }}.</b></td>
			<td><b>{{ @$urusan->urusan_nama }}</b></td>
		</tr>
	</table>
	<br>
	<table class="my-table">
		<thead>
			<tr>
				<!-- <th rowspan="2">No</th> -->
				<th rowspan="3">No</th>
				<th rowspan="3">Urusan Pemerintahan</th>
				<th rowspan="3">Organisasi Perangkat Daerah Pelaksana</th>
				<th rowspan="3">Kebijakan</th>
				<th rowspan="3">Uraian Program / Kegiatan</th>
				@if($indikator != 0)
				<th rowspan="3">Indikator</th>
				@endif
				<th colspan="2">Target</th>
				<th colspan="2">Realisasi</th>
				<th rowspan="3">Permasalahan</th>
				<th rowspan="3">Upaya Mengatasi Permasalahan</th>
				<th rowspan="3">Tingkat Rekomendasi DPRD</th>
			</tr>
			<tr>
				<th colspan="2">{{ session('rpjmd_tahun')+$tahun-1 }}</th>
				<th colspan="2">{{ session('rpjmd_tahun')+$tahun-1 }}</th>
			</tr>
			<tr>
				<th>Kinerja</th>
				<th>Pagu</th>
				<th>Kinerja</th>
				<th>Pagu</th>
			</tr>
		</thead>
		<tbody>
			<?php
			$no = 1;
			
			?>
			@foreach($dataAll as $row)
			@if($row['level'] == 3)
			<?php
				$uraian_target = 'rpjmd_program_indikator_th'.$tahun.'_target';
				$uraian_realisasi = 'rpjmd_program_indikator_th'.$tahun.'_realisasi_target';
				
			?>
					<tr>

						<td style="border-right: 0px" rowspan="{{ @$row['jum']?$row['jum']:'1' }}">{{ @$no++ }}</td>
						<td style="border-right: 0px" rowspan="{{ @$row['jum']?$row['jum']:'1' }}">{{ @$row['data'][0]->bidang_nama }}</td>
						<td style="border-right: 0px" rowspan="{{ @$row['jum']?$row['jum']:'1' }}">{{ @$row['data'][0]->opd_nama }}</td>
						<td style="border-right: 0px" rowspan="{{ @$row['jum']?$row['jum']:'1' }}"></td>
						<td style="border-right: 0px;"
							rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ $row['uraian'] }}</td>

						@if($indikator != 0)
						<td>{{ @$row['data'][0]->rpjmd_program_indikator_nama }}</td>
						@endif
						<td>
							{{ setTarget(@$row['data'][0]->$uraian_target, @$row['data'][0]->rpjmd_program_indikator_nilai_jenis, @$row['data'][0]->rpjmd_program_indikator_nilai_json) }} {{ @$row['data'][0]->rpjmd_program_indikator_satuan }}
						</td>
						<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
							{{ toRupiah(@$row['dataPagu'][$tahun]['pagu']) }}</td>
						<td>
							{{ setTarget(@$row['data'][0]->$uraian_realisasi, @$row['data'][0]->rpjmd_program_indikator_nilai_jenis, @$row['data'][0]->rpjmd_program_indikator_nilai_json) }} {{ @$row['data'][0]->rpjmd_program_indikator_satuan }}
						</td>
						<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
							{{ toRupiah(@$row['dataPagu'][$tahun]['realisasi_pagu']) }}</td>
						<td style="border-right: 0px" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}"></td>
						<td style="border-right: 0px" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}"></td>
						<td style="border-right: 0px" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}"></td>
					</tr>
					@for($idxIndikator = 1; $idxIndikator < count(@$row['data']); $idxIndikator++) <tr>

					@if($indikator != 0)
						<td>{{ @$row['data'][$idxIndikator]->rpjmd_program_indikator_nama }}</td>
					@endif
						<td>
							{{ setTarget(@$row['data'][$idxIndikator]->$uraian_target, @$row['data'][$idxIndikator]->rpjmd_program_indikator_nilai_jenis, @$row['data'][$idxIndikator]->rpjmd_program_indikator_nilai_json) }} {{ @$row['data'][$idxIndikator]->rpjmd_program_indikator_satuan }}
						</td>
						<td>
							{{ setTarget(@$row['data'][$idxIndikator]->$uraian_realisasi, @$row['data'][$idxIndikator]->rpjmd_program_indikator_nilai_jenis, @$row['data'][$idxIndikator]->rpjmd_program_indikator_nilai_json) }} {{ @$row['data'][$idxIndikator]->rpjmd_program_indikator_satuan }}
						</td>
						<!-- <td style="text-align: center;">{{ setPredikat(setCapaian(@$row['data'][$idxIndikator]->rpjmd_program_indikator_th5_realisasi_target, @$row['data'][$idxIndikator]->rpjmd_program_indikator_th5_target)) }}</td> -->
						</tr>
						@endfor

						@elseif($row['level'] == 4)
			<?php
				$uraian_target = 'renstra_kegiatan_indikator_th'.$tahun.'_target';
				$uraian_realisasi = 'renstra_kegiatan_indikator_th'.$tahun.'_realisasi_target';
				
			?>
						<tr>
							<td style="border-right: 0px;"
								rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">{{ $row['uraian'] }}</td>

							@if($indikator != 0)
							<td>{{ @$row['data'][0]->renstra_kegiatan_indikator_nama }}</td>
							@endif
							<td>
								{{ setTarget(@$row['data'][0]->$uraian_target, @$row['data'][0]->renstra_kegiatan_indikator_nilai_jenis, @$row['data'][0]->renstra_kegiatan_indikator_nilai_json) }} {{ @$row['data'][0]->renstra_kegiatan_indikator_satuan }}
							</td>
							<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
								{{ toRupiah(@$row['dataPagu'][1]['pagu']) }}</td>
							<td>
								{{ setTarget(@$row['data'][0]->$uraian_realisasi, @$row['data'][0]->renstra_kegiatan_indikator_nilai_jenis, @$row['data'][0]->renstra_kegiatan_indikator_nilai_json) }} {{ @$row['data'][0]->renstra_kegiatan_indikator_satuan }}
							</td>
							<td style="text-align: right;" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}">
								{{ toRupiah(@$row['dataPagu'][1]['realisasi_pagu']) }}</td>
							<td style="border-right: 0px" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}"></td>
							<td style="border-right: 0px" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}"></td>
							<td style="border-right: 0px" rowspan="{{ count(@$row['data'])>0?count($row['data']):'1' }}"></td>
						</tr>
						@for($idxIndikator = 1; $idxIndikator < count(@$row['data']); $idxIndikator++) <tr>
							@if($indikator != 0)
							<td>{{ @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_nama }}</td>
							@endif
							<td>
								{{ setTarget(@$row['data'][$idxIndikator]->$uraian_target, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_nilai_json) }}   {{ @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_satuan }}
							</td>
							<td>
								{{ setTarget(@$row['data'][$idxIndikator]->$uraian_realisasi, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_nilai_jenis, @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_nilai_json) }} {{ @$row['data'][$idxIndikator]->renstra_kegiatan_indikator_satuan }}
							</td>
						</tr>
							@endfor

							
								@endif
								@endforeach
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