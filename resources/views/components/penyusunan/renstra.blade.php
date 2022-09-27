@extends('layouts.admin')

@section('content')
<?php
	$judul = "Renstra";
	$icon = "feather icon-user";
	$levelName = \Request::get('levelPath');
?>
<!-- [ Main Content ] start -->
<div class="pcoded-main-container">
	<div class="pcoded-wrapper">
		<div class="pcoded-content">
			<div class="pcoded-inner-content">
				<!-- [ breadcrumb ] start -->
				<div class="page-header">
					<div class="page-block">
						<div class="row align-items-center">
							<div class="col-md-12">
								<div class="page-header-title">
									<h5 class="m-b-10"> <strong>{{ strtoupper($judul) }}</strong></h5>
								</div>
								<ul class="breadcrumb" style="float: right;">
									<li class="breadcrumb-item"><a href="{{ url($levelName) }}"><i class="feather icon-home"></i></a></li>
									<li class="breadcrumb-item"><a href="#">Penyusunan</a></li>
									<li class="breadcrumb-item"><a href="javascript:">{{ $judul }}</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- [ breadcrumb ] end -->
				<div class="main-body">
					<div class="page-wrapper">
						<!-- [ Main Content ] start -->
						<div class="row">
							<div class="col-sm-12">
								<div class="card">
									<div class="card-header">
										<h5 style="color: white"><i class="{{ $icon }}"></i> {{ $judul }}</h5>
										<div class="btn btn-success" onClick="setCreate()"
											style="right:20px;top: 10px;;position: absolute;"><i class="feather icon-plus-circle"></i>Tambah
										</div>
									</div>
									<div class="card-block">
										<div class="table-responsive">

											<table class="my-datatable table table-striped table-bordered">
												<thead>
													<tr>
														<th rowspan="2"></th>
														<th rowspan="2">No</th>
														<th rowspan="2">Program</th>
														<th rowspan="2">Kegiatan</th>
														<th rowspan="2">Sub Kegiatan</th>
														<th rowspan="2">Indikator</th>
														<th colspan="2">Kondisi Awal</th>
														<th colspan="2">Tahun 1</th>
														<th colspan="2">Tahun 2</th>
														<th colspan="2">Tahun 3</th>
														<th colspan="2">Tahun 4</th>
														<th colspan="2">Tahun 5</th>
														<th rowspan="2">OPD</th>
														<th rowspan="2">Aksi</th>
													</tr>
													<tr>
														<th>Target</th>
														<th>Pagu</th>
														<th>Target</th>
														<th>Pagu</th>
														<th>Target</th>
														<th>Pagu</th>
														<th>Target</th>
														<th>Pagu</th>
														<th>Target</th>
														<th>Pagu</th>
														<th>Target</th>
														<th>Pagu</th>
													</tr>
												</thead>
												<tbody>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- [ Main Content ] end -->
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- [ Main Content ] end -->

