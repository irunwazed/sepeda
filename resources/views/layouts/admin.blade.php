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
	<meta name="description"
		content="Free Datta Able Admin Template come up with latest Bootstrap 4 framework with basic components, form elements and lots of pre-made layout options" />
	<meta name="keywords"
		content="admin templates, bootstrap admin templates, bootstrap 4, dashboard, dashboard templets, sass admin templets, html admin templates, responsive, bootstrap admin templates free download,premium bootstrap admin templates, datta able, datta able bootstrap admin template, free admin theme, free dashboard template" />
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
		background-color: #f2fdfe;
	}

	table.dataTable tr.even {
		background-color: white;
	}

	table.dataTable thead tr {
		text-align: center;
		background: rgb(0, 36, 32);
		background: linear-gradient(164deg, rgba(0, 36, 32, 1) 0%, rgba(73, 187, 221, 0.6965161064425771) 0%, rgba(242, 254, 253, 0.7049194677871149) 68%);
	}

	table.dataTable tfoot tr {
		text-align: center;
		background: rgb(0, 36, 32);
		background: linear-gradient(164deg, rgba(0, 36, 32, 1) 0%, rgba(73, 187, 221, 0.6965161064425771) 0%, rgba(242, 254, 253, 0.7049194677871149) 68%);
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

	.my-bg-color {
		/* background-color: red; */
	}

	.main-body .card .card-header {
		background-color: #63cceb;
	}

	/* .nav-item .active {
			background-color: blue;
		}

		.navbar-content {
			background-color: orange;
		}

		.nav-item ul {
			background-color: green;
		}

		.nav-item {
			background-color: red;
		}

		.nav-item li {
			background-color: red;
		} */


	/* .pcoded-submenu{
			background-color: red;
		} */
		.text-bold{
			font-weight: bold;
			font-size: 15px;
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
	<nav class="pcoded-navbar icon-colored navbar-collapsed">
		<div class="navbar-wrapper">
			<div class="navbar-brand header-logo">
				<a href="#" class="b-brand">
					<div class="b-bg">

						<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="#3F4D67" class="bi bi-bicycle"
							viewBox="0 0 16 16">
							<path
								d="M4 4.5a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1v.5h4.14l.386-1.158A.5.5 0 0 1 11 4h1a.5.5 0 0 1 0 1h-.64l-.311.935.807 1.29a3 3 0 1 1-.848.53l-.508-.812-2.076 3.322A.5.5 0 0 1 8 10.5H5.959a3 3 0 1 1-1.815-3.274L5 5.856V5h-.5a.5.5 0 0 1-.5-.5zm1.5 2.443-.508.814c.5.444.85 1.054.967 1.743h1.139L5.5 6.943zM8 9.057 9.598 6.5H6.402L8 9.057zM4.937 9.5a1.997 1.997 0 0 0-.487-.877l-.548.877h1.035zM3.603 8.092A2 2 0 1 0 4.937 10.5H3a.5.5 0 0 1-.424-.765l1.027-1.643zm7.947.53a2 2 0 1 0 .848-.53l1.026 1.643a.5.5 0 1 1-.848.53L11.55 8.623z" />
						</svg>
					</div>
					<span class="b-title">{{ env('APP_NAME') }}</span>
				</a>
				<a class="mobile-menu on" id="mobile-collapse" href="javascript:"><span></span></a>
			</div>

			<?php


			$levelName = \Request::get('levelPath');
			$setJadwal = \Request::get('setJadwal');
			// $levelName = 'admin';
			?>
			<div class="navbar-content scroll-div">
				<ul class="nav pcoded-inner-navbar">

					<li class="nav-item pcoded-menu-caption">
						<label>Navigation</label>
					</li>
					<li data-menu="/{{ $levelName }}" class="nav-item">
						<a href="{{ url('/'.$levelName) }}" class="nav-link "><span class="pcoded-micon"><i
									class="feather icon-home"></i></span><span class="pcoded-mtext">Dashboard</span></a>
					</li>
					<li class="nav-item pcoded-menu-caption">
						<label>Penyusunan</label>
					</li>

					<li data-menu-bar="penyusunan" class="nav-item pcoded-hasmenu">
						<a href="javascript:" class="nav-link "><span class="pcoded-micon"><i
									class="feather icon-file-text"></i></span><span class="pcoded-mtext">Data</span></a>
						<ul class="pcoded-submenu">
							@if(in_array(session('login_level'), [1,2]))
							<li data-menu="/{{ $levelName }}/penyusunan/rpjmd" class=""><a
									href="{{ route($levelName.'.penyusunan.rpjmd') }}" class="">RPJMD</a></li>
							@endif
							<li data-menu="/{{ $levelName }}/penyusunan/renstra/program" class=""><a
									href="{{ route($levelName.'.penyusunan.renstra') }}" class="">Renstra</a></li>
							<li data-menu="/{{ $levelName }}/penyusunan/renja/sub-kegiatan" class=""><a
									href="{{ route($levelName.'.penyusunan.renja') }}" class="">RENJA</a></li>
						</ul>
					</li>
					@if(in_array(session('login_level'), [1,2]))
					<!-- <li data-menu="/{{ $levelName }}/penyusunan/rpjmd" class="nav-item">
						<a href="{{ route($levelName.'.penyusunan.rpjmd') }}" class="nav-link "><span class="pcoded-micon"><i class="feather icon-file"></i></span><span class="pcoded-mtext">RPJMD</span></a>
					</li> -->
					@endif
					<!-- <li data-menu="/{{ $levelName }}/penyusunan/renstra/program" class="nav-item">
						<a href="{{ route($levelName.'.penyusunan.renstra') }}" class="nav-link "><span class="pcoded-micon"><i class="feather icon-file"></i></span><span class="pcoded-mtext">Renstra</span></a>
					</li>
					<li data-menu="/{{ $levelName }}/penyusunan/renja/sub-kegiatan" class="nav-item">
						<a href="{{ route($levelName.'.penyusunan.renja') }}" class="nav-link "><span class="pcoded-micon"><i class="feather icon-file"></i></span><span class="pcoded-mtext">RENJA</span></a>
					</li> -->
					<li class="nav-item pcoded-menu-caption">
						<label>Realisasi</label>
					</li>

					@if(in_array(session('login_level'), [1,2]))
					<li data-menu-bar="realisasi" class="nav-item pcoded-hasmenu">
						<a href="javascript:" class="nav-link "><span class="pcoded-micon"><i
									class="feather icon-sidebar"></i></span><span class="pcoded-mtext">RPJMD</span></a>
						<ul class="pcoded-submenu">
							<li data-menu="/{{ $levelName }}/realisasi/tujuan" class=""><a
									href="{{ route($levelName.'.realisasi.tujuan') }}" class="">Tujuan</a></li>
							<li data-menu="/{{ $levelName }}/realisasi/sasaran" class=""><a
									href="{{ route($levelName.'.realisasi.sasaran') }}" class="">Sasaran</a></li>
							<li data-menu="/{{ $levelName }}/realisasi/program" class=""><a
									href="{{ route($levelName.'.realisasi.program') }}" class="">Program</a></li>
						</ul>
					</li>
					@endif

					<li data-menu-bar="realisasi-renstra" class="nav-item pcoded-hasmenu">
						<a href="javascript:" class="nav-link "><span class="pcoded-micon"><i
									class="feather icon-sidebar"></i></span><span class="pcoded-mtext">RENSTRA</span></a>
						<ul class="pcoded-submenu">
							<li data-menu="/{{ $levelName }}/realisasi/tujuan-opd" class=""><a
									href="{{ route($levelName.'.realisasi.tujuan-opd') }}" class="">Tujuan OPD</a></li>
							<li data-menu="/{{ $levelName }}/realisasi/sasaran-opd" class=""><a
									href="{{ route($levelName.'.realisasi.sasaran-opd') }}" class="">Sasaran OPD</a></li>
							<li data-menu="/{{ $levelName }}/realisasi/program" class=""><a
									href="{{ route($levelName.'.realisasi.program') }}" class="">Program</a></li>
							<li data-menu="/{{ $levelName }}/realisasi/kegiatan" class=""><a
									href="{{ route($levelName.'.realisasi.kegiatan') }}" class="">Kegiatan</a></li>
						</ul>
					</li>
					<li data-menu-bar="realisasi-renja" class="nav-item pcoded-hasmenu">
						<a href="javascript:" class="nav-link "><span class="pcoded-micon"><i
									class="feather icon-server"></i></span><span class="pcoded-mtext">Renja</span></a>
						<ul class="pcoded-submenu">
							<li data-menu="/{{ $levelName }}/realisasi/renja" class=""><a
									href="{{ route($levelName.'.realisasi.renja') }}" class="">Sub Kegiatan</a></li>
						</ul>
					</li>

					<li class="nav-item pcoded-menu-caption">
						<label>Laporan</label>
					</li>
					<!-- <li data-menu="/{{ $levelName }}/laporan/rpjmd" class="nav-item">
						<a href="{{ route($levelName.'.laporan.rpjmd') }}" class="nav-link "><span class="pcoded-micon"><i class="feather icon-sidebar"></i></span><span class="pcoded-mtext">RPJMD</span></a>
					</li>
					<li data-menu="/{{ $levelName }}/laporan/renstra" class="nav-item">
						<a href="{{ route($levelName.'.laporan.renstra') }}" class="nav-link "><span class="pcoded-micon"><i class="feather icon-map"></i></span><span class="pcoded-mtext">RENSTRA</span></a>
					</li>
					<li data-menu="/{{ $levelName }}/laporan/renja" class="nav-item">
						<a href="{{ route($levelName.'.laporan.renja') }}" class="nav-link "><span class="pcoded-micon"><i class="feather icon-map"></i></span><span class="pcoded-mtext">Renja</span></a>
					</li> -->

					<li data-menu-bar="laporan" class="nav-item pcoded-hasmenu">
						<a href="javascript:" class="nav-link "><span class="pcoded-micon"><i class="fa fa-print"></i></span><span
								class="pcoded-mtext">Cetak</span></a>
						<ul class="pcoded-submenu">
							<li data-menu="/{{ $levelName }}/laporan/rpjmd" class=""><a
									href="{{ route($levelName.'.laporan.rpjmd') }}" class="">RPJMD</a></li>
							<li data-menu="/{{ $levelName }}/laporan/renstra" class=""><a
									href="{{ route($levelName.'.laporan.renstra') }}" class="">RENSTRA</a></li>
							<li data-menu="/{{ $levelName }}/laporan/renja" class=""><a
									href="{{ route($levelName.'.laporan.renja') }}" class="">RENJA</a></li>
						</ul>
					</li>

					<li data-menu-bar="rapor" class="nav-item pcoded-hasmenu">
						<a href="javascript:" class="nav-link "><span class="pcoded-micon"><i class="fa fa-file"></i></span><span
								class="pcoded-mtext">Rapor</span></a>
						<ul class="pcoded-submenu">
							@if(in_array(session('login_level'), [1,2]))
							<li data-menu="/{{ $levelName }}/rapor/opd" class=""><a href="{{ route($levelName.'.rapor.opd') }}"
									class="">OPD</a></li>
							@endif
							<li data-menu="/{{ $levelName }}/rapor/predikat" class=""><a
									href="{{ route($levelName.'.rapor.predikat') }}" class="">Predikat</a></li>
						</ul>
					</li>

					@if(in_array(session('login_level'), [1,2]))
					<li class="nav-item pcoded-menu-caption">
						<label>Pengaturan</label>
					</li>

					<li data-menu-bar="pengaturan" class="nav-item pcoded-hasmenu">
						<a href="javascript:" class="nav-link "><span class="pcoded-micon"><i class="fa fa-cog"></i></span><span
								class="pcoded-mtext">Pengaturan</span></a>
						<ul class="pcoded-submenu">
							<li data-menu="/{{ $levelName }}/setting/pengguna" class=""><a
									href="{{ url('/'.$levelName.'/setting/pengguna') }}" class="">Pengguna</a></li>
							<li data-menu="/{{ $levelName }}/setting/jadwal" class=""><a
									href="{{ url('/'.$levelName.'/setting/jadwal') }}" class="">Jadwal</a></li>
						</ul>
					</li>

					<li data-menu-bar="import" class="nav-item pcoded-hasmenu">
						<a href="javascript:" class="nav-link "><span class="pcoded-micon"><i class="fa fa-upload"></i></span><span
								class="pcoded-mtext">Import</span></a>
						<ul class="pcoded-submenu">
							<li data-menu="/{{ $levelName }}/import/rkpd" class=""><a href="{{ url('/'.$levelName.'/import/rkpd') }}"
									class="">RKPD</a></li>
						</ul>
					</li>
					@endif
				</ul>
			</div>
		</div>
	</nav>
	<!-- [ navigation menu ] end -->

	<!-- [ Header ] start -->
	<header class="navbar pcoded-header navbar-expand-lg navbar-light headerpos-fixed header-lightblue">
		<!-- <header class="navbar pcoded-header navbar-expand-lg navbar-light headerpos-fixed header-dark" style="background-color: gray;"> -->
		<div class="m-header">
			<a class="mobile-menu" id="mobile-collapse1" href="javascript:"><span></span></a>
			<a href="#" class="b-brand">
				<div class="b-bg">
					<!-- <i class="feather icon-trending-up"></i> -->
					<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="#23b6e4" class="bi bi-bicycle"
						viewBox="0 0 16 16">
						<path
							d="M4 4.5a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1v.5h4.14l.386-1.158A.5.5 0 0 1 11 4h1a.5.5 0 0 1 0 1h-.64l-.311.935.807 1.29a3 3 0 1 1-.848.53l-.508-.812-2.076 3.322A.5.5 0 0 1 8 10.5H5.959a3 3 0 1 1-1.815-3.274L5 5.856V5h-.5a.5.5 0 0 1-.5-.5zm1.5 2.443-.508.814c.5.444.85 1.054.967 1.743h1.139L5.5 6.943zM8 9.057 9.598 6.5H6.402L8 9.057zM4.937 9.5a1.997 1.997 0 0 0-.487-.877l-.548.877h1.035zM3.603 8.092A2 2 0 1 0 4.937 10.5H3a.5.5 0 0 1-.424-.765l1.027-1.643zm7.947.53a2 2 0 1 0 .848-.53l1.026 1.643a.5.5 0 1 1-.848.53L11.55 8.623z" />
					</svg>
				</div>
				<span class="b-title">{{ env('APP_NAME') }}</span>
			</a>
		</div>
		<a class="mobile-menu" id="mobile-header" href="javascript:">
			<i class="feather icon-more-horizontal"></i>
		</a>
		<div class="collapse navbar-collapse">
			<ul class="navbar-nav mr-auto">
				<li><a href="javascript:" class="full-screen" onclick="javascript:toggleFullScreen()"><i
							class="feather icon-maximize"></i></a></li>
				<li><a href="#" data-toggle="modal"  style="border: #DDDDDD solid 1px; padding: 10px"
						data-target="#modal-tahunan">{{ @session('rpjmd_tahun')+@session('tahun')-1 }}</a></li>
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
								<img src="<?= $awalAssets ?>/admin/assets/images/user/avatar-1.jpg" class="img-radius"
									alt="User-Profile-Image">
								<span>{{ session('login_nama') }}</span>
								<!-- <a href="{{ url('logout') }}" class="dud-logout" title="Logout">
									<i class="feather icon-log-out"></i>
								</a> -->
							</div>
							<ul class="pro-body">
								<li><a href="#"  data-toggle="modal" data-target="#modal-password" class="dropdown-item"><i class="feather icon-settings"></i> Ubah Password</a></li>
								<!-- <li><a href="javascript:" class="dropdown-item"><i class="feather icon-user"></i> Profile</a></li>
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

	<style>
	.inner {
		display: table;
		margin: 0 auto;
		/* border: 1px solid black; */
		background-color: black;
		padding-top: 3px;
		padding-left: 30px;
		padding-right: 30px;
		/* font-size: 30px; */
		color: #000000;
		border-radius: 10px;
	}

	.outer {
		top: 65px;
		width:100%;
		z-index:10000;
		position: fixed;
		/* padding: 20px; */
		/* background-color: blue; */
	}

	.waktu-judul {
		font-size: 13px;
		margin: 0px;
		top: -10px;
		position: relative;
		color: white;
	}
	.waktu-isi {
		font-size: 25px;
		margin: 0px;
		text-align: center;
	}

	.hari .waktu-isi {
		color: green;
	}
	.jam .waktu-isi {
		color: yellow;
	}
	.menit .waktu-isi {
		color: orange;
	}
	.detik .waktu-isi {
		color: red;
	}
	</style>

	<div class="outer">
		<div class="inner">
			<div class="row">
				<div class="col-3 hari">
					<div class="waktu-isi">0</div>
					<span class="waktu-judul">Hari</span>
				</div>
				<div class="col-3 jam">
					<div class="waktu-isi">0</div>
					<span class="waktu-judul">Jam</span>
				</div>
				<div class="col-3 menit">
					<div class="waktu-isi">0</div>
					<span class="waktu-judul">Menit</span>
				</div>
				<div class="col-3 detik">
					<div class="waktu-isi">0</div>
					<span class="waktu-judul">Detik</span>
				</div>
			</div> 
		</div>
	</div>

	@yield('content')

	<div id="my-error"></div>

	<!--Disabled Backdrop Modal -->
	<div class="modal fade text-left" id="modal-tahunan" tabindex="-1" role="dialog" aria-labelledby="myModalLabel4"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable " role="document">
			<!-- class modal-xl -->
			<div class="modal-content">
				<div class="modal-header bg-info">
					<h4 class="modal-title" style="color: #FFF" id="myModalLabel4"> <i class="feather icon-user"></i> Pengaturan Tahun
					</h4>
					<button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
						<i data-feather="x"></i>
					</button>
				</div>
				<div class="modal-body">
					<form action="/{{ @$levelName }}/setting/tahun" id="form-tahunan" method="POST">
						@csrf
						<div class="form-group">
							<label for="basicInput">Tahun</label>
							<fieldset class="form-group">
								<select class="form-control" name="tahun" required>
									@for($i = 1; $i<= 5; $i++) 
									<option value="{{ $i }}" {{ @$i==session('tahun')?'selected':'' }} >{{ ((int)session('rpjmd_tahun')+(int)$i-1) }}
										</option>
										@endfor
								</select>
							</fieldset>
						</div>
						<div class="form-group">
							<label for="basicInput">Triwulan</label>
							<fieldset class="form-group">
								<select class="form-control" name="triwulan" required>
									@for($i = 1; $i <= 4; $i++) 
									<option value="{{ $i }}" {{ @$i==session('triwulan')?'selected':'' }}>{{ $i }}
										</option>
										@endfor
								</select>
							</fieldset>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
					<button id="btn-form-data" type="submit" form="form-tahunan" class="btn btn-success ml-1">Simpan
					</button>
				</div>
			</div>
		</div>
	</div>


	<!--Modal password -->
	<div class="modal fade text-left" id="modal-password" tabindex="-1" role="dialog" aria-labelledby="myModalPassword"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable " role="document">
			<!-- class modal-xl -->
			<div class="modal-content">
				<div class="modal-header bg-info">
					<h4 class="modal-title" style="color: #FFF" id="myModalPassword"> <i class="feather icon-user"></i> Ubah Password
					</h4>
					<button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
						<i data-feather="x"></i>
					</button>
				</div>
				<div class="modal-body">
					<form action="/{{ @$levelName }}/change-password" id="form-password" method="POST">
						@csrf
						<div class="form-group">
							<label for="basicInput">Password Lama</label>
							<fieldset class="form-group">
								<input type="text" class="form-control" name="password_lama">
							</fieldset>
						</div>
						<div class="form-group">
							<label for="basicInput">Password Baru</label>
							<fieldset class="form-group">
								<input type="text" class="form-control" name="password_baru">
							</fieldset>
						</div>
						<div class="form-group">
							<label for="basicInput">Ulangi Password Baru</label>
							<fieldset class="form-group">
								<input type="text" class="form-control" name="password_ulang">
							</fieldset>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
					<button id="btn-form-data" type="submit" form="form-password" class="btn btn-success ml-1">Simpan
					</button>
				</div>
			</div>
		</div>
	</div>


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
				if(err.responseJSON != undefined){

					if(err.responseJSON.status){
						pesanSweet('Peringatan!', err.responseJSON.pesan, 'warning');
					}else{
						pesanSweet('ERROR!', 'Terjadi masalah, silahkan hubungi admin.', 'error');
					}
				}
				console.log(err);
				// 
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

		let btn = false;
		if (type == 'get') {
			btn = true;
		}

		return $.ajax({
			url: url,
			type: type,
			data: data,
			contentType: false,
			processData: false,
			beforeSend: function() {
				if (loading != null) setLoading(loading, true, '', btn);
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
				if (loading != null) setLoading(loading, false, '', btn);
			},
		});
	}

	function setLoading(name, status, style = '', btn = false) {
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

			// tambahan
			if (btn) {
				$('#btn-form-data').hide();
			}
		} else {
			// $(name).unblock();
			$(name).removeClass('prevent-click');
			$(".loading-view").remove();
			$(name).css("display", "block");

			// tambahan
			if (btn) {
				$('#btn-form-data').show();
			}
		}
	}


	/* Fungsi formatRupiah */
	function formatRupiah(angka) {
		if (angka == null || angka == 'null') {
			return 0;
		}
		var reverse = parseInt(angka).toString().split('').reverse().join(''),
			ribuan = reverse.match(/\d{1,3}/g);
		ribuan = ribuan.join('.').split('').reverse().join('');
		return ribuan;
	}
	
	const setJadwal = () => {
		var txt = '{{ @$setJadwal }}';
		if(txt == ''){
			txt = '2022-10-10 09:51:34';
		}
		var date1 = new Date(txt);
		var now = new Date().getTime();
		var timeleft = date1 - now;
				
		var days = Math.floor(timeleft / (1000 * 60 * 60 * 24));
		var hours = Math.floor((timeleft % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
		var minutes = Math.floor((timeleft % (1000 * 60 * 60)) / (1000 * 60));
		var seconds = Math.floor((timeleft % (1000 * 60)) / 1000);

		$('.hari .waktu-isi').html(setTimeNol(days));
		$('.jam .waktu-isi').html(setTimeNol(hours));
		$('.menit .waktu-isi').html(setTimeNol(minutes));
		$('.detik .waktu-isi').html(setTimeNol(seconds));
	}
	var runTime = setInterval(function() {
		setJadwal();
	}, 1000);

	function setTimeNol(time){
		if(time <= 0) return 0;
		return time
	}

	// runTime
	
	$('#form-password').submit(function(e){
		e.preventDefault();

		let data = $(this).serializeArray();
		$.when(sendAjax($(this).attr('action'), data, 'post', '#form-password')).done(function(res) {
			if (res.status == true) {
				pesanSweet('Berhasil', res.pesan, 'success');
				$('#modal-password').modal('hide');
			} else {
				pesanSweet('Gagal!', res.pesan, 'warning');
			}
		});
	})

	</script>
	
	@yield('script')

</body>

</html>