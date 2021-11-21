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
	<title>Laporan Predikat</title>
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
		<h2>Predikat OPD</h2>
	</center>
	<br>
	<table class="my-table">
		<thead>
			<tr>
				<th rowspan="2" width="10">No</th>
				<th rowspan="2">OPD</th>
				<th colspan="5">OPD</th>
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
			<tr>
				<td>{{ $loop->index+1 }}</td>
				<td>{{ @$row['opd_nama'] }}</td>
				<td style="text-align: center;">{{ setPredikat(@$row['predikat'][0]) }}</td>
				<td style="text-align: center;">{{ setPredikat(@$row['predikat'][1]) }}</td>
				<td style="text-align: center;">{{ setPredikat(@$row['predikat'][2]) }}</td>
				<td style="text-align: center;">{{ setPredikat(@$row['predikat'][3]) }}</td>
				<td style="text-align: center;">{{ setPredikat(@$row['predikat'][4]) }}</td>
			</tr>
			@endforeach
		</tbody>
	</table>
</body>

</html>