<!--Disabled Backdrop Modal -->
<div class="modal fade text-left" id="modal-form" role="dialog" aria-labelledby="myModalLabel4" aria-hidden="true">
	<div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable " role="document">
		<!-- class modal-xl -->
		<div class="modal-content">
			<div class="modal-header bg-info">
				<h4 class="modal-title" style="color: #FFF" id="myModalLabel4"> <i class="{{ $icon }}"></i> {{ $judul }}
				</h4>
				<button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
					<i data-feather="x"></i>
				</button>
			</div>
			<div class="modal-body">
				<form action="" id="form-data">
					@csrf
					<input type="hidden" name="id">
					<div class="row">

						<div class="col-sm-6">
							<div class="form-group">
								<label for="basicInput">OPD</label>
								<fieldset class="form-group">
									<select class="form-control select2" name="opd" required>
										<option value="">Pilih OPD</option>
										@foreach(@$dataOPD as $row)
										<option value="{{ $row->id }}">{{ $row->opd_nama }}</option>
										@endforeach
									</select>
								</fieldset>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label for="basicInput">Program</label>
								<fieldset class="form-group">
									<select class="form-control select2" name="program" required>
										<option value="">Pilih Program</option>
									</select>
								</fieldset>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label for="basicInput">Kegiatan</label>
								<fieldset class="form-group">
									<select class="form-control select2" name="kegiatan" required>
										<option value="">Pilih Kegiatan</option>
									</select>
								</fieldset>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label for="basicInput">Sub Kegiatan</label>
								<fieldset class="form-group">
									<select class="form-control select2" name="sub_kegiatan" required>
										<option value="">Pilih Sub Kegiatan</option>
									</select>
								</fieldset>
							</div>
						</div>
					</div>

					<div class="form-group">
						<label for="basicInput">Indikator Kegiatan</label>
						<fieldset class="form-group">
							<textarea name="renstra_kegiatan_indikator_nama" class="form-control" cols="10" rows="10"></textarea>
						</fieldset>
					</div>

					<b>Tahun Awal</b>
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group">
								<label for="basicInput">Target</label>
								<fieldset class="form-group">
									<input type="number" class="form-control" name="renstra_kegiatan_indikator_th0_target">
								</fieldset>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label for="basicInput">Satuan</label>
								<fieldset class="form-group">
									<input type="text" class="form-control" name="renstra_kegiatan_indikator_th0_satuan">
								</fieldset>
							</div>
						</div>
					</div>

					<b>Tahun 1</b>
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group">
								<label for="basicInput">Target</label>
								<fieldset class="form-group">
									<input type="number" class="form-control" name="renstra_kegiatan_indikator_th1_target">
								</fieldset>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label for="basicInput">Satuan</label>
								<fieldset class="form-group">
									<input type="text" class="form-control" name="renstra_kegiatan_indikator_th1_satuan">
								</fieldset>
							</div>
						</div>
					</div>

					<b>Tahun 2</b>
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group">
								<label for="basicInput">Target</label>
								<fieldset class="form-group">
									<input type="number" class="form-control" name="renstra_kegiatan_indikator_th2_target">
								</fieldset>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label for="basicInput">Satuan</label>
								<fieldset class="form-group">
									<input type="text" class="form-control" name="renstra_kegiatan_indikator_th2_satuan">
								</fieldset>
							</div>
						</div>
					</div>

					<b>Tahun 3</b>
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group">
								<label for="basicInput">Target</label>
								<fieldset class="form-group">
									<input type="number" class="form-control" name="renstra_kegiatan_indikator_th3_target">
								</fieldset>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label for="basicInput">Satuan</label>
								<fieldset class="form-group">
									<input type="text" class="form-control" name="renstra_kegiatan_indikator_th3_satuan">
								</fieldset>
							</div>
						</div>
					</div>

					<b>Tahun 4</b>
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group">
								<label for="basicInput">Target</label>
								<fieldset class="form-group">
									<input type="number" class="form-control" name="renstra_kegiatan_indikator_th4_target">
								</fieldset>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label for="basicInput">Satuan</label>
								<fieldset class="form-group">
									<input type="text" class="form-control" name="renstra_kegiatan_indikator_th4_satuan">
								</fieldset>
							</div>
						</div>
					</div>

					<b>Tahun 5</b>
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group">
								<label for="basicInput">Target</label>
								<fieldset class="form-group">
									<input type="number" class="form-control" name="renstra_kegiatan_indikator_th5_target">
								</fieldset>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label for="basicInput">Satuan</label>
								<fieldset class="form-group">
									<input type="text" class="form-control" name="renstra_kegiatan_indikator_th5_satuan">
								</fieldset>
							</div>
						</div>
					</div>

					<div class="form-group">
						<label for="basicInput">Indikator Sub Kegiatan</label>
						<fieldset class="form-group">
							<textarea name="renstra_indikator_nama" class="form-control" cols="10" rows="10"></textarea>
						</fieldset>
					</div>

					<b>Tahun Awal</b>
					<div class="row">
						<div class="col-sm-4">
							<div class="form-group">
								<label for="basicInput">Target</label>
								<fieldset class="form-group">
									<input type="number" class="form-control" name="renstra_indikator_th0_target">
								</fieldset>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="form-group">
								<label for="basicInput">Satuan</label>
								<fieldset class="form-group">
									<input type="text" class="form-control" name="renstra_indikator_th0_satuan">
								</fieldset>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="form-group">
								<label for="basicInput">Pagu</label>
								<fieldset class="form-group">
									<input type="number" class="form-control" name="renstra_indikator_th0_target_pagu">
								</fieldset>
							</div>
						</div>
					</div>

					<b>Tahun 1</b>
					<div class="row">
						<div class="col-sm-4">
							<div class="form-group">
								<label for="basicInput">Target</label>
								<fieldset class="form-group">
									<input type="number" class="form-control" name="renstra_indikator_th1_target">
								</fieldset>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="form-group">
								<label for="basicInput">Satuan</label>
								<fieldset class="form-group">
									<input type="text" class="form-control" name="renstra_indikator_th1_satuan">
								</fieldset>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="form-group">
								<label for="basicInput">Pagu</label>
								<fieldset class="form-group">
									<input type="number" class="form-control" name="renstra_indikator_th1_target_pagu">
								</fieldset>
							</div>
						</div>
					</div>

					<b>Tahun 2</b>
					<div class="row">
						<div class="col-sm-4">
							<div class="form-group">
								<label for="basicInput">Target</label>
								<fieldset class="form-group">
									<input type="number" class="form-control" name="renstra_indikator_th2_target">
								</fieldset>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="form-group">
								<label for="basicInput">Satuan</label>
								<fieldset class="form-group">
									<input type="text" class="form-control" name="renstra_indikator_th2_satuan">
								</fieldset>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="form-group">
								<label for="basicInput">Pagu</label>
								<fieldset class="form-group">
									<input type="number" class="form-control" name="renstra_indikator_th2_target_pagu">
								</fieldset>
							</div>
						</div>
					</div>

					<b>Tahun 3</b>
					<div class="row">
						<div class="col-sm-4">
							<div class="form-group">
								<label for="basicInput">Target</label>
								<fieldset class="form-group">
									<input type="number" class="form-control" name="renstra_indikator_th3_target">
								</fieldset>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="form-group">
								<label for="basicInput">Satuan</label>
								<fieldset class="form-group">
									<input type="text" class="form-control" name="renstra_indikator_th3_satuan">
								</fieldset>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="form-group">
								<label for="basicInput">Pagu</label>
								<fieldset class="form-group">
									<input type="number" class="form-control" name="renstra_indikator_th3_target_pagu">
								</fieldset>
							</div>
						</div>
					</div>

					<b>Tahun 4</b>
					<div class="row">
						<div class="col-sm-4">
							<div class="form-group">
								<label for="basicInput">Target</label>
								<fieldset class="form-group">
									<input type="number" class="form-control" name="renstra_indikator_th4_target">
								</fieldset>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="form-group">
								<label for="basicInput">Satuan</label>
								<fieldset class="form-group">
									<input type="text" class="form-control" name="renstra_indikator_th4_satuan">
								</fieldset>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="form-group">
								<label for="basicInput">Pagu</label>
								<fieldset class="form-group">
									<input type="number" class="form-control" name="renstra_indikator_th4_target_pagu">
								</fieldset>
							</div>
						</div>
					</div>

					<b>Tahun 5</b>
					<div class="row">
						<div class="col-sm-4">
							<div class="form-group">
								<label for="basicInput">Target</label>
								<fieldset class="form-group">
									<input type="number" class="form-control" name="renstra_indikator_th5_target">
								</fieldset>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="form-group">
								<label for="basicInput">Satuan</label>
								<fieldset class="form-group">
									<input type="text" class="form-control" name="renstra_indikator_th5_satuan">
								</fieldset>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="form-group">
								<label for="basicInput">Pagu</label>
								<fieldset class="form-group">
									<input type="number" class="form-control" name="renstra_indikator_th5_target_pagu">
								</fieldset>
							</div>
						</div>
					</div>

				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<button id="btn-form-data" type="submit" form="form-data" class="btn btn-success ml-1">Tambah
				</button>
			</div>
		</div>
	</div>
