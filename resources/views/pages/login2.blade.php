<!DOCTYPE html>
<html lang="en">

<head>
	<title>Masuk | {{ env('APP_NAME') }}</title>
	<!-- HTML5 Shim and Respond.js IE10 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 10]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
	<!-- Meta -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="description" content="Datta Able Bootstrap admin template made using Bootstrap 4 and it has huge amount of ready made feature, UI components, pages which completely fulfills any dashboard needs." />
	<meta name="keywords" content="admin templates, bootstrap admin templates, bootstrap 4, dashboard, dashboard templets, sass admin templets, html admin templates, responsive, bootstrap admin templates free download,premium bootstrap admin templates, datta able, datta able bootstrap admin template, free admin theme, free dashboard template" />
	<meta name="author" content="CodedThemes" />

	<!-- Favicon icon -->
	<link rel="icon" href="<?= $awalAssets ?>/admin/assets/images/favicon.ico" type="image/x-icon">
	<!-- fontawesome icon -->
	<link rel="stylesheet" href="<?= $awalAssets ?>/admin/assets/fonts/fontawesome/css/fontawesome-all.min.css">
	<!-- animation css -->
	<link rel="stylesheet" href="<?= $awalAssets ?>/admin/assets/plugins/animation/css/animate.min.css">
	<!-- vendor css -->
	<link rel="stylesheet" href="<?= $awalAssets ?>/admin/assets/css/style.css">

	<style>
		.img-avatar{
			position: fixed;
			width: 18%;
			/* height: 40%; */
			border-radius: 100%;
		}
	</style>
</head>

<body style="background-image: url('<?= $awalAssets ?>/images/bg-login.jpg');position: cover;
  background-repeat: no-repeat;
  background-size: 100%;">
	<div class="auth-wrapper">
			<img class="img-avatar" style="background-color: #2399E9;left: 80px;bottom: 80px" src="<?= $awalAssets ?>/images/kaban.png" alt="">
			<img class="img-avatar" style="background-color: #CB4335;left: 80px;top: 80px" src="<?= $awalAssets ?>/images/bupati.png" alt="">
			<img class="img-avatar" style="background-color: #FF8F3E;right: 100px;" src="<?= $awalAssets ?>/images/ikhsan.png" alt="">
		<div class="auth-content">
			<div class="auth-bg">
				<span class="r"></span>
				<span class="r s"></span>
				<span class="r s"></span>
				<span class="r"></span>
			</div>
			<div class="card" style="border-left: #04A9F5 solid 5px; border-right: #1DE9B6 solid 5px">
				<form action="/login" method="post">
					@csrf
					<div class="card-body text-center">

						<div class="mb-4">
							<img src="<?= $awalAssets ?>/images/sepeda.gif" style="width: 100%;" alt="">
							<!-- <i class="feather icon-unlock auth-icon"></i> -->
							<!-- <img src="<?= $awalAssets ?>/images/logo-morowali.png" width="100" alt=""> -->
						</div>
						<!-- <h3 class="mb-4">Masuk</h3> -->
						<div class="input-group mb-3">
							<input type="text" class="form-control" name="username" placeholder="Username">
						</div>
						<div class="input-group mb-4">
							<input type="password" class="form-control" name="password" placeholder="password">
						</div>
						<!-- <div class="form-group text-left">
							<div class="checkbox checkbox-fill d-inline">
								<input type="checkbox" name="checkbox-fill-1" id="checkbox-fill-a1" checked="">
								<label for="checkbox-fill-a1" class="cr"> Save Details</label>
							</div>
						</div> -->
						<button type="submit" class="btn btn-primary shadow-2 mb-4">Login</button>
						<!-- <p class="mb-2 text-muted">Forgot password? <a href="auth-reset-password.html">Reset</a></p>
						<p class="mb-0 text-muted">Don’t have an account? <a href="auth-signup.html">Signup</a></p> -->
					</div>

				</form>
			</div>
		</div>
	</div>

	<!-- Required Js -->
	<script src="<?= $awalAssets ?>/admin/assets/js/vendor-all.min.js"></script>
	<script src="<?= $awalAssets ?>/admin/assets/plugins/bootstrap/js/bootstrap.min.js"></script>

</body>

</html>