@extends('layouts.admin')

@section('content')
<?php
$judul = "Pengaturan";
$icon = "feather icon-user";
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
									<li class="breadcrumb-item"><a href="index.html"><i class="{{ $icon }}"></i></a></li>
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
									</div>
									<div class="card-block">
										<form action="" method="POST">
											@csrf
											<div class="row">
												<div class="form-group col-sm-3">
													<label for="basicInput">Tahun</label>
													<select name="tahun" class="form-control">
														<option value="1" {{ @$tahun->value=='1'?'selected':'' }} >{{ @session('rpjmd_tahun') }}</option>
														<option value="2" {{ @$tahun->value=='2'?'selected':'' }} >{{ @session('rpjmd_tahun')+1 }}</option>
														<option value="3" {{ @$tahun->value=='3'?'selected':'' }} >{{ @session('rpjmd_tahun')+2 }}</option>
														<option value="4" {{ @$tahun->value=='4'?'selected':'' }} >{{ @session('rpjmd_tahun')+3 }}</option>
														<option value="5" {{ @$tahun->value=='5'?'selected':'' }} >{{ @session('rpjmd_tahun')+4 }}</option>
													</select>
												</div>
												<div class="form-group col-sm-3">
													<label for="basicInput">Triwulan</label>
													<select name="triwulan" class="form-control">
														<option value="1" {{ @$triwulan->value=='1'?'selected':'' }} >1</option>
														<option value="2" {{ @$triwulan->value=='2'?'selected':'' }} >2</option>
														<option value="3" {{ @$triwulan->value=='3'?'selected':'' }} >3</option>
														<option value="4" {{ @$triwulan->value=='4'?'selected':'' }} >4</option>
													</select>
												</div>
											</div>
											<br>
												<button type="submit" class="btn btn-primary">Simpan</button>
										</form>
									</div>
								</div>


								<div class="card">
									<div class="card-header " style="background-color: #63cceb">
										<h5 style="color: white"><i class="{{ $icon }}"></i> Penjadwalan</h5>
									</div>
									<div class="card-block">
										
										<div class="btn btn-success" onClick="setCreate()" style="float:right;"><i class="feather icon-plus-circle"></i>Tambah</div>	
										<br>
										<br>
										<br>
											<table class="my-datatable table table-striped table-bordered" style="width:100%">
												<thead>
													<tr>
														<th>-</th>
														<th>No</th>
														<th>Nama</th>
														<th>Username</th>
														<th>Level</th>
														<th>Aksi</th>
													</tr>
												</thead>
											</table>
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
	<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable " role="document">
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
					<div class="form-group">
						<label for="basicInput">Nama</label>
						<input type="text" class="form-control" name="jadwal_nama" placeholder="Masukkan Jadwal Nama" required>
					</div>
					<div class="form-group" id="div-password">
						<label for="basicInput">Password</label>
						<input type="password" class="form-control" name="login_password" placeholder="Masukkan Password" required>
					</div>
					<div class="form-group">
						<label for="basicInput">Level</label>
						<fieldset class="form-group">
							<select class="form-control" name="login_level" required>
								<option value="">Pilih Level</option>
								<option value="1">Super Admin</option>
								<option value="2">Admin</option>
								<option value="3">OPD</option>
							</select>
						</fieldset>
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

<script>
$('li[data-menu-bar="pengaturan"]').addClass("active pcoded-trigger");


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

</script>
@endsection