</div>

@endsection

@section('script')
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css"> -->
<!-- <link rel="stylesheet" href="https://cdn.datatables.net/1.10.24/css/dataTables.bootstrap4.min.css"> -->
<style>
.dataTables_filter label {
	width: 100%;
	float: right;
}

.select2-dropdown {
	z-index: 99999;
}
</style>
<script>
$('li[data-menu-bar="penyusunan"]').addClass("active pcoded-trigger");
var link = window.location.pathname;
var linkAction = '/create';
var dataPilih = {};

$(document).ready(function() {
	$('.select2').select2({
		// placeholder: 'Select an option',
		// dropdownCssClass:'increasezindex'
	});
	var groupColumn = [{
			name: 'Program',
			data: 'program_nama',
			column: 2
		},
		{
			name: 'Kegiatan',
			data: 'kegiatan_nama',
			column: 3
		},
		{
			name: 'Sub Kegiatan',
			data: 'sub_kegiatan_nama',
			column: 4
		},
	];
	var table = $('.my-datatable').DataTable({
		responsive: true,
		ordering: false,
		autoWidth: false,
		processing: true,
		serverSide: true,
		// responsive: true,
		// "scrollX": true,
		dom: "<'row'<'col-lg-10 col-md-10 col-xs-12'f><'col-lg-2 col-md-2 col-xs-12'l>>" +
			"<'row'<'col-sm-12'tr>>" +
			"<'row'<'col-sm-12 col-md-5'i><'col-sm-12 col-md-7'p>>",
		language: {
			search: '<div style="width: 100%;"><span>Filter:</span> _INPUT_</div>',
			searchPlaceholder: 'Cari...',
			lengthMenu: '<span>Perlihatkan : </span> _MENU_',
			paginate: {
				'first': 'First',
				'last': 'Last',
				'next': $('html').attr('dir') == 'rtl' ? '&larr;' : '&rarr;',
				'previous': $('html').attr('dir') == 'rtl' ? '&rarr;' : '&larr;'
			}
		},
		ajax: link + "/get-data",
		columnDefs: [{
				"visible": false,
				"targets": groupColumn[0].column
			},
			{
				"visible": false,
				"targets": groupColumn[1].column
			},
			{
				"visible": false,
				"targets": groupColumn[2].column
			},
		],
		columns: [{
				"class": "details-control",
				"orderable": false,
				"data": null,
				"defaultContent": "<center><img src='https://datatables.net/examples/resources/details_open.png' /></center>"
			},
			{
				data: null,
				render: function(data, type, row, meta) {
					return meta.row + meta.settings._iDisplayStart + 1;
				}
			},
			{
				data: 'program_nama',
				name: 'program_nama'
			},
			{
				data: 'kegiatan_nama',
				name: 'kegiatan_nama'
			},
			{
				data: 'sub_kegiatan_nama',
				name: 'sub_kegiatan_nama'
			},
			{
				data: 'renstra_indikator_nama',
				name: 'renstra_indikator_nama'
			},
			{
				data: 'renstra_indikator_th0_target',
				name: 'renstra_indikator_th0_target'
			},
			{
				data: 'renstra_indikator_th0_target_pagu',
				render: function(e) {
					return formatRupiah(e);
				}
			},
			{
				data: 'renstra_indikator_th1_target',
				name: 'renstra_indikator_th1_target'
			},
			{
				data: 'renstra_indikator_th1_target_pagu',
				render: function(e) {
					return formatRupiah(e);
				}
			},
			{
				data: 'renstra_indikator_th2_target',
				name: 'renstra_indikator_th2_target'
			},
			{
				data: 'renstra_indikator_th2_target_pagu',
				render: function(e) {
					return formatRupiah(e);
				}
			},
			{
				data: 'renstra_indikator_th3_target',
				name: 'renstra_indikator_th3_target'
			},
			{
				data: 'renstra_indikator_th3_target_pagu',
				render: function(e) {
					return formatRupiah(e);
				}
			},
			{
				data: 'renstra_indikator_th4_target',
				name: 'renstra_indikator_th4_target'
			},
			{
				data: 'renstra_indikator_th4_target_pagu',
				render: function(e) {
					return formatRupiah(e);
				}
			},
			{
				data: 'renstra_indikator_th5_target',
				name: 'renstra_indikator_th5_target'
			},
			{
				data: 'renstra_indikator_th5_target_pagu',
				render: function(e) {
					return formatRupiah(e);
				}
			},
			{
				data: 'opd_nama',
			},
			{
				data: 'action',
				name: 'action'
			},
		],
		"order": [
			[groupColumn[0].column, 'asc'],
			[groupColumn[1].column, 'asc'],
			[groupColumn[2].column, 'asc'],
		],
		"displayLength": 25,
		"drawCallback": function(settings) {
			var api = this.api();
			var rows = api.rows({
				page: 'current'
			}).nodes();
			var last = null;


			for (let idx = 0; idx < groupColumn.length; idx++) {
				api.column({
					page: 'current'
				}).data().each(function(group, i) {

					let name = group[groupColumn[idx].data];
					if (last !== name) {

						if (groupColumn[idx].column == 3) {
							$(rows).eq(i).before(
								'<tr class="group">'+
								'<td colspan="2">' + groupColumn[idx].name + ' : ' + name + '</td>'+
								'<td>' + group['renstra_kegiatan_indikator_nama'] + '</td>'+
								'<td>' + group['renstra_kegiatan_indikator_th0_target'] + ' '+ group['renstra_kegiatan_indikator_th0_satuan'] + '</td>'+
								'<td>' + formatRupiah(group['kegiatan']['pagu_th0']) + '</td>'+
								'<td>' + group['renstra_kegiatan_indikator_th1_target'] + ' '+ group['renstra_kegiatan_indikator_th1_satuan'] + '</td>'+
								'<td>' + formatRupiah(group['kegiatan']['pagu_th1']) + '</td>'+
								'<td>' + group['renstra_kegiatan_indikator_th2_target'] + ' '+ group['renstra_kegiatan_indikator_th2_satuan'] + '</td>'+
								'<td>' + formatRupiah(group['kegiatan']['pagu_th2']) + '</td>'+
								'<td>' + group['renstra_kegiatan_indikator_th3_target'] + ' '+ group['renstra_kegiatan_indikator_th3_satuan'] + '</td>'+
								'<td>' + formatRupiah(group['kegiatan']['pagu_th3']) + '</td>'+
								'<td>' + group['renstra_kegiatan_indikator_th4_target'] + ' '+ group['renstra_kegiatan_indikator_th4_satuan'] + '</td>'+
								'<td>' + formatRupiah(group['kegiatan']['pagu_th4']) + '</td>'+
								'<td>' + group['renstra_kegiatan_indikator_th5_target'] + ' '+ group['renstra_kegiatan_indikator_th5_satuan'] + '</td>'+
								'<td>' + formatRupiah(group['kegiatan']['pagu_th5']) + '</td>'+
								'<td>' + (group['opd_nama']) + '</td>'+
								'<td></td>'+
								'</tr>'
							);
						} else {
							$(rows).eq(i).before(
								'<tr class="group"><td colspan="18">' + groupColumn[idx].name + ' : ' + name +
								'</td></tr>'
							);
						}
						last = name;
					}
				});
			}
		}
	});

	// Array to track the ids of the details displayed rows
	var detailRows = [];

	$('.my-datatable tbody').on('click', 'tr td.details-control', function() {

		var tr = $(this).closest('tr');
		var row = table.row(tr);
		var idx = $.inArray(tr.attr('id'), detailRows);

		if (row.child.isShown()) {
			tr.removeClass('details');
			row.child.hide();

			// Remove from the 'open' array
			detailRows.splice(idx, 1);
			$(this).html("<center><img src='https://datatables.net/examples/resources/details_open.png' /></center>");
		} else {
			tr.addClass('details');
			row.child(format(row.data())).show();

			$(this).html(
				"<center><img src='https://datatables.net/examples/resources/details_close.png' /></center>");
			// Add to the 'open' array
			if (idx === -1) {
				detailRows.push(tr.attr('id'));
			}
		}
	});
	table.on('draw', function() {
		$.each(detailRows, function(i, id) {
			$('#' + id + ' td.details-control').trigger('click');
		});
	});
});

