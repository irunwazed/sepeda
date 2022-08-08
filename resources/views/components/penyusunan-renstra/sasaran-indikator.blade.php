@extends('layouts.admin')

@section('content')
<?php
$judul = "Sasaran Indikator";
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
									<li class="breadcrumb-item"><a href="#">Tujuan</a></li>
									<li class="breadcrumb-item"><a href="#">Sasaran</a></li>
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
									<div class="card-header " style="background-color: #63cceb">
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
														<th>Tujuan</th>
														<th>Sasaran</th>
														<th>Indikator</th>
														<th>Satuan</th>
														<th>Tahun Awal</th>
														<th>Tahun {{ @session('rpjmd_tahun') }}</th>
														<th>Tahun {{ @session('rpjmd_tahun')+1 }}</th>
														<th>Tahun {{ @session('rpjmd_tahun')+2 }}</th>
														<th>Tahun {{ @session('rpjmd_tahun')+3 }}</th>
														<th>Tahun {{ @session('rpjmd_tahun')+4 }}</th>
														<th>Tahun Akhir</th>
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
					<div class="form-group">
						<label for="basicInput">Tujuan</label>
						<fieldset class="form-group">
							<textarea name="renstra_sasaran_nama" class="form-control" cols="30" rows="5" readonly></textarea>
						</fieldset>
					</div>
					<div class="form-group">
						<label for="basicInput">Tujuan Indikator</label>
						<fieldset class="form-group">
							<textarea name="renstra_sasaran_indikator_nama" class="form-control" cols="30" rows="5" required></textarea>
						</fieldset>
					</div>
					<div class="form-group">
						<label for="basicInput">Satuan</label>
						<fieldset class="form-group">
							<input type="text" name="renstra_sasaran_indikator_satuan" class="form-control" required>
						</fieldset>
					</div>
					<div class="row">
						<div class="form-group col-sm-4">
							<label for="basicInput">Jenis Kinerja</label>
							<fieldset class="form-group">
								<select name="renstra_sasaran_indikator_nilai_jenis" class="form-control">
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
							<label for="basicInput">Target Tahun Awal</label>
							<fieldset class="form-group">
								<input type="number" step="0.0001" name="renstra_sasaran_indikator_th0_realisasi_target" class="form-control" required>
							</fieldset>
						</div>
						<div class="form-group col-sm-4">
							<label for="basicInput">Target {{ session('rpjmd_tahun') }}</label>
							<fieldset class="form-group">
								<input type="number" step="0.0001" name="renstra_sasaran_indikator_th1_target" class="form-control" required>
							</fieldset>
						</div>
						<div class="form-group col-sm-4">
							<label for="basicInput">Target {{ session('rpjmd_tahun')+1 }}</label>
							<fieldset class="form-group">
								<input type="number" step="0.0001" name="renstra_sasaran_indikator_th2_target" class="form-control" required>
							</fieldset>
						</div>
						<div class="form-group col-sm-4">
							<label for="basicInput">Target {{ session('rpjmd_tahun')+2 }}</label>
							<fieldset class="form-group">
								<input type="number" step="0.0001" name="renstra_sasaran_indikator_th3_target" class="form-control" required>
							</fieldset>
						</div>
						<div class="form-group col-sm-4">
							<label for="basicInput">Target {{ session('rpjmd_tahun')+3 }}</label>
							<fieldset class="form-group">
								<input type="number" step="0.0001" name="renstra_sasaran_indikator_th4_target" class="form-control" required>
							</fieldset>
						</div>
						<div class="form-group col-sm-4">
							<label for="basicInput">Target {{ session('rpjmd_tahun')+4 }}</label>
							<fieldset class="form-group">
								<input type="number" step="0.0001" name="renstra_sasaran_indikator_th5_target" class="form-control" required>
							</fieldset>
						</div>
						<div class="form-group col-sm-4">
							<label for="basicInput">Target Tahun Akhir</label>
							<fieldset class="form-group">
								<input type="number" step="0.0001" name="renstra_sasaran_indikator_th6_target" class="form-control" required>
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
	var renstra_sasaran_nama = '{{ @$dataAwal->renstra_sasaran_nama }}';
	$(document).ready(function() {

		var groupColumn = [
			{
				name: 'Tujuan',
				data: 'renstra_tujuan_nama',
				column: 1
			},
			{
				name: 'Sasaran',
				data: 'renstra_sasaran_nama',
				column: 2
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
				},{
					"visible": false,
					"targets": groupColumn[1].column
				},
			],
			columns: [{
					"class": "details-control",
					"orderable": false,
					"data": null,
					"defaultContent": "<center><img src='https://datatables.net/examples/resources/details_open.png' /></center>"
				},
				{
					data: 'renstra_tujuan_nama',
				},
				{
					data: 'renstra_sasaran_nama',
				},
				{
					data: 'renstra_sasaran_indikator_nama',
				},
				{
					data: 'renstra_sasaran_indikator_satuan',
				},
				{
					data: 'th0_target',
				},
				{
					data: 'th1_target',
				},
				{
					data: 'th2_target',
				},
				{
					data: 'th3_target',
				},
				{
					data: 'th4_target',
				},
				{
					data: 'th5_target',
				},
				{
					data: 'th6_target',
				},
				{
					data: 'action',
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
								'<tr class="group"><td colspan="11">' + groupColumn[idx].name + ' : ' + name +
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
		$('textarea[name="renstra_sasaran_nama"]').html(renstra_sasaran_nama);
		$('textarea[name="renstra_sasaran_indikator_nama"]').html('');
	}

	function setUpdate(id) {

		$('#btn-form-data').show().html("Ubah");
		$("#form-data :input").prop("disabled", false);
		linkAction = '/update';
		$('#modal-form').modal('show');
		$('#form-data')[0].reset();
		$('textarea[name="renstra_sasaran_nama"]').html('');

		let url = link + '/get-data/' + id;
		$.when(sendAjax(url, {}, 'get', '#form-data')).done(function(res) {
			if (res.status) {
				$('input[name="id"]').val(id);
				$('input[name="kode"]').val(kode);
				$('textarea[name="renstra_sasaran_nama"]').html(renstra_sasaran_nama);
				$('textarea[name="renstra_sasaran_indikator_nama"]').html(res.data.renstra_sasaran_indikator_nama);
				$('input[name="renstra_sasaran_indikator_satuan"]').val(res.data.renstra_sasaran_indikator_satuan);
				$('input[name="renstra_sasaran_indikator_th0_realisasi_target"]').val(res.data
					.renstra_sasaran_indikator_th0_realisasi_target);
				$('input[name="renstra_sasaran_indikator_th1_target"]').val(res.data.renstra_sasaran_indikator_th1_target);
				$('input[name="renstra_sasaran_indikator_th2_target"]').val(res.data.renstra_sasaran_indikator_th2_target);
				$('input[name="renstra_sasaran_indikator_th3_target"]').val(res.data.renstra_sasaran_indikator_th3_target);
				$('input[name="renstra_sasaran_indikator_th4_target"]').val(res.data.renstra_sasaran_indikator_th4_target);
				$('input[name="renstra_sasaran_indikator_th5_target"]').val(res.data.renstra_sasaran_indikator_th5_target);
				$('input[name="renstra_sasaran_indikator_th6_target"]').val(res.data.renstra_sasaran_indikator_th6_target);
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

	$('select[name="renstra_sasaran_indikator_nilai_jenis"]').change(function() {
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