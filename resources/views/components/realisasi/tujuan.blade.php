@extends('layouts.admin')

@section('content')
<?php
$judul = "Realisasi Tujuan";
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
									<li class="breadcrumb-item"><a href="#">Realisasi</a></li>
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
									</div>
									<div class="card-block">
										<div class="table-responsive">

											<table class="my-datatable table table-striped table-bordered">
												<thead>
													<tr>
														<th rowspan="2" width="10"></th>
														<th rowspan="2">Visi</th>
														<th rowspan="2">Misi</th>
														<th rowspan="2">Tujuan</th>
														<th rowspan="2">Indikator</th>
														<th rowspan="2" width="20">Satuan</th>
														<th colspan="2">Target (Tahun {{ session('rpjmd_tahun')+session('tahun')-1 }})</th>
														<th colspan="2">Realisasi (Tahun {{ session('rpjmd_tahun')+session('tahun')-1 }})</th>
														<th rowspan="2" width="10">Aksi</th>
													</tr>
													<tr>
														<th width="20">Kinerja</th>
														<th width="150">Pagu</th>
														<th width="20">Kinerja</th>
														<th width="150">Pagu</th>
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
						<div class="form-group col-sm-12">
							<label for="basicInput">Tujuan</label>
							<fieldset class="form-group">
								<textarea name="rpjmd_tujuan_nama" class="form-control" cols="30" rows="5" readonly></textarea>
							</fieldset>
						</div>
						<div class="form-group col-sm-12">
							<label for="basicInput">Indikator</label>
							<fieldset class="form-group">
								<textarea name="rpjmd_tujuan_indikator_nama" class="form-control" cols="30" rows="5" readonly></textarea>
							</fieldset>
						</div>
						<div class="form-group col-sm-4">
							<label for="basicInput">Target Kinerja</label>
							<fieldset class="form-group">
								<input type="number" step="0.0001" name="rpjmd_tujuan_indikator_target" class="form-control" readonly>
							</fieldset>
						</div>
						<div class="form-group col-sm-4">
							<label for="basicInput">Satuan</label>
							<fieldset class="form-group">
								<input type="text" name="rpjmd_tujuan_indikator_satuan" class="form-control" readonly>
							</fieldset>
						</div>
						<div class="form-group col-sm-3" id="indikator-json" style="border: solid #CCCCCC 1px;">
						</div>
						<div class="form-group col-sm-4">
							<label for="basicInput">Realisasi Kinerja</label>
							<fieldset class="form-group">
								<input type="number" step="0.0001" name="realisasi_kinerja" class="form-control" required>
							</fieldset>
						</div>
						<div class="form-group col-sm-4">
							<label for="basicInput">Satuan</label>
							<fieldset class="form-group">
								<input type="text" name="rpjmd_tujuan_indikator_satuan" class="form-control" readonly>
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
$('li[data-menu-bar="realisasi"]').addClass("active pcoded-trigger");
	var link = window.location.pathname;
	var linkAction = '/create';
	var dataPilih = {};
	var kode = '{{ @$kode }}';
	var triwulan = 1;
	var tahun = "{{ session('rpjmd_tahun') }}";
	var tahun_ke = "{{ session('tahun') }}";

	$(document).ready(function() {

		var groupColumn = [{
			name: 'Visi',
			data: 'rpjmd_visi_nama',
			column: 1
		}, {
			name: 'Misi',
			data: 'rpjmd_misi_nama',
			column: 2
		}, {
			name: 'Tujuan',
			data: 'rpjmd_tujuan_nama',
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
			}, {
				"visible": false,
				"targets": groupColumn[1].column
			}, {
				"visible": false,
				"targets": groupColumn[2].column
			}, ],
			columns: [{
					"class": "details-control",
					"orderable": false,
					"data": null,
					"defaultContent": "<center><img src='https://datatables.net/examples/resources/details_open.png' /></center>"
				},
				{
					data: 'rpjmd_visi_nama',
				},
				{
					data: 'rpjmd_misi_nama',
				},
				{
					data: 'rpjmd_tujuan_nama',
				},
				{
					data: 'rpjmd_tujuan_indikator_nama',
				},
				{
					data: 'rpjmd_tujuan_indikator_satuan',
				},
				{
					data: 'target',
				},
				{
					data: 'pagu',
					render: function(e) {
						return '-';
					},
					className: "text-right"
				},
				{
					data: 'realisasi_target',
				},
				{
					data: 'realisasi_pagu',
					render: function(e) {
						return '-';
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

				console.log(api);

				let space = '';
				for (let idx = 0; idx < groupColumn.length; idx++) {
					space += '';
					api.column({
						page: 'current'
					}).data().each(function(group, i) {
						console.log(group);
						let name = group[groupColumn[idx].data];
						if (last !== name) {
							if (idx == 2) {

								$(rows).eq(i).before(
									'<tr class="group"><td colspan="2">' + groupColumn[idx].name + ' : ' + name +
									'</td><td></td><td></td>' +
									'</td><td class="text-right">' + formatRupiah(group['pagu']) +
									'</td><td></td><td class="text-right">' + formatRupiah(group['realisasi_pagu']) +
									'</td><td></td></tr>'
								);

							} else {
								$(rows).eq(i).before(
									'<tr class="group"><td colspan="8">' + groupColumn[idx].name + ' : ' + name + '</td></tr>'
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

	function setCreate() {
		linkAction = '/create';
		$('#btn-form-data').show().html("Simpan");
		$("#form-data :input").prop("disabled", false);
		$('#modal-form').modal('show');
		$('#form-data')[0].reset();

		$('textarea[name="rpjmd_tujuan_nama"]').html('');
		$('textarea[name="rpjmd_tujuan_indikator_nama"]').html('');
		$('input[name="kode"]').val(kode);
	}

	function setUpdate(id) {

		$('#btn-form-data').show().html("Simpan");
		$("#form-data :input").prop("disabled", false);
		linkAction = '/update';
		$('#modal-form').modal('show');
		$('#form-data')[0].reset();


		let url = link + '/get-data/' + id;
		$.when(sendAjax(url, {}, 'get', '#form-data')).done(function(res) {
			if (res.status) {
				dataPilih = res.data;
				$('input[name="id"]').val(res.data.id);
				$('input[name="kode"]').val(kode);

				$('input[name="realisasi_kinerja"]').val(dataPilih['rpjmd_tujuan_indikator_th' + tahun_ke +
					'_realisasi_target']);
				$('input[name="realisasi_pagu"]').val(dataPilih['rpjmd_tujuan_indikator_th' + tahun_ke + '_realisasi_pagu']);
				$('input[name="capaian_kinerja"]').val(dataPilih['rpjmd_tujuan_indikator_th' + tahun_ke +
					'_capaian_target']);

				$('textarea[name="rpjmd_tujuan_nama"]').html(res.data.rpjmd_tujuan_nama);
				$('textarea[name="rpjmd_tujuan_indikator_nama"]').html(res.data.rpjmd_tujuan_indikator_nama);
				$('input[name="rpjmd_tujuan_indikator_satuan"]').val(res.data.rpjmd_tujuan_indikator_satuan);
				$('input[name="rpjmd_tujuan_indikator_target"]').val(res.data['rpjmd_tujuan_indikator_th' + tahun_ke +
					'_target']);

				let arrJson = JSON.parse(res.data.rpjmd_tujuan_indikator_nilai_json);
				let strJson = '';
				for (let j = 0; j < arrJson.length; j++) {
					strJson += (j + 1) + '. ' + arrJson[j]['nilai'] + ' => ' + arrJson[j]['nama'] + '<br>';
				}
				$('#indikator-json').html(strJson);
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
</script>
@endsection