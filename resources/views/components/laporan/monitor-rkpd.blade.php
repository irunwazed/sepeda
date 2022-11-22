@extends('layouts.admin')

@section('content')
<?php
	$judul = "Monitoring RKPD";
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

						<row class="row" id="laporan-view" style="display: block;">
							<div class="col-sm-12">
								<div class="card">
									<div class="card-header " style="background-color: #63cceb">
										<h5 style="color: white"><i class="{{ $icon }}"></i> {{ $judul }}</h5>
									</div>
									<div class="card-block">
										<a class="btn btn-info" target="_blank" href="./rkpd/cetak?cetak=view"><i
												class="fa fa-print"></i>Cetak</a>
										<a class="btn btn-warning" target="_blank" href="./rkpd/cetak?cetak=view&status=1"><i
												class="fa fa-print"></i>Cetak dengan Status</a>
										<!-- <a class="btn btn-warning" target="_blank" href="./rkpd/cetak?cetak=pdf"><i
												class="fa fa-file"></i>PDF</a> -->
										<iframe src="./rkpd/cetak?cetak=view" height="900" style="width: 100%"
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
<script>
var link = window.location.pathname;

$('li[data-menu-bar="monitor"]').addClass("active pcoded-trigger");

</script>
@endsection