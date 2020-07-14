@extends('layout')
@extends('pages.header')
@section('content')
@extends('pages.footer')


	<!-- Home -->
<div class="home_cart">
	<div class="home_container">
		<div class="home_background" style="background-image:url({{asset('public/User/images/cart.jpg')}})"></div>
		<div class="home_content_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="home_content">
							<div class="breadcrumbs">
								<ul>
									<li><a href="{{URL::to('/trang-chu')}}">Trang chủ</a></li>
									<li>Giỏ hàng</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

	<!-- Checkout -->
<div class="checkout">
	<div class="container">
		<div class="row">
		<!-- Billing Info -->
			<div class="col-lg-6">
				<div class="billing checkout_section">
					<div class="section_title">Thông tin đặt hàng</div>
					<div class="section_subtitle"> Điền các thông tin cần thiết để thanh toán và gửi hàng* </div>
						<div class="checkout_form_container">
							<form  class="checkout_form">
								{{csrf_field()}}
								<div class="row">
									<div class="col-xl-12">
										<!-- Name -->
										<label for="checkout_name">Tên khách hàng*</label>
										<input type="text" name ="shipping_name"  class="checkout_input" value="<?php
	                    $customer_name = Session::get('customer_name');
	                    if($customer_name){
	                        echo $customer_name;
	                    }
	                ?>">
									</div>
								</div>
								<div>
									<!-- Phone no -->
									<label for="checkout_phone">Số điện thoại*</label>
									<input type="phone" name ="shipping_phone" class="checkout_input" value="<?php
										$customer_phone = Session::get('customer_phone');
								 	 if($customer_phone){
								 			 echo $customer_phone;
								 	 }
								 ?>">
								</div>
								<div>
									<!-- Email -->
									<label for="checkout_email">Địa chỉ Email*</label>
									<input type="phone" name ="shipping_email" class="checkout_input" value="<?php
	                  $customer_email = Session::get('customer_email');
	                  if($customer_email){
	                      echo $customer_email;
	                  }
	              ?>">
								</div>
								<div>
									<!-- Phone no -->
									<label for="checkout_phone">Ghi chú đơn hàng của bạn</label>
									<input type="phone" name ="shipping_notes" class="checkout_input">
								</div>
								<div class="checkout_extra">
									<div>
										<input type="checkbox" id="checkbox_terms" name="regular_checkbox" class="regular_checkbox" checked="checked">
										<label for="checkbox_terms"><img src="images/check.png" alt=""></label>
										<span class="checkbox_title">Terms and conditions</span>
									</div>
									<div>
										<input type="checkbox" id="checkbox_account" name="regular_checkbox" class="regular_checkbox">
										<label for="checkbox_account"><img src="images/check.png" alt=""></label>
										<span class="checkbox_title">Create an account</span>
									</div>
									<div>
										<input type="checkbox" id="checkbox_newsletter" name="regular_checkbox" class="regular_checkbox">
										<label for="checkbox_newsletter"><img src="images/check.png" alt=""></label>
										<span class="checkbox_title">Subscribe to our newsletter</span>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>

				<!-- Order Info -->
				<?php $content =  Cart::content(); ?>
				<div class="col-lg-6">
					<div class="order checkout_section">
						<div class="section_title">Đơn hàng của bạn</div>
						<div class="section_subtitle">Chi tiết đơn hàng</div>

						<!-- Order details -->
						<form action="{{URL::to('/order')}}" method="POST">
							{{csrf_field()}}
								<div class="order_list_container">
									<div class="order_list_bar d-flex flex-row align-items-center justify-content-start">
										<div class="order_list_title">Sản phẩm</div>
										<div class="order_list_value ml-auto">Số lượng</div>
										<div class="order_list_value ml-auto">Tổng cộng</div>
									</div>
									<ul class="order_list">
										@foreach ($content as $key => $value)
										<li class="d-flex flex-row align-items-center justify-content-start">
											<div class="order_list_title"><a href="{{URL::to('/san-pham/'.$value->id)}}">{{$value->name}}</a></div>
											<div class="order_list_value ml-auto">{{$value->qty}}</div>
											<div class="order_list_value ml-auto">{{number_format($value->price*$value->qty).' '.'VNĐ'}}</div>
										</li>
										@endforeach
										<li class="d-flex flex-row align-items-center justify-content-start">
											<div class="order_list_title">Tổng</div>
											<div class="order_list_value ml-auto">{{Cart::subtotal().' '.'VNĐ'}}</div>
										</li>
									</ul>
								</div>
								<input type="submit" value="Đặt hàng" name="send_order" class="button order_button name">
							</form>
					</div>
				</div>
			</div>
		</div>
	</div>

@endsection