function format(d) {
	let date = d.created_at;
	let waktu = '';
	let bulan = ['', 'Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'November',
		'Desember'
	];

	if (date != null) {
		date = date.split(' ');
		jam = date[1].split(':');
		jam = jam[0] + ':' + jam[1];
		date = date[0].split('-');
		waktu = date[2] + ' ' + bulan[parseInt(date[1])] + ' ' + date[0] + ', Pukul ' + jam;
		return '<span style="float: right;">Dibuat pada ' + waktu + '</span>';

	} else {
		return '';
	}
	// 'Salary: '+d.updated_at+'<br>'+
	// 'The child row can contain any data you wish, including links, images, inner tables etc.';
}

function setView(id) {
	setUpdate(id);
	$("#form-data :input").prop("disabled", true);
	$('#btn-form-data').hide();
}

function setCreate() {
	linkAction = '/create';
	$('#btn-form-data').show().html("Tambah");
	$("#form-data :input").prop("disabled", false);
	$('#modal-form').modal('show');
	$('#form-data')[0].reset();
}

function setUpdate(id) {

	$('#btn-form-data').show().html("Ubah");
	$("#form-data :input").prop("disabled", false);
	linkAction = '/update';
	$('#modal-form').modal('show');
	$('#form-data')[0].reset();

	$('#div-password').hide();
	$('input[name="login_password"]').attr('required', false);
	let url = link + '/get-data/' + id;
	$.when(sendAjax(url, {}, 'get', '#form-data')).done(function(res) {
		if (res.status) {
			$('input[name="id"]').val(res.data.id);

			$('select[name="opd"]').val(res.data.opd_id).trigger('change');

			$('textarea[name="renstra_kegiatan_indikator_nama"]').html(res.data.renstra_kegiatan_indikator_nama);
			$('input[name="renstra_kegiatan_indikator_th0_target"]').val(res.data.renstra_kegiatan_indikator_th0_target);
			$('input[name="renstra_kegiatan_indikator_th0_satuan"]').val(res.data.renstra_kegiatan_indikator_th0_satuan);
			$('input[name="renstra_kegiatan_indikator_th1_target"]').val(res.data.renstra_kegiatan_indikator_th1_target);
			$('input[name="renstra_kegiatan_indikator_th1_satuan"]').val(res.data.renstra_kegiatan_indikator_th1_satuan);
			$('input[name="renstra_kegiatan_indikator_th2_target"]').val(res.data.renstra_kegiatan_indikator_th2_target);
			$('input[name="renstra_kegiatan_indikator_th2_satuan"]').val(res.data.renstra_kegiatan_indikator_th2_satuan);
			$('input[name="renstra_kegiatan_indikator_th3_target"]').val(res.data.renstra_kegiatan_indikator_th3_target);
			$('input[name="renstra_kegiatan_indikator_th3_satuan"]').val(res.data.renstra_kegiatan_indikator_th3_satuan);
			$('input[name="renstra_kegiatan_indikator_th4_target"]').val(res.data.renstra_kegiatan_indikator_th4_target);
			$('input[name="renstra_kegiatan_indikator_th4_satuan"]').val(res.data.renstra_kegiatan_indikator_th4_satuan);
			$('input[name="renstra_kegiatan_indikator_th5_target"]').val(res.data.renstra_kegiatan_indikator_th5_target);
			$('input[name="renstra_kegiatan_indikator_th5_satuan"]').val(res.data.renstra_kegiatan_indikator_th5_satuan);

			$('textarea[name="renstra_indikator_nama"]').html(res.data.renstra_indikator_nama);
			$('input[name="renstra_indikator_th0_target"]').val(res.data.renstra_indikator_th0_target);
			$('input[name="renstra_indikator_th0_satuan"]').val(res.data.renstra_indikator_th0_satuan);
			$('input[name="renstra_indikator_th1_target"]').val(res.data.renstra_indikator_th1_target);
			$('input[name="renstra_indikator_th1_satuan"]').val(res.data.renstra_indikator_th1_satuan);
			$('input[name="renstra_indikator_th2_target"]').val(res.data.renstra_indikator_th2_target);
			$('input[name="renstra_indikator_th2_satuan"]').val(res.data.renstra_indikator_th2_satuan);
			$('input[name="renstra_indikator_th3_target"]').val(res.data.renstra_indikator_th3_target);
			$('input[name="renstra_indikator_th3_satuan"]').val(res.data.renstra_indikator_th3_satuan);
			$('input[name="renstra_indikator_th4_target"]').val(res.data.renstra_indikator_th4_target);
			$('input[name="renstra_indikator_th4_satuan"]').val(res.data.renstra_indikator_th4_satuan);
			$('input[name="renstra_indikator_th5_target"]').val(res.data.renstra_indikator_th5_target);
			$('input[name="renstra_indikator_th5_satuan"]').val(res.data.renstra_indikator_th5_satuan);

			$('input[name="renstra_indikator_th0_target_pagu"]').val(res.data.renstra_indikator_th0_target_pagu);
			$('input[name="renstra_indikator_th1_target_pagu"]').val(res.data.renstra_indikator_th1_target_pagu);
			$('input[name="renstra_indikator_th2_target_pagu"]').val(res.data.renstra_indikator_th2_target_pagu);
			$('input[name="renstra_indikator_th3_target_pagu"]').val(res.data.renstra_indikator_th3_target_pagu);
			$('input[name="renstra_indikator_th4_target_pagu"]').val(res.data.renstra_indikator_th4_target_pagu);
			$('input[name="renstra_indikator_th5_target_pagu"]').val(res.data.renstra_indikator_th5_target_pagu);
		} else {
			pesanSweet('Gagal!', res.pesan, 'warning');
		}
	});
}

