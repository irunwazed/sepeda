@extends('layouts.admin')

@section('content')

<!-- [ Main Content ] start -->
<div class="pcoded-main-container">
	<div class="pcoded-wrapper">
		<div class="pcoded-content">
			<div class="pcoded-inner-content">
				<!-- [ breadcrumb ] start -->

				<!-- [ breadcrumb ] end -->
				<div class="main-body">
					<div class="page-wrapper">
						<!-- [ Main Content ] start -->
						<div class="row">
							<!--[ daily sales section ] start-->
							<div class="col-md-6 col-xl-4">
								<div class="card daily-sales">
									<div class="card-block">
										<h6 class="mb-4">Jumlah Program</h6>
										<div class="row d-flex align-items-center">
											<div class="col-9">
												<h3 class="f-w-300 d-flex align-items-center m-b-0">{{ @$jumProgram }}</h3>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-xl-4">
								<div class="card daily-sales">
									<div class="card-block">
										<h6 class="mb-4">Jumlah Kegiatan</h6>
										<div class="row d-flex align-items-center">
											<div class="col-9">
												<h3 class="f-w-300 d-flex align-items-center m-b-0">{{ @$jumKegiatan }}</h3>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-xl-4">
								<div class="card daily-sales">
									<div class="card-block">
										<h6 class="mb-4">Jumlah Sub Kegiatan</h6>
										<div class="row d-flex align-items-center">
											<div class="col-9">
												<h3 class="f-w-300 d-flex align-items-center m-b-0">{{ @$jumSubKegiatan }}</h3>
											</div>
										</div>
									</div>
								</div>
							</div>
							

						</div>
						<center>
							<img width="300" src="<?=$awalAssets?>/images/logo-morowali.png" alt="">
						</center>
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

@endsection