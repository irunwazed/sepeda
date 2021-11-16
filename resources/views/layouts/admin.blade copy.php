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
	<meta name="csrf-token" content="{{ csrf_token() }}">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="description"
		content="Free Datta Able Admin Template come up with latest Bootstrap 4 framework with basic components, form elements and lots of pre-made layout options" />
	<meta name="keywords"
		content="admin templates, bootstrap admin templates, bootstrap 4, dashboard, dashboard templets, sass admin templets, html admin templates, responsive, bootstrap admin templates free download,premium bootstrap admin templates, datta able, datta able bootstrap admin template, free admin theme, free dashboard template" />
	<meta name="author" content="CodedThemes" />

	<!-- Favicon icon -->
	<link rel="icon" href="<?=$awalAssets?>/admin/assets/images/favicon.ico" type="image/x-icon">
	<!-- fontawesome icon -->
	<link rel="stylesheet" href="<?=$awalAssets?>/admin/assets/fonts/fontawesome/css/fontawesome-all.min.css">
	<!-- animation css -->
	<link rel="stylesheet" href="<?=$awalAssets?>/admin/assets/plugins/animation/css/animate.min.css">
	<!-- vendor css -->
	<link rel="stylesheet" href="<?=$awalAssets?>/admin/assets/css/style.css">



	<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />

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
				<a href="index.html" class="b-brand">
					<div class="b-bg">
						<i class="feather icon-trending-up"></i>
					</div>
					<span class="b-title">E - LACENTRIS</span>
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
						<a href="{{ url('/'.$levelName) }}" class="nav-link "><span class="pcoded-micon"><i
									class="feather icon-home"></i></span><span class="pcoded-mtext">Dashboard</span></a>
					</li>
					<li class="nav-item pcoded-menu-caption">
						<label>Penyusunan</label>
					</li>
					<li data-menu="/{{ $levelName }}/penyusunan/rpjmd" class="nav-item">
						<a href="{{ route($levelName.'.penyusunan.rpjmd') }}" class="nav-link "><span class="pcoded-micon"><i
									class="feather icon-file"></i></span><span class="pcoded-mtext">RPJMD</span></a>
					</li>

					<li class="nav-item pcoded-menu-caption">
						<label>Realisasi</label>
					</li>
					<li data-menu="/{{ $levelName }}/realisasi/rpjmd" class="nav-item">
						<a href="{{ route($levelName.'.realisasi.rpjmd') }}" class="nav-link "><span class="pcoded-micon"><i
									class="feather icon-sidebar"></i></span><span class="pcoded-mtext">RPJMD</span></a>
					</li>
					<li data-menu="/{{ $levelName }}/realisasi/renstra" class="nav-item">
						<a href="{{ route($levelName.'.realisasi.renstra') }}" class="nav-link "><span class="pcoded-micon"><i
									class="feather icon-map"></i></span><span class="pcoded-mtext">RENSTRA</span></a>
					</li>

					<li class="nav-item pcoded-menu-caption">
						<label>Laporan</label>
					</li>
					<li data-menu="/{{ $levelName }}/laporan/rpjmd" class="nav-item">
						<a href="{{ route($levelName.'.laporan.rpjmd') }}" class="nav-link "><span class="pcoded-micon"><i
									class="feather icon-sidebar"></i></span><span class="pcoded-mtext">RPJMD</span></a>
					</li>
					<li data-menu="/{{ $levelName }}/laporan/renstra" class="nav-item">
						<a href="{{ route($levelName.'.laporan.renstra') }}" class="nav-link "><span class="pcoded-micon"><i
									class="feather icon-map"></i></span><span class="pcoded-mtext">RENSTRA</span></a>
					</li>

					@if(in_array(session('login_level'), [1,2]))
					<li class="nav-item pcoded-menu-caption">
						<label>Pengaturan</label>
					</li>
					<li data-menu="/{{ $levelName }}/setting/pengguna" class="nav-item">
						<a href="{{ url('/'.$levelName.'/setting/pengguna') }}" class="nav-link "><span class="pcoded-micon"><i
									class="feather icon-user"></i></span><span class="pcoded-mtext">Pengguna</span></a>
					</li>
					@endif

					<!-- <li class="nav-item pcoded-menu-caption">
											<label>Data</label>
                    </li>
                    <li data-menu="basic components Button Alert Badges breadcrumb Paggination progress Tooltip popovers Carousel Cards Collapse Tabs pills Modal Grid System Typography Extra Shadows Embeds" class="nav-item pcoded-hasmenu active">
											<a href="javascript:" class="nav-link "><span class="pcoded-micon"><i class="feather icon-box"></i></span><span class="pcoded-mtext">Components</span></a>
											<ul class="pcoded-submenu">
												<li class="active"><a href="bc_button.html" class="">Button</a></li>
												<li class=""><a href="bc_badges.html" class="">Badges</a></li>
												<li class=""><a href="bc_breadcrumb-pagination.html" class="">Breadcrumb & paggination</a></li>
												<li class=""><a href="bc_collapse.html" class="">Collapse</a></li>
												<li class=""><a href="bc_tabs.html" class="">Tabs & pills</a></li>
												<li class=""><a href="bc_typography.html" class="">Typography</a></li>
												<li class=""><a href="icon-feather.html" class="">Feather<span class="pcoded-badge label label-danger">NEW</span></a></li>
											</ul>
                    </li>

                    <li class="nav-item pcoded-menu-caption">
											<label>UI Element</label>
                    </li>
                    <li data-menu="basic components Button Alert Badges breadcrumb Paggination progress Tooltip popovers Carousel Cards Collapse Tabs pills Modal Grid System Typography Extra Shadows Embeds" class="nav-item pcoded-hasmenu">
											<a href="javascript:" class="nav-link "><span class="pcoded-micon"><i class="feather icon-box"></i></span><span class="pcoded-mtext">Components</span></a>
											<ul class="pcoded-submenu">
												<li class=""><a href="bc_button.html" class="">Button</a></li>
												<li class=""><a href="bc_badges.html" class="">Badges</a></li>
												<li class=""><a href="bc_breadcrumb-pagination.html" class="">Breadcrumb & paggination</a></li>
												<li class=""><a href="bc_collapse.html" class="">Collapse</a></li>
												<li class=""><a href="bc_tabs.html" class="">Tabs & pills</a></li>
												<li class=""><a href="bc_typography.html" class="">Typography</a></li>
												<li class=""><a href="icon-feather.html" class="">Feather<span class="pcoded-badge label label-danger">NEW</span></a></li>
											</ul>
                    </li>
                    <li class="nav-item pcoded-menu-caption">
											<label>Chart & Maps</label>
                    </li>
                    <li data-menu="Charts Morris" class="nav-item"><a href="chart-morris.html" class="nav-link "><span class="pcoded-micon"><i class="feather icon-pie-chart"></i></span><span class="pcoded-mtext">Chart</span></a></li>
                    <li data-menu="Maps Google" class="nav-item"><a href="map-google.html" class="nav-link "><span class="pcoded-micon"><i class="feather icon-map"></i></span><span class="pcoded-mtext">Maps</span></a></li>
                    <li class="nav-item pcoded-menu-caption">
											<label>Pages</label>
                    </li>
                    <li data-menu="Authentication Sign up Sign in reset password Change password Personal information profile settings map form subscribe" class="nav-item pcoded-hasmenu">
											<a href="javascript:" class="nav-link "><span class="pcoded-micon"><i class="feather icon-lock"></i></span><span class="pcoded-mtext">Authentication</span></a>
											<ul class="pcoded-submenu">
												<li class=""><a href="auth-signup.html" class="" target="_blank">Sign up</a></li>
												<li class=""><a href="auth-signin.html" class="" target="_blank">Sign in</a></li>
											</ul>
                    </li>
                    <li data-menu="Sample Page" class="nav-item"><a href="sample-page.html" class="nav-link"><span class="pcoded-micon"><i class="feather icon-sidebar"></i></span><span class="pcoded-mtext">Sample page</span></a></li>
                    <li data-menu="Disabled Menu" class="nav-item disabled"><a href="javascript:" class="nav-link"><span class="pcoded-micon"><i class="feather icon-power"></i></span><span class="pcoded-mtext">Disabled menu</span></a></li> -->
				</ul>
			</div>
		</div>
	</nav>
	<!-- [ navigation menu ] end -->

	<!-- [ Header ] start -->
	<header class="navbar pcoded-header navbar-expand-lg navbar-light headerpos-fixed header-lightblue">
		<div class="m-header">
			<a class="mobile-menu" id="mobile-collapse1" href="javascript:"><span></span></a>
			<a href="index.html" class="b-brand">
				<div class="b-bg">
					<i class="feather icon-trending-up"></i>
				</div>
				<span class="b-title">E - LACENTRIS</span>
			</a>
		</div>
		<a class="mobile-menu" id="mobile-header" href="javascript:">
			<i class="feather icon-more-horizontal"></i>
		</a>
		<div class="collapse navbar-collapse">
			<!-- <ul class="navbar-nav mr-auto">
				<li><a href="javascript:" class="full-screen" onclick="javascript:toggleFullScreen()"><i
							class="feather icon-maximize"></i></a></li>
				<li class="nav-item dropdown">
					<a class="dropdown-toggle" href="javascript:" data-toggle="dropdown">Dropdown</a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="javascript:">Action</a></li>
						<li><a class="dropdown-item" href="javascript:">Another action</a></li>
						<li><a class="dropdown-item" href="javascript:">Something else here</a></li>
					</ul>
				</li>
				<li class="nav-item">
					<div class="main-search">
						<div class="input-group">
							<input type="text" id="m-search" class="form-control" placeholder="Search . . .">
							<a href="javascript:" class="input-group-append search-close">
								<i class="feather icon-x input-group-text"></i>
							</a>
							<span class="input-group-append search-btn btn btn-primary">
								<i class="feather icon-search input-group-text"></i>
							</span>
						</div>
					</div>
				</li>
			</ul> -->
			<ul class="navbar-nav ml-auto">
				<!-- <li>
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
										<img class="img-radius" src="<?=$awalAssets?>/admin/assets/images/user/avatar-1.jpg"
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
										<img class="img-radius" src="<?=$awalAssets?>/admin/assets/images/user/avatar-2.jpg"
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
										<img class="img-radius" src="<?=$awalAssets?>/admin/assets/images/user/avatar-3.jpg"
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
						<!-- <i class="icon feather icon-settings"></i> -->

						<img style="height: 30px" src="<?=$awalAssets?>/admin/assets/images/user/avatar-1.jpg" class="img-radius"
									alt="User-Profile-Image">
						</a>
						<div class="dropdown-menu dropdown-menu-right profile-notification">
							<div class="pro-head">
								<img src="<?=$awalAssets?>/admin/assets/images/user/avatar-1.jpg" class="img-radius"
									alt="User-Profile-Image">
								<span>{{ session('login_nama') }}</span>
								<a href="{{ url('logout') }}" class="dud-logout" title="Keluar">
									<i class="feather icon-log-out"></i>
								</a>
							</div>
							<!-- <ul class="pro-body">
								<li><a href="javascript:" class="dropdown-item"><i class="feather icon-settings"></i> Settings</a></li>
								<li><a href="javascript:" class="dropdown-item"><i class="feather icon-user"></i> Profile</a></li>
								<li><a href="message.html" class="dropdown-item"><i class="feather icon-mail"></i> My Messages</a></li>
								<li><a href="{{ url('logout') }}" class="dropdown-item"><i class="feather icon-lock"></i> Keluar</a>
								</li>
							</ul> -->
						</div>
					</div>
				</li>
			</ul>
		</div>
	</header>
	<!-- [ Header ] end -->

	@yield('content')

	<!-- Warning Section Starts -->
	<!-- Older IE warning message -->
	<!--[if lt IE 11]>
        <div class="ie-warning">
            <h1>Warning!!</h1>
            <p>You are using an outdated version of Internet Explorer, please upgrade
               <br/>to any of the following web browsers to access this website.
            </p>
            <div class="iew-container">
                <ul class="iew-download">
                    <li>
                        <a href="http://www.google.com/chrome/">
                            <img src="<?=$awalAssets?>/admin/assets/images/browser/chrome.png" alt="Chrome">
                            <div>Chrome</div>
                        </a>
                    </li>
                    <li>
                        <a href="https://www.mozilla.org/en-US/firefox/new/">
                            <img src="<?=$awalAssets?>/admin/assets/images/browser/firefox.png" alt="Firefox">
                            <div>Firefox</div>
                        </a>
                    </li>
                    <li>
                        <a href="http://www.opera.com">
                            <img src="<?=$awalAssets?>/admin/assets/images/browser/opera.png" alt="Opera">
                            <div>Opera</div>
                        </a>
                    </li>
                    <li>
                        <a href="https://www.apple.com/safari/">
                            <img src="<?=$awalAssets?>/admin/assets/images/browser/safari.png" alt="Safari">
                            <div>Safari</div>
                        </a>
                    </li>
                    <li>
                        <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                            <img src="<?=$awalAssets?>/admin/assets/images/browser/ie.png" alt="">
                            <div>IE (11 & above)</div>
                        </a>
                    </li>
                </ul>
            </div>
            <p>Sorry for the inconvenience!</p>
        </div>
    <![endif]-->
	<!-- Warning Section Ends -->





	<!-- Required Js -->
	<script src="<?=$awalAssets?>/admin/assets/js/vendor-all.min.js"></script>
	<script src="<?=$awalAssets?>/admin/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- <script src="<?=$awalAssets?>/admin/assets/js/pcoded.min.js"></script> -->

	<!-- <script src="https://code.jquery.com/jquery-3.5.1.js"></script> -->
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
				'"><h4><i class="spinner-border text-primary"></i>  Silahkan tunggu...</h4></div>')
		} else {
			// $(name).unblock();
			$(name).removeClass('prevent-click');
			$(".loading-view").remove();
			$(name).css("display", "block");
		}
	}


	/* Fungsi formatRupiah */
	function formatRupiah(angka) {
		if(angka == null){
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