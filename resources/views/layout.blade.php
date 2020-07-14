<!DOCTYPE html>
<html lang="en">
<head>
<title>GamesHub</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Sublime project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="{{asset('public/User/styles/bootstrap4/bootstrap.min.css')}}">
<link href="{{asset('public/User/plugins/font-awesome-4.7.0/css/font-awesome.min.css')}}" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="{{asset('public/User/plugins/OwlCarousel2-2.2.1/owl.carousel.css')}}">
<link rel="stylesheet" type="text/css" href="{{asset('public/User/plugins/OwlCarousel2-2.2.1/owl.theme.default.css')}}">
<link rel="stylesheet" type="text/css" href="{{asset('public/User/plugins/OwlCarousel2-2.2.1/animate.css')}}">
<link rel="stylesheet" type="text/css" href="{{asset('public/User/styles/categories.css')}}">
<link rel="stylesheet" type="text/css" href="{{asset('public/User/styles/categories_responsive.css')}}">
<link rel="stylesheet" type="text/css" href="{{asset('public/User/styles/product.css')}}">
<link rel="stylesheet" type="text/css" href="{{asset('public/User/styles/product_responsive.css')}}">
<link rel="stylesheet" type="text/css" href="{{asset('public/User/styles/main_styles.css')}}">
<link rel="stylesheet" type="text/css" href="{{asset('public/User/styles/responsive.css')}}">
<link rel="stylesheet" type="text/css" href="{{asset('public/User/styles/cart.css')}}">
<link rel="stylesheet" type="text/css" href="{{asset('public/User/styles/cart_responsive.css')}}">
<link rel="stylesheet" type="text/css" href="{{asset('public/User/styles/checkout.css')}}">
<link rel="stylesheet" type="text/css" href="{{asset('public/User/styles/checkout_responsive.css')}}">

</head>
<body>

<div class="super_container">

    <!-- Header -->
    @yield('header')

    <!-- Banner -->
    @yield('banner')

    <!-- Products -->
    @yield('content')

    <!-- Ad -->
    @yield('ads')

    <!-- Footer -->
    @yield('footer')

</div>

<script src="{{asset('public/User/js/jquery-3.2.1.min.js')}}"></script>
<script src="{{asset('public/User/styles/bootstrap4/popper.js')}}"></script>
<script src="{{asset('public/Users/tyles/bootstrap4/bootstrap.min.js')}}"></script>
<script src="{{asset('public/User/plugins/greensock/TweenMax.min.js')}}"></script>
<script src="{{asset('public/User/plugins/greensock/TimelineMax.min.js')}}"></script>
<script src="{{asset('public/User/plugins/scrollmagic/ScrollMagic.min.js')}}"></script>
<script src="{{asset('public/User/plugins/greensock/animation.gsap.min.js')}}"></script>
<script src="{{asset('public/User/plugins/greensock/ScrollToPlugin.min.js')}}"></script>
<script src="{{asset('public/User/plugins/OwlCarousel2-2.2.1/owl.carousel.js')}}"></script>
<script src="{{asset('public/User/plugins/Isotope/isotope.pkgd.min.js')}}"></script>
<script src="{{asset('public/User/plugins/easing/easing.js')}}"></script>
<script src="{{asset('public/User/plugins/parallax-js-master/parallax.min.js')}}"></script>
<script src="{{asset('public/User/js/categories.js')}}"></script>
<script src="{{asset('public/User/js/product.js')}}"></script>
<script src="{{asset('public/User/js/custom.js')}}"></script>
<script src="{{asset('public/User/js/checkout.js')}}"></script>
<script src="{{asset('public/User/js/cart.js')}}"></script>
<script src="{{asset('https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA')}}"></script>
<script src="{{asset('public/User/js/contact.js')}}"></script>

<script src="{{asset('public/User/js/jquery-ui.js')}}"></script>
<script src="{{asset('public/User/js/popper.min.js')}}"></script>
<script src="{{asset('public/User/js/bootstrap.min.js')}}"></script>
<script src="{{asset('public/User/js/owl.carousel.min.js')}}"></script>
<script src="{{asset('public/User/js/jquery.magnific-popup.min.js')}}"></script>
<script src="{{asset('public/User/js/aos.js')}}"></script>
<script src="{{asset('public/User/js/main.js')}}"></script>

</body>
</html>
