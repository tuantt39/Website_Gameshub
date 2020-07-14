<!DOCTYPE html>
<html lang="en">
<head>
	<title>Đăng nhập</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{asset('public/User/styles/bootstrap4/bootstrap.min.css')}}">
<!--===============================================================================================-->
	<link href="{{asset('public/User/fonts/font-awesome-4.7.0/css/font-awesome.min.css')}}" rel="stylesheet" type="text/css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{asset('public/User/fonts/Linearicons-Free-v1.0.0/icon-font.min.css')}}">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{asset('public/User/vendor/animate/animate.css')}}">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{asset('public/User/vendor/css-hamburgers/hamburgers.min.css')}}">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{asset('public/User/vendor/select2/select2.min.css')}}">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{asset('public/User/css/util.css')}}">
	<link rel="stylesheet" type="text/css" href="{{asset('public/User/css/main.css')}}">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.78/theme-default.min.css">

<!--===============================================================================================-->
</head>
<body>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-50 p-r-50 p-t-77 p-b-30">

				<form class="login100-form validate-form" action="{{URL::to('/login-customer')}}" method="post">
          {{csrf_field()}}
					<span class="login100-form-title p-b-55">
						Đăng nhập
					</span>
					<?php
					$message = Session::get('msg');
					if($message){
						echo '<div class="alert alert-danger" role="alert">',$message,'</div>';
						Session::put('msg',NULL);
					}
					?>
					<div class="wrap-input100 validate-input m-b-16">
						<input class="input100" type="email" class="form-control" name="email_account" placeholder="Địa chỉ email" data-validation="email"
            data-validation-error-msg="Vui lòng điền đúng định dạng email" >
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<span class="lnr lnr-envelope"></span>
						</span>
					</div>

					<div class="wrap-input100 validate-input m-b-16">
						<input class="input100" type="password" class="form-control" name="password_account" placeholder="Mật khẩu" data-validation="required"
            data-validation-error-msg-required="Vui lòng điền vào trường này">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<span class="lnr lnr-lock"></span>
						</span>
					</div>

					<div class="contact100-form-checkbox m-l-4">
						<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
						<label class="label-checkbox100" for="ckb1">
							Ghi nhớ
						</label>
					</div>

					<div class="container-login100-form-btn p-t-25">
						<button type="submit" class="login100-form-btn">
							Đăng nhập
						</button>
					</div>

					<div class="text-center w-full p-t-42 p-b-22">
						<span class="txt1">
							Hoặc đăng nhập với
						</span>
					</div>

					<a href="#" class="btn-face m-b-10">
						<i class="fa fa-facebook-official"></i>
						Facebook
					</a>

					<a href="#" class="btn-google m-b-10">
						<img src="{{asset('public/User/images/icons/icon-google.png')}}" alt="GOOGLE">
						Google
					</a>

					<div class="text-center w-full p-t-115">
						<span class="txt1">
							Chưa có tài khoản?
						</span>

						<a class="txt1 bo1 hov1" href="{{URL::to('/signup')}}">
							Đăng ký ngay
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>




<!--===============================================================================================-->
	<script src="{{asset('public/User/vendor/jquery/jquery-3.2.1.min.js')}}"></script>
<!--===============================================================================================-->
	<script src="{{asset('public/User/vendor/bootstrap/js/popper.js')}}"></script>
	<script src="{{asset('public/User/js/jquery-3.2.1.min.js')}}"></script>
<!--===============================================================================================-->
	<script src="{{asset('public/User/vendor/select2/select2.min.js')}}"></script>
<!--===============================================================================================-->
	<script src="{{asset('public/User/js/main.js')}}"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.79/jquery.form-validator.min.js"></script>
  <script type="text/javascript">
    $.validate({

    });
  </script>



</body>
</html>