$('select[name="opd"]').change(function() {
	let val = $(this).val();
	console.log(val);

	$.when(sendAjax('/api/rpjmd/get-program', [{
		name: 'opd',
		value: val
	}, ], 'get')).done(function(res) {
		if (res.status) {
			for (let i = 0; i < res.data.length; i++) {
				$('select[name="program"]').append('<option value="' + res.data[i].permen_ver + '-' + res.data[i]
					.urusan_kode + '-' + res.data[i].bidang_kode + '-' + res.data[i].program_kode + '">' + res.data[i]
					.program_nama + '</option>');
			}
		} else {
			pesanSweet('Gagal!', res.pesan, 'warning');
		}
	});
});

$('select[name="program"]').change(function() {
	let val = $(this).val();
	console.log(val);

	$.when(sendAjax('/api/program/get-kegiatan', [{
		name: 'program',
		value: val
	}, ], 'get')).done(function(res) {
		if (res.status) {
			for (let i = 0; i < res.data.length; i++) {
				$('select[name="kegiatan"]').append('<option value="' + res.data[i].permen_ver + '-' + res.data[i]
					.urusan_kode + '-' + res.data[i].bidang_kode + '-' + res.data[i].program_kode + '-' + res.data[i]
					.kegiatan_kode + '">' + res.data[i].kegiatan_nama + '</option>');
			}
		} else {
			pesanSweet('Gagal!', res.pesan, 'warning');
		}
	});
});

