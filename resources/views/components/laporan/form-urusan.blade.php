@extends('layouts.admin')

@section('content')
<?php
	$judul = "Form Urusan";
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
								<div class="card">
									<div class="card-header " style="background-color: #63cceb">
										<h5 style="color: white"><i class="{{ $icon }}"></i> {{ $judul }}</h5>
									</div>
									<div class="card-block">
										<form action="./form-urusan/cetak" method="get" id="form-cetak" target="_blank">
											<div class="row">
												<div class="col-sm-3">
													<div class="form-group">
														<label for="basicInput">Urusan</label>
														<fieldset class="form-group">
															<select name="urusan" class="form-control">
																<option value="">-= Pilih Urusan =-</option>
																<option value="1">1. URUSAN PEMERINTAHAN WAJIB YANG BERKAITAN DENGAN PELAYANAN DASAR</option>
																<option value="2">2. URUSAN PEMERINTAHAN WAJIB YANG TIDAK BERKAITAN DENGAN PELAYANAN DASAR</option>
																<option value="3">3. URUSAN PEMERINTAHAN PILIHAN</option>
																<option value="4">4. UNSUR PENDUKUNG</option>
																<option value="5">5. UNSUR PENUNJANG</option>
																<option value="6">6. UNSUR PENGAWASAN</option>
																<option value="7">7. UNSUR KEWILAYAHAN</option>
																<option value="8">8. UNSUR PEMERINTAHAN UMUM</option>
															</select>
														</fieldset>
													</div>
												</div>
												<div class="col-sm-3">
													<div class="form-group">
														<label for="basicInput">Tahun</label>
														<fieldset class="form-group">
															<select name="tahun" class="form-control">
																<option value="">-= Pilih Tahun =-</option>
																@for($i = date('Y') +1; $i >= 2020; $i--)
																<?php
																	$val = ($i-2018)%5;
																	$val = $val==0?5:$val;
																?>
																<option value="{{ $val }}">{{ $i }}</option>
																@endfor
															</select>
														</fieldset>
													</div>
												</div>
												<div class="col-sm-6">
													<div class="form-group">
														<fieldset class="form-group">
															<button style="margin-top: 30px" type="submit" class="btn btn-primary" id="laporan-btn">Tampilkan</button>
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
										<a class="btn btn-info" id="cetak-btn"  target="_blank" href="./urusan/cetak?cetak=view&urusan={{ @$_GET['urusan'] }}&indikator=1"><i
												class="fa fa-print"></i>Cetak</a>
										<a class="btn btn-warning" id="cetak-btn-indi"  target="_blank" href="./urusan/cetak?cetak=view&urusan={{ @$_GET['urusan'] }}&indikator=0"><i
												class="fa fa-print"></i>Cetak Tanpa Indikator</a>
										<!-- <a class="btn btn-warning" target="_blank" href="./urusan/cetak?cetak=pdf"><i
												class="fa fa-file"></i>PDF</a> -->
										<iframe src="./urusan/cetak?cetak=view" id="cetak-frame" height="900" style="width: 100%"
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

$('li[data-menu-bar="dokumen"]').addClass("active pcoded-trigger");
$('#laporan-view').hide();

$('.select2').select2();

$('#form-cetak').submit(function(e) {

	if ($('#laporan-btn').html() == 'Tampilkan') {
		$('#laporan-btn').html('Sembunyikan');
		$('#laporan-view').show();

		let urusan = $('select[name="urusan"]').val();
		let tahun = $('select[name="tahun"]').val();
		

		$('#cetak-btn-indi').attr("href", "./urusan/cetak?cetak=view&&urusan="+urusan+"&&tahun="+tahun+"&indikator=0")
		$('#cetak-btn').attr("href", "./urusan/cetak?cetak=view&&urusan="+urusan+"&&tahun="+tahun+"&indikator=1")
		$('#cetak-frame').attr("src", "./urusan/cetak?cetak=view&&urusan="+urusan+"&&tahun="+tahun+"&indikator=1")

	} else {
		$('#laporan-btn').html('Tampilkan');
		$('#laporan-view').hide();
	}

	e.preventDefault();

})
</script>
@endsection