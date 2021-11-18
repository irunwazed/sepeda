@extends('layouts.admin')

@section('content')
<?php
$judul = "Program";
$icon = "feather icon-file";
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
									<li class="breadcrumb-item"><a href="#">Renstra</a></li>
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


								@if(in_array(session('login_level'), [1,2]))

								<div class="card">
									<div class="card-header " style="background-color: #63cceb">
										<h5 style="color: white"><i class="fa fa-cog"></i> Pengaturan OPD</h5>
									</div>
									<div class="card-block">
										<form action="{{ route('admin.set.opd') }}" method="post">
											@csrf
											<div class="row">
												<div class="form-group col-sm-4">
													<label>OPD</label>
													<fieldset class="form-group">
														<select name="opd" class="form-control select2" required>
															<option value="">-= Pilih OPD =-</option>
															@foreach(@$dataOPD as $row)
															<option value="{{ $row->id }}" {{ session('opd')==$row->id?'selected':'' }}>
																{{ $row->opd_nama }}
															</option>
															@endforeach
														</select>
													</fieldset>
												</div>
												<div class="form-group col-sm-4">
													<button type="submit" class="btn btn-primary" style="position: relative; top: 20px">Gunakan</button>
												</div>
											</div>
										</form>
									</div>
								</div>
								@endif

								<div class="card">
									<div class="card-header " style="background-color: #63cceb">
										<h5 style="color: white"><i class="{{ $icon }}"></i> {{ $judul }}</h5>
									</div>
									<div class="card-block">
										<div class="table-responsive">

											<table class="my-datatable table table-striped table-bordered">
												<thead>
													<tr>
														<th width="10"></th>
														<th width="10">Kode</th>
														<th>Tujuan</th>
														<th>Sasaran</th>
														<th>Program</th>
														<th>Program</th>
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


@endsection

@section('script')
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css"> -->
<!-- <link rel="stylesheet" href="https://cdn.datatables.net/1.10.24/css/dataTables.bootstrap4.min.css"> -->
<style>
	.dataTables_filter label {
		width: 100%;
		float: right;
	}
</style>
<script>
	var link = window.location.pathname;
	var linkAction = '/create';
	var dataPilih = {};
	var kode = '{{ @$kode }}';
	$(document).ready(function() {


		$('select[name="opd"]').select2({
		});

		var groupColumn = [{
			name: 'Tujuan',
			data: 'rpjmd_tujuan_nama',
			column: 2
		}, {
			name: 'Sasaran',
			data: 'rpjmd_sasaran_nama',
			column: 3
		}, ];
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
					"targets": 4
				},
			],
			columns: [{
					"class": "details-control",
					"orderable": false,
					"data": null,
					"defaultContent": "<center><img src='https://datatables.net/examples/resources/details_open.png' /></center>"
				},
				{
					data: 'kode',
				},
				{
					data: 'rpjmd_tujuan_nama',
				},
				{
					data: 'rpjmd_sasaran_nama',
				},
				{
					data: 'program_nama',
				},
				{
					data: null,
					render: function(e) {
						return '<a href="./program/' + e.id + '"> ' + e.program_nama + ' </a>';
					}
				},
			],
			"displayLength": 25,
			"order": [
				[groupColumn[0].column, 'asc'],
				[groupColumn[1].column, 'asc'],
			],
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
							$(rows).eq(i).before(
								'<tr class="group"><td colspan="7">' + groupColumn[idx].name + ' : ' + name +
								'</td></tr>'
							);
							last = name;
						}
					});
				}
			}
		});
		var detailRows = [];

		$('.my-datatable tbody').on('click', 'tr td.details-control', function() {

			var tr = $(this).closest('tr');
			var row = table.row(tr);
			var idx = $.inArray(tr.attr('id'), detailRows);
			console.log(tr.attr('id'));
			if (row.child.isShown()) {
				tr.removeClass('details');
				row.child.hide();
				detailRows.splice(idx, 1);
				$(this).html("<center><img src='https://datatables.net/examples/resources/details_open.png'/></center>");
			} else {
				tr.addClass('details');
				row.child(format(row.data())).show();

				$(this).html("<center><img src='https://datatables.net/examples/resources/details_close.png'/></center>");
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

		$('input[name="kode"]').val(kode);
		$('textarea[name="rpjmd_tujuan_nama"]').html('');
	}

	function setUpdate(id) {

		$('#btn-form-data').show().html("Ubah");
		$("#form-data :input").prop("disabled", false);
		linkAction = '/update';
		$('#modal-form').modal('show');
		$('#form-data')[0].reset();
		$('textarea[name="rpjmd_tujuan_nama"]').html('');

		let url = link + '/get-data/' + id;
		$.when(sendAjax(url, {}, 'get', '#form-data')).done(function(res) {
			if (res.status) {
				$('input[name="id"]').val(res.data.id);
				$('input[name="kode"]').val(kode);
				$('textarea[name="rpjmd_sasaran_nama"]').html(res.data.rpjmd_sasaran_nama);
			} else {
				pesanSweet('Gagal!', res.pesan, 'warning');
			}
		});
	}

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


	$('select[name="opd"]').change(function() {
		val = $(this).val();
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
	})
</script>
@endsection