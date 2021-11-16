@extends('layouts.admin')

@section('content')
<?php
	$judul = "Laporan Renja";
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
									<li class="breadcrumb-item"><a href=""><i class="{{ $icon }}"></i></a></li>
									<li class="breadcrumb-item"><a href="#">Laporan</a></li>
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
																{{ $row->opd_nama }}</option>
															@endforeach
														</select>
													</fieldset>
												</div>
												<div class="form-group col-sm-4">
													<button type="submit" class="btn btn-primary"
														style="position: relative; top: 30px">Gunakan</button>
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
										<form action="./renja/cetak" method="get" id="form-cetak" target="_blank">

											<div class="row">
												<!-- <div class="col-sm-3">
													<div class="form-group">
														<label for="basicInput">Cetak</label>
														<fieldset class="form-group">
															<select name="cetak" class="form-control">
																<option value="">-= Pilih Cetak =-</option>
																<option value="pdf">PDF</option>
																<option value="view">View</option>
															</select>
														</fieldset>
													</div>
												</div> -->
												<div class="col-sm-6">
													<div class="form-group">
														<fieldset class="form-group">
															<button type="submit" class="btn btn-primary" id="laporan-btn">Tampilkan</button>
														</fieldset>
													</div>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>


						<row class="row" id="laporan-view" style="display: none;">
							<div class="col-sm-12">
								<div class="card">
									<div class="card-header " style="background-color: #63cceb">
										<h5 style="color: white"><i class="{{ $icon }}"></i> {{ $judul }}</h5>
									</div>
									<div class="card-block">
										<a class="btn btn-info" target="_blank" href="./renja/cetak?cetak=view"><i
												class="fa fa-print"></i>Cetak</a>
										<a class="btn btn-warning" target="_blank" href="./renja/cetak?cetak=pdf"><i
												class="fa fa-file"></i>PDF</a>
										<iframe src="./renja/cetak?cetak=view" height="900" style="width: 100%"
											title="Iframe Example"></iframe>

									</div>
								</div>
							</div>
						</row>

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

$('#laporan-view').hide();

$('#form-cetak').submit(function(e) {

	if ($('#laporan-btn').html() == 'Tampilkan') {
		$('#laporan-btn').html('Sembunyikan');
		$('#laporan-view').show();
	} else {
		$('#laporan-btn').html('Tampilkan');
		$('#laporan-view').hide();
	}

	e.preventDefault();

})
</script>
@endsection