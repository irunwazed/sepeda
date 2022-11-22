<!DOCTYPE html>
<html lang="en">
<?php

$judul = 'Laporan RKPD terhadap RPJMD';

?>

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>{{ @$judul }}</title>
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
		<h2>{{ @$judul }} <br> Tahun {{ (session('rpjmd_tahun')+session('tahun')-1) }}</h2>
		
	</center>
	<br>
	<table class="my-table">
		<thead>
			<tr>
				<th>Kode</th>
				<th>OPD</th>
				<th>Program</th>
				<th>RPJMD</th>
				<th>RKPD</th>
			</tr>
		</thead>
		<tbody>
			@foreach($dataAll as $row)
			<tr>
				<td>{{ @$row['kode'] }}</td>
				<td>{{ @$row['opd_nama'] }}</td>
				<td>{{ @$row['program'] }}</td>
				<td style="text-align: center;"><?= @$row['jum_rpjmd']>0?'&#9989;':'&#10060;' ?></td>
				<td style="text-align: center;"><?= @$row['jum_rkpd']>0?'&#9989;':'&#10060;' ?></td>
			</tr>
			@endforeach
			<tr>
				<th colspan="3">TOTAL</th>
				<th>{{ @$dataTotal['jum_rpjmd'] }}</th>
				<th>{{ @$dataTotal['jum_rkpd'] }}</th>
			</tr>
		</tbody>
	</table>

	<br>

</body>

</html>