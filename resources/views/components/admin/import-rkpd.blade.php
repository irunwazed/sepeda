@extends('layouts.admin')

@section('content')
<?php
$judul = "Import Renja";
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
										<form action="" method="POST" enctype="multipart/form-data">
											@csrf
											<div class="row">
												<div class="form-group col-sm-3">
													<label for="basicInput">File</label>
													<input type="file" class="form-control" name="file" required>
												</div>
												<div class="form-group col-sm-2">
													<label for="basicInput">Contoh File</label>
													<a class="btn btn-info" href="<?= $awalAssets ?>/file/contoh-import-rkpd.xls" target="_blank" rel="noopener noreferrer"> Download </a>
												</div>
											</div>
											<br>
											<button type="submit" class="btn btn-primary">Simpan</button>
										</form>
									</div>
								</div>

								<div class="card">
									<div class="card-header " style="background-color: #63cceb">
										<h5 style="color: white"><i class="{{ $icon }}"></i> Import Pagu Renja</h5>
									</div>
									<div class="card-block">
										<form action="./rkpd-pagu" method="POST" enctype="multipart/form-data">
											@csrf
											<div class="row">

												<div class="form-group col-sm-3">
													<label for="basicInput">File</label>
													<input type="file" class="form-control" name="file" required>
												</div>
												<div class="col-sm-3">
													<label for="basicInput">Pilih Pagu</label>
													<div class="form-check">
														<input class="form-check-input" type="checkbox" name="pagu" >
														<label class="form-check-label" for="flexCheckDefault">
															Pagu
														</label>
													</div>
													<div class="form-check">
														<input class="form-check-input" type="checkbox" name="paguPerubahan" checked>
														<label class="form-check-label" for="flexCheckChecked">
															Pagu Perubahan
														</label>
													</div>
												</div>
												<div class="form-group col-sm-2">
													<label for="basicInput">Contoh File</label>
													<a class="btn btn-info" href="<?= $awalAssets ?>/file/contoh-import-rkpd-pagu.xlsx" target="_blank" rel="noopener noreferrer"> Download </a>
												</div>
											</div>
											<br>
											<button type="submit" class="btn btn-primary">Simpan</button>
										</form>
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
						<input type="text" class="form-control" name="login_nama" placeholder="Masukkan Nama" required>
					</div>
					<div class="form-group">
						<label for="basicInput">Username</label>
						<input type="text" class="form-control" name="login_username" placeholder="Masukkan Username" required>
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
	$('li[data-menu-bar="import"]').addClass("active pcoded-trigger");
	
	$('select[name="opd"]').select2();
</script>
@endsection