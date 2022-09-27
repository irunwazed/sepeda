@extends('layouts.admin')

@section('content')
<?php
$judul = "Sub Kegiatan";
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
									<li class="breadcrumb-item"><a href="#">RENSTRA</a></li>
									<li class="breadcrumb-item"><a href="#">Program</a></li>
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
									<div class="card-header">
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
									<div class="card-header">
										<h5 style="color: white"><i class="{{ $icon }}"></i> {{ $judul }}</h5>
										<div class="btn btn-success" onClick="setCreate()" style="right:20px;top: 10px;;position: absolute;"><i class="feather icon-plus-circle"></i>Tambah
										</div>
									</div>
									<div class="card-block">
										<div class="table-responsive">

											<table class="my-datatable table table-striped table-bordered">
												<thead>
													<tr>
														<th width="10"></th>
														<th>Program</th>
														<th>Kegiatan</th>
														<th>Sub Kegiatan</th>
														<th>Indikator</th>
														<th width="20">Kinerja</th>
														<th width="20">Satuan</th>
														<th width="150">Pagu</th>
														<th width="10">Aksi</th>
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
<div class="modal fade text-left" id="modal-form" tabindex="-1" role="dialog" aria-labelledby="myModalLabel4" aria-hidden="true">
	<div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable " role="document">
		<!-- class modal-xl -->
		<div class="modal-content">
			<div class="modal-header bg-info">
				<h4 class="modal-title" style="color: #FFF" id="myModalLabel4"> <i class="{{ $icon }}"></i> Data {{ $judul }}
				</h4>
				<button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
					<i data-feather="x"></i>
				</button>
			</div>
			<div class="modal-body">
				<form action="" id="form-data">
					@csrf
					<input type="hidden" name="id">
					<input type="hidden" name="kode" value="{{ @$kode }}">

					<div class="row">
						<div class="form-group col-sm-4">
							<label>Program</label>
							<fieldset class="form-group">
								<select name="program" class="form-control select2" required>
									<option value="">-= Pilih Program =-</option>
									@foreach(@$dataProgram as $row)
									<option value="{{ $row->permen_ver.'-'.$row->urusan_kode.'-'.$row->bidang_kode.'-'.$row->program_kode }}">
										{{ $row->program_nama }}
									</option>
									@endforeach
								</select>
							</fieldset>
						</div>
						<div class="form-group col-sm-4">
							<label>Kegiatan</label>
							<fieldset class="form-group">
								<select name="kegiatan" class="form-control select2" required>
									<option value="">-= Pilih Kegiatan =-</option>
								</select>
							</fieldset>
						</div>
						<div class="form-group col-sm-4">
							<label>Sub Kegiatan</label>
							<fieldset class="form-group">
								<select name="sub_kegiatan" class="form-control select2" required>
									<option value="">-= Pilih Sub Kegiatan =-</option>
								</select>
							</fieldset>
						</div>
						<div class="form-group col-sm-12">
							<label for="basicInput">Sub Kegiatan Indikator</label>
							<fieldset class="form-group">
								<textarea name="rkpd_sub_kegiatan_indikator_nama" class="form-control" cols="30" rows="5"></textarea>
							</fieldset>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-sm-4">
							<label for="basicInput">Jenis Kinerja</label>
							<fieldset class="form-group">
								<select name="rkpd_sub_kegiatan_indikator_nilai_jenis" class="form-control">
									<option value="">-= Pilih Jenis Nilai =-</option>
									<option value="1">Nilai</option>
									<option value="2">Pilihan</option>
								</select>
							</fieldset>
						</div>
						<div class="col-sm-8" id="indikator-nilai">
						</div>
					</div>
					<div class="row">
						<div class="form-group col-sm-4">
							<label for="basicInput">Target Kinerja</label>
							<fieldset class="form-group">
								<input type="text" name="rkpd_sub_kegiatan_indikator_target" class="form-control">
							</fieldset>
						</div>
						<div class="form-group col-sm-2">
							<label for="basicInput">Satuan</label>
							<fieldset class="form-group">
								<input type="text" name="rkpd_sub_kegiatan_indikator_satuan" class="form-control">
							</fieldset>
						</div>
						<div class="form-group col-sm-6">
							<label for="basicInput">Pagu</label>
							<fieldset class="form-group">
								<input type="number" step="0.0001" name="rkpd_sub_kegiatan_indikator_pagu" class="form-control">
							</fieldset>
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
</style>
<script>
$('li[data-menu-bar="penyusunan"]').addClass("active pcoded-trigger");
	var link = window.location.pathname;
	var linkAction = '/create';
	var dataPilih = {};
	var kode = '{{ @$kode }}';
	$(document).ready(function() {

		$('select[name="opd"]').select2();
		$('select[name="program"]').select2({
			dropdownParent: $("#modal-form"),
		});
		$('select[name="kegiatan"]').select2({
			dropdownParent: $("#modal-form"),
		});
		$('select[name="sub_kegiatan"]').select2({
			dropdownParent: $("#modal-form"),
		});
		
		var groupColumn = [{
			name: 'Program',
			data: 'program',
			column: 1
		}, {
			name: 'Kegiatan',
			data: 'kegiatan',
			column: 2
		}, {
			name: 'Sub Kegiatan',
			data: 'sub_kegiatan',
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
					data: 'program_nama',
				},
				{
					data: 'kegiatan_nama',
				},
				{
					data: 'sub_kegiatan_nama',
				},
				{
					data: 'rkpd_sub_kegiatan_indikator_nama',
				},
				{
					data: 'target',
				},
				{
					data: 'rkpd_sub_kegiatan_indikator_satuan',
				},
				{
					data: 'rkpd_sub_kegiatan_indikator_pagu',
					render: function(e) {
						return '-'; //formatRupiah(e);
					},
					className: "text-right"
				},
				{
					data: 'action',
					name: 'action'
				},
			],
			"displayLength": 25,
			"order": [
				[groupColumn[0].column, 'asc'],
				[groupColumn[1].column, 'asc'],
				[groupColumn[2].column, 'asc'],
			],
			"drawCallback": function(settings) {
				var api = this.api();
				var rows = api.rows({
					page: 'current'
				}).nodes();
				var last = null;

				let space = '';
				for (let idx = 0; idx < groupColumn.length; idx++) {
					space += '';
					api.column({
						page: 'current'
					}).data().each(function(group, i) {

						let name = group[groupColumn[idx].data];
						if (last !== name) {

							if(idx == 2){
								$(rows).eq(i).before(
									'<tr class="group"><td colspan="4">' + name +
									'</td><td class="text-right">'+formatRupiah(group['sub_kegiatan_pagu'])+'</td><td></td></tr>'
								);
							}else{
								$(rows).eq(i).before(
									'<tr class="group"><td colspan="17">' + name +
									'</td></tr>'
								);
							}
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

	function setClear(){
		$('#indikator-nilai').html('');
		$('select[name="kegiatan"]').empty().append('<option value="">-= Pilih Kegiatan =-</option>');
		$('select[name="sub_kegiatan"]').empty().append('<option value="">-= Pilih Sub Kegiatan =-</option>');
		$('#form-data')[0].reset();
		$('textarea[name="rkpd_sub_kegiatan_indikator_nama"]').html('');
	}

	function setCreate() {
		linkAction = '/create';
		$('#btn-form-data').show().html("Tambah");
		$("#form-data :input").prop("disabled", false);
		$('#modal-form').modal('show');
		setClear();
		$('input[name="kode"]').val(kode);
	}

	function setUpdate(id) {

		$('#btn-form-data').show().html("Ubah");
		$("#form-data :input").prop("disabled", false);
		linkAction = '/update';
		$('#modal-form').modal('show');
		setClear();

		let url = link + '/get-data/' + id;
		$.when(sendAjax(url, {}, 'get', '#form-data')).done(function(res) {
			if (res.status) {
				$('input[name="id"]').val(res.data.id);
				$('input[name="kode"]').val(kode);
				$('select[name="program"]').val(res.data.permen_ver + '-' + res.data.urusan_kode + '-' + res.data.bidang_kode + '-' + res.data.program_kode).trigger("click");

				$('select[name="kegiatan"]').empty().append('<option>' + res.data.kegiatan_nama + '</option>');
				$('select[name="sub_kegiatan"]').empty().append('<option value="' + res.data.permen_ver + '-' + res.data.urusan_kode + '-' + res.data.bidang_kode + '-' + res.data.program_kode + '-' + res.data.kegiatan_kode + '-' + res.data.sub_kegiatan_kode + '">' + res.data.sub_kegiatan_nama + '</option>');

				$('textarea[name="rkpd_sub_kegiatan_indikator_nama"]').html(res.data.rkpd_sub_kegiatan_indikator_nama);
				$('input[name="rkpd_sub_kegiatan_indikator_satuan"]').val(res.data.rkpd_sub_kegiatan_indikator_satuan);
				$('input[name="rkpd_sub_kegiatan_indikator_target"]').val(res.data
					.rkpd_sub_kegiatan_indikator_target);
				$('input[name="rkpd_sub_kegiatan_indikator_pagu"]').val(res.data
					.sub_kegiatan_pagu);
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

	$('select[name="program"]').change(function() {
		let val = $(this).val();
		let url = '{{ url("/api/program/get-kegiatan") }}';

		$.when(sendAjax(url, [{
			name: 'program',
			value: val
		}], 'get', 'select[name="kegiatan"]')).done(function(res) {
			if (res.status == true) {
				$('select[name="kegiatan"]').empty().append('<option>-= Pilih Kegiatan =-</option>');
				for (let i = 0; i < res.data.length; i++) {
					$('select[name="kegiatan"]').append('<option value="' + res.data[i].permen_ver + '-' + res.data[i]
						.urusan_kode + '-' + res.data[i].bidang_kode + '-' + res.data[i].program_kode + '-' + res.data[i]
						.kegiatan_kode + '">' + res.data[i].kegiatan_nama + '</option>')
				}
			} else {
				// pesanSweet('Gagal!', res.pesan, 'warning');
			}
		});
	});

	$('select[name="kegiatan"]').change(function() {
		let val = $(this).val();
		console.log(val);
		let url = '{{ url("/api/kegiatan/get-sub-kegiatan") }}';

		$.when(sendAjax(url, [{
			name: 'kegiatan',
			value: val
		}], 'get', 'select[name="sub_kegiatan"]')).done(function(res) {
			if (res.status == true) {
				$('select[name="sub_kegiatan"]').empty().append('<option>-= Pilih Sub Kegiatan =-</option>');
				for (let i = 0; i < res.data.length; i++) {
					$('select[name="sub_kegiatan"]').append('<option value="' + res.data[i].permen_ver + '-' + res.data[i]
						.urusan_kode + '-' + res.data[i].bidang_kode + '-' + res.data[i].program_kode + '-' + res.data[i]
						.kegiatan_kode + '-' + res.data[i].sub_kegiatan_kode + '">' + res.data[i].sub_kegiatan_nama +
						'</option>')
				}
			} else {
				// pesanSweet('Gagal!', res.pesan, 'warning');
			}
		});
	});


	

	$('select[name="rkpd_sub_kegiatan_indikator_nilai_jenis"]').change(function() {
		let val = $(this).val();
		console.log(val);
		if (val == 2) {
			addIndikatorNilai();
		} else {
			$('#indikator-nilai').html('');
			indikatorNilai = 1;
		}
	});

	var indikatorNilai = 1;

	function addIndikatorNilai() {
		isi = '	<div class="row" id="nilai-' + indikatorNilai + '">\
						<div class="form-group col-sm-5" >\
							<label for="basicInput">Nilai Max</label>\
							<fieldset class="form-group">\
								<input type="number" step="0.0001" name="indikator_nilai[]" class="form-control" required>\
							</fieldset>\
						</div>\
						<div class="form-group col-sm-6">\
							<label for="basicInput">Nomenklatur</label>\
							<fieldset class="form-group">\
								<input type="text" name="indikator_nama[]" class="form-control" required>\
							</fieldset>\
						</div>\
						<div class="col-sm-1">\
							<span onClick="addIndikatorNilai()">+</span> <span onClick="deleteIndikatorNilai(' + indikatorNilai + ')">-</span>\
						</div>\
					</div>';
		indikatorNilai++;
		$('#indikator-nilai').append(isi);
	}

	function deleteIndikatorNilai(id) {
		$('#nilai-' + id).html('');
	}
</script>
@endsection