$('select[name="kegiatan"]').change(function() {
	let val = $(this).val();
	console.log(val);

	$.when(sendAjax('/api/kegiatan/get-sub-kegiatan', [{
		name: 'kegiatan',
		value: val
	}, ], 'get')).done(function(res) {
		if (res.status) {
			for (let i = 0; i < res.data.length; i++) {
				$('select[name="sub_kegiatan"]').append('<option value="' + res.data[i].permen_ver + '-' + res.data[i]
					.urusan_kode + '-' + res.data[i].bidang_kode + '-' + res.data[i].program_kode + '-' + res.data[i]
					.kegiatan_kode + '-' + res.data[i].sub_kegiatan_kode + '">' + res.data[i].sub_kegiatan_nama +
					'</option>');
			}
		} else {
			pesanSweet('Gagal!', res.pesan, 'warning');
		}
	});
});

$('#form-data').submit(function(e) {
	e.preventDefault();

	let url = link + linkAction;
	let data = $(this).serializeArray();
	var fd = new FormData();
	// var files = $('input[name="foto"]')[0].files;

	// fd.append('foto',files[0]);
	$.each(data, function(i, field) {
		fd.append(field.name, field.value);
	});
	console.log(data);
	$.when(sendAjax(url, data, 'post', '#form-data')).done(function(res) {
		console.log(res);
		if (res.status == true) {
			pesanSweet('Berhasil', res.pesan, 'success');
			$('.my-datatable').DataTable().ajax.reload();
			$('#modal-form').modal('hide');
		} else {
			pesanSweet('Gagal!', res.pesan, 'warning');
		}
	});
});

function setDelete(id) {
	init_hapus(link + '/delete/' + id, $('.my-datatable').DataTable());
}
</script>
@endsection