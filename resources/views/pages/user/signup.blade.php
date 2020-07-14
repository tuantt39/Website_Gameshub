<!DOCTYPE html>
<html lang="en">
<head>
	<title>Đăng ký</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{asset('public/User/vendor/bootstrap/css/bootstrap.min.css')}}">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{asset('public/User/fonts/font-awesome-4.7.0/css/font-awesome.min.css')}}">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{asset('public/User/fonts/Linearicons-Free-v1.0.0/icon-font.min.css')}}">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{asset('public/User/fonts/iconic/css/material-design-iconic-font.min.css')}}">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{asset('public/User/vendor/animate/animate.css')}}">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{asset('public/User/vendor/css-hamburgers/hamburgers.min.css')}}">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{asset('public/User/vendor/animsition/css/animsition.min.css')}}">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{asset('public/User/vendor/select2/select2.min.css')}}">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{asset('public/User/vendor/daterangepicker/daterangepicker.css')}}">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{asset('public/User/css/util_2.css')}}">
	<link rel="stylesheet" type="text/css" href="{{asset('public/User/css/main_2.css')}}">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.78/theme-default.min.css">
<!--===============================================================================================-->
</head>
<body style="background-color: #999999;">

	<div class="limiter">
		<div class="container-login100">
			<div class="login100-more" style="background-image: url({{URL::to('public/User/images/sao.jpg')}});"></div>

			<div class="wrap-login100 p-l-50 p-r-50 p-t-72 p-b-50">
				<form class="login100-form validate-form" action="{{URL::to('/add-customer')}}" method="post" >
          {{csrf_field()}}
					<span class="login100-form-title p-b-59">
						Đăng ký
					</span>

					<div class="wrap-input100 validate-input">
						<span class="label-input100">Họ và tên</span>
						<input class="input100" type="text" name="customer_name" data-validation="required"
            data-validation-error-msg-required="Vui lòng điền vào trường này" >
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input">
						<span class="label-input100">Địa chỉ email</span>
						<input class="input100" type="text" name="customer_email" data-validation="email"
            data-validation-error-msg="Vui lòng điền đúng định dạng email">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input">
						<span class="label-input100">Password</span>
						<input class="input100" type="password" name="customer_password" data-validation="length" data-validation-length ="min8"
            data-validation-error-msg="Vui lòng điền mật khẩu ít nhất 8 ký tự">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input">
						<span class="label-input100">Số điện thoại</span>
						<input class="input100" type="text" name="customer_phone" data-validation="number"
            data-validation-error-msg="Vui lòng nhập số" >
						<span class="focus-input100"></span>
					</div>

					<div class="flex-m w-full p-b-33">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
							<label class="label-checkbox100" for="ckb1">
								<span class="txt1">
									Toi đồng ý với các
									<a href="#" class="txt2 hov1">
										điều khoản trên
									</a>
								</span>
							</label>
						</div>
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn" type="submit">
								Đăng ký
							</button>
						</div>
						<a href="{{URL::to('/login')}}" class="dis-block txt3 hov1 p-r-30 p-t-10 p-b-10 p-l-30">
							Đăng nhập
							<i class="fa fa-long-arrow-right m-l-5"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>

<!--===============================================================================================-->
	<script src="{{asset('public/User/vendor/jquery/jquery-3.2.1.min.js')}}"></script>
<!--===============================================================================================-->
	<script src="{{asset('public/User/vendor/animsition/js/animsition.min.js')}}"></script>
<!--===============================================================================================-->
	<script src="{{asset('public/User/vendor/bootstrap/js/popper.js')}}"></script>
	<script src="{{asset('public/User/vendor/bootstrap/js/bootstrap.min.js')}}"></script>
<!--===============================================================================================-->
	<script src="{{asset('public/User/vendor/select2/select2.min.js')}}"></script>
<!--===============================================================================================-->
	<script src="{{asset('public/User/vendor/daterangepicker/moment.min.js')}}"></script>
	<script src="{{asset('public/User/vendor/daterangepicker/daterangepicker.js')}}"></script>
<!--===============================================================================================-->
	<script src="{{asset('public/User/vendor/countdowntime/countdowntime.js')}}"></script>
<!--===============================================================================================-->
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.79/jquery.form-validator.min.js"></script>
  <script type="text/javascript">
    $.validate({

    });
  </script>
</body>

</body>
</html>
