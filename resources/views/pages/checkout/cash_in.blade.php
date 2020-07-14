@extends('layout')
@extends('pages.header')
@section('content')



	<!-- Home -->
<div class="home_cart">
	<div class="home_container">
		<div class="home_background" style="background-image:url({{asset('public/User/images/light.jpg')}})"></div>
		<div class="home_content_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="home_content">

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="container">
	<div class="section_title"> CẢM ƠN BẠN ĐÃ ĐẶT HÀNG CỦA TRANG WEB CHÚNG TÔI</div>
	<div class="row">
		<div class="col-md-3 offset-md-3">
			<img src="{{URL::to('public/User/images/thank-you.jpg')}}"  height="500" width="500">
		</div>
	</div>
</div>

@endsection
