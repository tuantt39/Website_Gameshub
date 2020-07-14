
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>Login</title>

    <!-- Fontfaces CSS-->
		<link href="{{asset('public/Admin/css/font-face.css')}}" rel="stylesheet" media="all">
    <link href="{{asset('public/Admin/vendor/font-awesome-4.7/css/font-awesome.min.css')}}" rel="stylesheet" media="all">
    <link href="{{asset('public/Admin/vendor/font-awesome-5/css/fontawesome-all.min.css')}}" rel="stylesheet" media="all">
    <link href="{{asset('public/Admin/vendor/mdi-font/css/material-design-iconic-font.min.css')}}" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="{{asset('public/Admin/vendor/bootstrap-4.1/bootstrap.min.css')}}" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="{{asset('public/Admin/vendor/animsition/animsition.min.css')}}" rel="stylesheet" media="all">
    <link href="{{asset('public/Admin/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css')}}" rel="stylesheet" media="all">
    <link href="{{asset('public/Admin/vendor/wow/animate.css')}}" rel="stylesheet" media="all">
    <link href="{{asset('public/Admin/vendor/css-hamburgers/hamburgers.min.css')}}" rel="stylesheet" media="all">
    <link href="{{asset('public/Admin/vendor/slick/slick.css')}}" rel="stylesheet" media="all">
    <link href="{{asset('public/Admin/vendor/select2/select2.min.css')}}" rel="stylesheet" media="all">
    <link href="{{asset('public/Admin/vendor/perfect-scrollbar/perfect-scrollbar.css')}}" rel="stylesheet" media="all">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.78/theme-default.min.css">

    <!-- Main CSS-->
    <link href="{{asset('public/Admin/css/theme.css')}}" rel="stylesheet" media="all">

</head>

	<body class="animsition">
	    <div class="page-wrapper">
	        <div class="page-content--bge5">
	            <div class="container">
	                <div class="login-wrap">
	                    <div class="login-content">
	                        <div class="login-logo">
	                            <a href="#">
	                                <img src="{{asset('public/Admin/images/icon/logo_4.png')}}">
	                            </a>
	                        </div>
	                        <div class="login-form">
														<?php
														$message = Session::get('msg');
														if($message){
														  echo '<div class="alert alert-danger" role="alert">',$message,'</div>';
															Session::put('msg',NULL);
														}
														?>
	                            <form action="{{URL::to('/admin-dashboard')}}" method="post">
																{{csrf_field()}}
	                                <div class="form-group">
	                                    <label>Email</label>
	                                    <input class="au-input au-input--full" type="email" name="admin_email" placeholder="Email" data-validation="email"
                                      data-validation-error-msg="Vui lòng điền đúng định dạng email">
	                                </div>
	                                <div class="form-group">
	                                    <label>Password</label>
	                                    <input class="au-input au-input--full" type="password" name="admin_password" placeholder="Password" data-validation="required"
                                      data-validation-error-msg-required="Vui lòng điền vào trường này">
	                                </div>
	                                <div class="login-checkbox">
	                                    <label>
	                                        <input type="checkbox" name="remember">Ghi nhớ Mật khẩu
	                                    </label>
	                                    <label>
	                                        <a href="#">Quên Mật khẩu?</a>
	                                    </label>
	                                </div>
	                                <button class="au-btn au-btn--block au-btn--green m-b-20" type="submit" name="login">Đăng nhập</button>
	                            </form>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>

	    </div>






	<!-- Jquery JS-->
	<script src="{{asset('public/Admin/vendor/jquery-3.2.1.min.js')}}"></script>
	<!-- Bootstrap JS-->
	<script src="{{asset('public/Admin/vendor/bootstrap-4.1/popper.min.js')}}"></script>
	<script src="{{asset('public/Admin/vendor/bootstrap-4.1/bootstrap.min.js')}}"></script>
	<!-- Vendor JS       -->
	<script src="{{asset('public/Admin/vendor/slick/slick.min.js')}}">
	</script>
	<script src="{{asset('public/Admin/vendor/wow/wow.min.js')}}"></script>
	<script src="{{asset('public/Admin/vendor/animsition/animsition.min.js')}}"></script>
	<script src="{{asset('public/Admin/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js')}}">
	</script>
	<script src="{{asset('public/Admin/vendor/counter-up/jquery.waypoints.min.js')}}"></script>
	<script src="{{asset('public/Admin/vendor/counter-up/jquery.counterup.min.js')}}">
	</script>
	<script src="{{asset('public/Admin/vendor/circle-progress/circle-progress.min.js')}}"></script>
	<script src="{{asset('public/Admin/vendor/perfect-scrollbar/perfect-scrollbar.js')}}"></script>
	<script src="{{asset('public/Admin/vendor/chartjs/Chart.bundle.min.js')}}"></script>
	<script src="{{asset('public/Admin/vendor/select2/select2.min.js')}}"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.79/jquery.form-validator.min.js"></script>
  <script type="text/javascript">
    $.validate({

    });
  </script>

	<!-- Main JS-->
	<script src="{{asset('public/Admin/js/main.js')}}"></script>

</body>

</html>
<!-- end document-->
<<<<<<< HEAD
