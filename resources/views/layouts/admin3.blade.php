<!DOCTYPE html>
<html lang="en">

<head>
	<title>Admin | {{ env('APP_NAME') }}</title>
	<!-- HTML5 Shim and Respond.js IE11 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 11]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
	<!-- Meta -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="description" content="Free Datta Able Admin Template come up with latest Bootstrap 4 framework with basic components, form elements and lots of pre-made layout options" />
	<meta name="keywords" content="admin templates, bootstrap admin templates, bootstrap 4, dashboard, dashboard templets, sass admin templets, html admin templates, responsive, bootstrap admin templates free download,premium bootstrap admin templates, datta able, datta able bootstrap admin template, free admin theme, free dashboard template" />
	<meta name="author" content="CodedThemes" />

	<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />

	<!-- Favicon icon -->
	<!-- <link rel="icon" href="<?= $awalAssets ?>/admin/assets/images/favicon.ico" type="image/x-icon"> -->
	<link rel="icon" href="<?= $awalAssets ?>/images/logo-morowali.png" type="image/x-icon">
	<!-- fontawesome icon -->
	<link rel="stylesheet" href="<?= $awalAssets ?>/admin/assets/fonts/fontawesome/css/fontawesome-all.min.css">
	<!-- animation css -->
	<link rel="stylesheet" href="<?= $awalAssets ?>/admin/assets/plugins/animation/css/animate.min.css">
	<!-- vendor css -->
	<link rel="stylesheet" href="<?= $awalAssets ?>/admin/assets/css/style.css">

	<style>
		table.dataTable tr.odd {
			background-color: #EBEDEF;
		}

		table.dataTable tr.even {
			background-color: white;
		}

		table.dataTable thead tr {
			text-align: center;
			background: rgb(0, 36, 32);
			background: linear-gradient(164deg, #5D6D7E 0%, #5D6D7E 0%, #85929E 68%);
			color: white;
		}

		table.dataTable tfoot tr {
			text-align: center;
			background: rgb(0, 36, 32);
			background: linear-gradient(164deg, #5D6D7E 0%, #5D6D7E 0%, #85929E 68%);
		}

		table.dataTable tr.odd td.sorting_1 {
			background-color: #D3D6FF;
		}

		table.dataTable tr.odd td.sorting_2 {
			background-color: #DADCFF;
		}

		table.dataTable tr.odd td.sorting_3 {
			background-color: #E0E2FF;
		}

		table.dataTable tr.even td.sorting_1 {
			background-color: #EAEBFF;
		}

		table.dataTable tr.even td.sorting_2 {
			background-color: #F2F3FF;
		}

		table.dataTable tr.even td.sorting_3 {
			background-color: #F9F9FF;
		}

		.pcoded-main-container {
			background-image: url('<?= $awalAssets ?>/images/bg-admin.png');
		}
	</style>
</head>

<body>
	<!-- [ Pre-loader ] start -->
	<div class="loader-bg">
		<div class="loader-track">
			<div class="loader-fill"></div>
		</div>
	</div>
	<!-- [ Pre-loader ] End -->
	<!-- [ navigation menu ] start -->
	<nav class="pcoded-navbar icon-colored">
		<div class="navbar-wrapper">
			<div class="navbar-brand header-logo">
				<a href="#" class="b-brand">
					<div class="b-bg" style="color: white">
						<svg version="1.0" xmlns="http://www.w3.org/2000/svg" width="20pt" height="316.000000pt" viewBox="0 0 154.000000 316.000000" preserveAspectRatio="xMidYMid meet">

							<g transform="translate(0.000000,316.000000) scale(0.100000,-0.100000)" fill="#FFFFFF" stroke="none">
								<path d="M1089 2832 c-491 -363 -731 -546 -789 -599 l-54 -50 -38 -549 c-20
-302 -37 -560 -38 -573 0 -22 2 -23 42 -17 59 9 431 211 469 254 24 27 29 42
29 83 0 68 -18 105 -88 183 -170 188 -153 348 50 479 29 19 186 112 348 207
162 95 302 178 310 186 12 11 19 80 35 314 11 165 20 300 19 300 -1 0 -133
-98 -295 -218z" />
								<path d="M1272 2100 c-101 -46 -382 -203 -406 -227 -34 -34 -47 -81 -35 -134
13 -57 21 -70 89 -145 78 -86 112 -156 113 -231 1 -115 -61 -184 -283 -315
-80 -47 -234 -138 -342 -202 -147 -87 -199 -122 -202 -139 -9 -40 -39 -567
-33 -573 10 -10 1002 731 1084 810 44 43 53 58 53 87 0 19 16 266 35 549 19
283 35 521 35 528 0 18 -59 14 -108 -8z" />
							</g>
						</svg>
					</div>


					<span style=" padding-left: 10px; font-weight: bold; font-size: 25px;" class="b-title">S P K P</span>
				</a>
				<a class="mobile-menu" id="mobile-collapse" href="javascript:"><span></span></a>
			</div>

			<?php


			$levelName = \Request::get('levelPath');
			// $levelName = 'admin';
			?>
			<div class="navbar-content scroll-div">
				<ul class="nav pcoded-inner-navbar">

					<li class="nav-item pcoded-menu-caption">
						<label>Navigation</label>
					</li>
					<li data-menu="/{{ $levelName }}" class="nav-item">
						<a href="{{ url('/'.$levelName) }}" class="nav-link "><span class="pcoded-micon"><i class="feather icon-home"></i></span><span class="pcoded-mtext">Dashboard</span></a>
					</li>
					<li class="nav-item pcoded-menu-caption">
						<label>Penyusunan</label>
					</li>

					<!-- <li data-menu-bar="penyusunan" class="nav-item pcoded-hasmenu">
						<a href="javascript:" class="nav-link "><span class="pcoded-micon"><i class="feather icon-file-text"></i></span><span class="pcoded-mtext">Data</span></a>
						<ul class="pcoded-submenu">
							@if(in_array(session('login_level'), [1,2]))
							<li data-menu="/{{ $levelName }}/penyusunan/rpjmd" class=""><a href="{{ route($levelName.'.penyusunan.rpjmd') }}" class="">RPJMD</a></li>
							@endif
							<li data-menu="/{{ $levelName }}/penyusunan/renstra/program" class=""><a href="{{ route($levelName.'.penyusunan.renstra') }}" class="">Renstra</a></li>
							<li data-menu="/{{ $levelName }}/penyusunan/renja/sub-kegiatan" class=""><a href="{{ route($levelName.'.penyusunan.renja') }}" class="">RENJA</a></li>
						</ul>
					</li> -->
					@if(in_array(session('login_level'), [1,2]))
					<li data-menu="/{{ $levelName }}/penyusunan/rpjmd" class="nav-item">
						<a href="{{ route($levelName.'.penyusunan.rpjmd') }}" class="nav-link "><span class="pcoded-micon"><i class="feather icon-file-text"></i></span><span class="pcoded-mtext">RPJMD</span></a>
					</li>
					@endif
					<li data-menu="/{{ $levelName }}/penyusunan/renstra/program" class="nav-item">
						<a href="{{ route($levelName.'.penyusunan.renstra') }}" class="nav-link "><span class="pcoded-micon"><i class="feather icon-file-minus"></i></span><span class="pcoded-mtext">Renstra</span></a>
					</li>
					<li data-menu="/{{ $levelName }}/penyusunan/renja/sub-kegiatan" class="nav-item">
						<a href="{{ route($levelName.'.penyusunan.renja') }}" class="nav-link "><span class="pcoded-micon"><i class="feather icon-file"></i></span><span class="pcoded-mtext">RENJA</span></a>
					</li>
					<li class="nav-item pcoded-menu-caption">
						<label>Realisasi</label>
					</li>

					<!-- <li data-menu-bar="realisasi" class="nav-item pcoded-hasmenu">
						<a href="javascript:" class="nav-link "><span class="pcoded-micon"><i class="feather icon-sidebar"></i></span><span class="pcoded-mtext">RPJMD & RENSTRA</span></a>
						<ul class="pcoded-submenu">
							<li data-menu="/{{ $levelName }}/realisasi/tujuan" class=""><a href="{{ route($levelName.'.realisasi.tujuan') }}" class="">Tujuan</a></li>
							<li data-menu="/{{ $levelName }}/realisasi/sasaran" class=""><a href="{{ route($levelName.'.realisasi.sasaran') }}" class="">Sasaran</a></li>
							<li data-menu="/{{ $levelName }}/realisasi/program" class=""><a href="{{ route($levelName.'.realisasi.program') }}" class="">Program</a></li>
							<li data-menu="/{{ $levelName }}/realisasi/kegiatan" class=""><a href="{{ route($levelName.'.realisasi.kegiatan') }}" class="">Kegiatan</a></li>
						</ul>
					</li>
					<li data-menu-bar="realisasi-renja" class="nav-item pcoded-hasmenu">
						<a href="javascript:" class="nav-link "><span class="pcoded-micon"><i class="feather icon-server"></i></span><span class="pcoded-mtext">Renja</span></a>
						<ul class="pcoded-submenu">
							<li data-menu="/{{ $levelName }}/realisasi/renja" class=""><a href="{{ route($levelName.'.realisasi.renja') }}" class="">Sub Kegiatan</a></li>
						</ul>
					</li> -->
					<li data-menu="/{{ $levelName }}/realisasi/tujuan" class="nav-item">
						<a href="{{ route($levelName.'.realisasi.tujuan') }}" class="nav-link "><span class="pcoded-micon"><i class="feather icon-compass"></i></span><span class="pcoded-mtext">Tujuan</span></a>
					</li>
					<li data-menu="/{{ $levelName }}/realisasi/sasaran" class="nav-item">
						<a href="{{ route($levelName.'.realisasi.sasaran') }}" class="nav-link "><span class="pcoded-micon"><i class="feather icon-codepen"></i></span><span class="pcoded-mtext">Sasaran</span></a>
					</li>
					<li data-menu="/{{ $levelName }}/realisasi/program" class="nav-item">
						<a href="{{ route($levelName.'.realisasi.program') }}" class="nav-link "><span class="pcoded-micon"><i class="feather icon-chrome"></i></span><span class="pcoded-mtext">Program</span></a>
					</li>
					<li data-menu="/{{ $levelName }}/realisasi/kegiatan" class="nav-item">
						<a href="{{ route($levelName.'.realisasi.kegiatan') }}" class="nav-link "><span class="pcoded-micon"><i class="feather icon-crosshair"></i></span><span class="pcoded-mtext">Kegiatan</span></a>
					</li>
					<li data-menu="/{{ $levelName }}/realisasi/renja" class="nav-item">
						<a href="{{ route($levelName.'.realisasi.renja') }}" class="nav-link "><span class="pcoded-micon"><i class="feather icon-disc"></i></span><span class="pcoded-mtext">Renja</span></a>
					</li>

					<li class="nav-item pcoded-menu-caption">
						<label>Laporan</label>
					</li>
					<li data-menu="/{{ $levelName }}/laporan/rpjmd" class="nav-item">
						<a href="{{ route($levelName.'.laporan.rpjmd') }}" class="nav-link "><span class="pcoded-micon"><i class="feather icon-inbox"></i></span><span class="pcoded-mtext">RPJMD</span></a>
					</li>
					<li data-menu="/{{ $levelName }}/laporan/renstra" class="nav-item">
						<a href="{{ route($levelName.'.laporan.renstra') }}" class="nav-link "><span class="pcoded-micon"><i class="feather icon-book"></i></span><span class="pcoded-mtext">RENSTRA</span></a>
					</li>
					<li data-menu="/{{ $levelName }}/laporan/renja" class="nav-item">
						<a href="{{ route($levelName.'.laporan.renja') }}" class="nav-link "><span class="pcoded-micon"><i class="feather icon-calendar"></i></span><span class="pcoded-mtext">Renja</span></a>
					</li>
					<li data-menu="/{{ $levelName }}/rapor/opd" class="nav-item">
						<a href="{{ route($levelName.'.rapor.opd') }}" class="nav-link "><span class="pcoded-micon"><i class="feather icon-briefcase"></i></span><span class="pcoded-mtext">Rapor</span></a>
					</li>

					<!-- <li data-menu-bar="laporan" class="nav-item pcoded-hasmenu">
						<a href="javascript:" class="nav-link "><span class="pcoded-micon"><i class="fa fa-print"></i></span><span class="pcoded-mtext">Cetak</span></a>
						<ul class="pcoded-submenu">
							<li data-menu="/{{ $levelName }}/laporan/rpjmd" class=""><a href="{{ route($levelName.'.laporan.rpjmd') }}" class="">RPJMD</a></li>
							<li data-menu="/{{ $levelName }}/laporan/renstra" class=""><a href="{{ route($levelName.'.laporan.renstra') }}" class="">RENSTRA</a></li>
							<li data-menu="/{{ $levelName }}/laporan/renja" class=""><a href="{{ route($levelName.'.laporan.renja') }}" class="">RENJA</a></li>
						</ul>
					</li>

					<li data-menu-bar="rapor" class="nav-item pcoded-hasmenu">
						<a href="javascript:" class="nav-link "><span class="pcoded-micon"><i class="fa fa-file"></i></span><span class="pcoded-mtext">Rapor</span></a>
						<ul class="pcoded-submenu">
							@if(in_array(session('login_level'), [1,2]))
							<li data-menu="/{{ $levelName }}/rapor/opd" class=""><a href="{{ route($levelName.'.rapor.opd') }}" class="">OPD</a></li>
							@endif
							<li data-menu="/{{ $levelName }}/rapor/predikat" class=""><a href="{{ route($levelName.'.rapor.predikat') }}" class="">Predikat</a></li>
						</ul>
					</li> -->

					@if(in_array(session('login_level'), [1,2]))
					<li class="nav-item pcoded-menu-caption">
						<label>Pengaturan</label>
					</li>
					<li data-menu="/{{ $levelName }}/setting/pengguna" class="nav-item">
						<a href="{{ url('/'.$levelName.'/setting/pengguna') }}" class="nav-link "><span class="pcoded-micon"><i class="feather icon-user"></i></span><span class="pcoded-mtext">Pengguna</span></a>
					</li>
					@endif
				</ul>
			</div>
		</div>
	</nav>
	<!-- [ navigation menu ] end -->

	<!-- [ Header ] start -->
	<header class="navbar pcoded-header navbar-expand-lg navbar-light headerpos-fixed header-dark" style="background-color: #34495E;">
		<!-- <header class="navbar pcoded-header navbar-expand-lg navbar-light headerpos-fixed header-dark" style="background-color: gray;"> -->
		<div class="m-header">
			<a class="mobile-menu" id="mobile-collapse1" href="javascript:"><span></span></a>
			<a href="index.html" class="b-brand">

				<div class="b-bg">
					<svg version="1.0" xmlns="http://www.w3.org/2000/svg" width="12pt" height="316.000000pt" viewBox="0 0 154.000000 316.000000" preserveAspectRatio="xMidYMid meet">

						<g transform="translate(0.000000,316.000000) scale(0.100000,-0.100000)" fill="#34495E" stroke="none">
							<path d="M1089 2832 c-491 -363 -731 -546 -789 -599 l-54 -50 -38 -549 c-20
-302 -37 -560 -38 -573 0 -22 2 -23 42 -17 59 9 431 211 469 254 24 27 29 42
29 83 0 68 -18 105 -88 183 -170 188 -153 348 50 479 29 19 186 112 348 207
162 95 302 178 310 186 12 11 19 80 35 314 11 165 20 300 19 300 -1 0 -133
-98 -295 -218z" />
							<path d="M1272 2100 c-101 -46 -382 -203 -406 -227 -34 -34 -47 -81 -35 -134
13 -57 21 -70 89 -145 78 -86 112 -156 113 -231 1 -115 -61 -184 -283 -315
-80 -47 -234 -138 -342 -202 -147 -87 -199 -122 -202 -139 -9 -40 -39 -567
-33 -573 10 -10 1002 731 1084 810 44 43 53 58 53 87 0 19 16 266 35 549 19
283 35 521 35 528 0 18 -59 14 -108 -8z" />
						</g>
					</svg>
				</div>
				<span class="b-title" style="font-weight: bold;">S P K P</span>
			</a>
		</div>
		<a class="mobile-menu" id="mobile-header" href="javascript:">
			<i class="feather icon-more-horizontal"></i>
		</a>
		<div class="collapse navbar-collapse">
			<ul class="navbar-nav mr-auto">
				<li><a href="javascript:" class="full-screen" onclick="javascript:toggleFullScreen()"><i class="feather icon-maximize"></i></a></li>
			</ul>
			<ul class="navbar-nav ml-auto">
				<!-- 
				<li>
					<div class="dropdown">
						<a class="dropdown-toggle" href="javascript:" data-toggle="dropdown"><i
								class="icon feather icon-bell"></i></a>
						<div class="dropdown-menu dropdown-menu-right notification">
							<div class="noti-head">
								<h6 class="d-inline-block m-b-0">Notifications</h6>
								<div class="float-right">
									<a href="javascript:" class="m-r-10">mark as read</a>
									<a href="javascript:">clear all</a>
								</div>
							</div>
							<ul class="noti-body">
								<li class="n-title">
									<p class="m-b-0">NEW</p>
								</li>
								<li class="notification">
									<div class="media">
										<img class="img-radius" src="<?= $awalAssets ?>/admin/assets/images/user/avatar-1.jpg"
											alt="Generic placeholder image">
										<div class="media-body">
											<p><strong>John Doe</strong><span class="n-time text-muted"><i
														class="icon feather icon-clock m-r-10"></i>30 min</span></p>
											<p>New ticket Added</p>
										</div>
									</div>
								</li>
								<li class="n-title">
									<p class="m-b-0">EARLIER</p>
								</li>
								<li class="notification">
									<div class="media">
										<img class="img-radius" src="<?= $awalAssets ?>/admin/assets/images/user/avatar-2.jpg"
											alt="Generic placeholder image">
										<div class="media-body">
											<p><strong>Joseph William</strong><span class="n-time text-muted"><i
														class="icon feather icon-clock m-r-10"></i>30 min</span></p>
											<p>Prchace New Theme and make payment</p>
										</div>
									</div>
								</li>
								<li class="notification">
									<div class="media">
										<img class="img-radius" src="<?= $awalAssets ?>/admin/assets/images/user/avatar-3.jpg"
											alt="Generic placeholder image">
										<div class="media-body">
											<p><strong>Sara Soudein</strong><span class="n-time text-muted"><i
														class="icon feather icon-clock m-r-10"></i>30 min</span></p>
											<p>currently login</p>
										</div>
									</div>
								</li>
							</ul>
							<div class="noti-footer">
								<a href="javascript:">show all</a>
							</div>
						</div>
					</div>
				</li> -->
				<li>
					<div class="dropdown drp-user">
						<a href="javascript:" class="dropdown-toggle" data-toggle="dropdown">
							{{ session('login_nama') }}
						</a>
						<div class="dropdown-menu dropdown-menu-right profile-notification">
							<div class="pro-head">
								<img src="<?= $awalAssets ?>/admin/assets/images/user/avatar-1.jpg" class="img-radius" alt="User-Profile-Image">
								<span>{{ session('login_nama') }}</span>
								<!-- <a href="{{ url('logout') }}" class="dud-logout" title="Logout">
									<i class="feather icon-log-out"></i>
								</a> -->
							</div>
							<ul class="pro-body">
								<!-- <li><a href="javascript:" class="dropdown-item"><i class="feather icon-settings"></i> Settings</a></li>
								<li><a href="javascript:" class="dropdown-item"><i class="feather icon-user"></i> Profile</a></li>
								<li><a href="message.html" class="dropdown-item"><i class="feather icon-mail"></i> My Messages</a></li> -->
								<li><a href="{{ url('logout') }}" class="dropdown-item"><i class="feather icon-log-out"></i> Keluar</a>
								</li>
							</ul>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</header>
	<!-- [ Header ] end -->

	@yield('content')


	<!-- Required Js -->
	<script src="<?= $awalAssets ?>/admin/assets/js/vendor-all.min.js"></script>
	<script src="<?= $awalAssets ?>/admin/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="<?= $awalAssets ?>/admin/assets/js/pcoded.min.js"></script>

	<script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/1.10.24/js/dataTables.bootstrap4.min.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


	<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

	<script>
		$('li[data-menu="' + window.location.pathname + '"]').addClass("active");
	</script>



	<script>
		function init_hapus(url, dataTable = null) {

			swal({
					title: "Apakah anda yakin?",
					text: "Data yang terhapus tidak dapat dikembalikan!",
					icon: "warning",
					buttons: true,
					dangerMode: true,
				})
				.then((willDelete) => {
					if (willDelete) {
						swal("Poof! Your imaginary file has been deleted!", {
							icon: "success",
						});
						$.when(sendAjax(url, {})).done(function(res) {
							if (res.status) {
								swal("Data anda berhasil terhapus!", {
									icon: "success",
								});
								if (dataTable != null) dataTable.ajax.reload();
							} else {

								swal("Server sedang bermasalah!", {
									icon: "warning",
								});
							}
						});
					} else {
						swal("Data anda batal terhapus!");
					}
				});

		}

		// swal({
		//   title: "Good job!",
		//   text: "You clicked the button!",
		//   icon: "success",
		// });

		function pesanSweet(judul, isi, status = 'success') {
			// swalInit(
			// 	judul,
			// 	isi,
			// 	status,
			// ); 
			swal({
				icon: status,
				title: judul,
				text: isi,
				// footer: '<a href>Why do I have this issue?</a>'
			});
		}


		function sendAjax(url, data, type = 'get', loading = null) {
			$.ajaxSetup({
				headers: {
					'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
				},
			});
			return $.ajax({
				url: url,
				type: type,
				data: data,
				dataType: "JSON",
				beforeSend: function() {
					if (loading != null) setLoading(loading, true);
				},
				success: function(result) {
					console.log(result);
				},
				error: function(err) {
					console.log(err);
					pesanSweet('ERROR!', 'Gagal Terhubung Pada Server.', 'error');
					// $('#my-error').html(err.responseText);
					// $("Terjadi error : ");
				},
				complete: function() {
					// setTimeout(function(){ if(loading!=null)setLoading(loading, false); }, 3000);
					if (loading != null) setLoading(loading, false);
				},
			});
		}

		function sendAjaxUpload(url, data, type = 'POST', loading = null) {
			$.ajaxSetup({
				headers: {
					'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
				},
			});
			return $.ajax({
				url: url,
				type: type,
				data: data,
				contentType: false,
				processData: false,
				beforeSend: function() {
					if (loading != null) setLoading(loading, true);
				},
				success: function(result) {
					console.log(result);
				},
				error: function(err) {
					console.log(err);
					pesanSweet('ERROR!', 'Gagal Terhubung Pada Server.', 'error');
					// $("Terjadi error : ");
				},
				complete: function() {
					if (loading != null) setLoading(loading, false);
				},
			});
		}

		function setLoading(name, status, style = '') {
			// console.log(name);
			if (status) {
				// $(name).block({
				// 	message: '<div style="'+style+'"><h4><i class="spinner-border text-primary"></i>  Silahkan tunggu...</h4></div>',
				// 	overlayCSS: {
				// 			backgroundColor: '#FFF',
				// 			opacity: 0.9,
				// 			cursor: 'wait'
				// 	},
				// 	css: {
				// 			border: 0,
				// 			padding: 0,
				// 			backgroundColor: 'transparent'
				// 	}
				// });
				$(name).addClass('prevent-click');
				$(name).css("display", "none");
				$(name).before('<div class="loading-view" style=" ' + style +
					'"><h4><i class="spinner-border text-primary"></i>  Silahkan tunggu...</h4></div>');

					
				//tambahan
				$('#btn-form-data').hide();
				
			} else {
				// $(name).unblock();
				$(name).removeClass('prevent-click');
				$(".loading-view").remove();
				$(name).css("display", "block");

				//tambahan
				$('#btn-form-data').show();
			}
		}


		/* Fungsi formatRupiah */
		function formatRupiah(angka) {
			if (angka == null) {
				return 0;
			}
			var reverse = parseInt(angka).toString().split('').reverse().join(''),
				ribuan = reverse.match(/\d{1,3}/g);
			ribuan = ribuan.join('.').split('').reverse().join('');
			return ribuan;
		}
	</script>
	@yield('script')

</body>

</html>