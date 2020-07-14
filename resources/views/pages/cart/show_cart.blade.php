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

<!-- Cart Info -->

<div class="cart_info">
	<div class="container">
		<div class="row">
			<div class="col">
        <?php $content =  Cart::content(); ?>
				<!-- Column Titles -->
				<div class="cart_info_columns clearfix">
					<div class="cart_info_col cart_info_col_product">Sản phẩm</div>
					<div class="cart_info_col cart_info_col_price">Giá</div>
					<div class="cart_info_col cart_info_col_quantity">Số lượng</div>
					<div class="cart_info_col cart_info_col_total">Tổng</div>
				</div>
			</div>
		</div>
		<form action="{{URL::to('/update-cart')}}" method="post">
			{{csrf_field()}}
		<div class="row cart_items_row">
			<div class="col">
        @foreach ($content as $key => $value)

				<!-- Cart Item -->
				<div class="cart_item d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-start">
					<!-- Name -->
					<div class="cart_item_product d-flex flex-row align-items-center justify-content-start">
						<div class="cart_item_image">
							<div><img src="{{URL::to('public/uploads/product/'.$value->options->image)}}" alt=""></div>
						</div>
						<div class="cart_item_name_container">
							<div class="cart_item_name"><a href="{{URL::to('/san-pham/'.$value->id)}}">{{$value->name}}</a></div>
							<div class="cart_item_edit"><a href="{{URL::to('/delete-to-cart/'.$value->rowId)}}">Xóa</a></div>
						</div>
					</div>
					<!-- Price -->
					<div class="cart_item_price">{{number_format($value->price).' '.'VNĐ'}}</div>
					<!-- Quantity -->
					<div class="cart_item_quantity">
						<div class="products_quantity_container">
							<div class="input-group mb-3" style="max-width: 220px;">
								<div class="input-group-prepend">
									<button class="btn btn-outline-dark js-btn-minus" type="button">&minus;</button>
								</div>
								<input name="cart_quantity" type="text" class="form-control text-center" value="{{$value->qty}}">
								<input name="rowId_cart" type="hidden"  value="{{$value->rowId}}">
								<div class="input-group-append">
									<button class="btn btn-outline-dark js-btn-plus" type="button">&plus;</button>
								</div>
							</div>
						</div>
					</div>
					<!-- Total -->
					<div class="cart_item_total">{{number_format($value->price*$value->qty).' '.'VNĐ'}}</div>
				</div>
        @endforeach
			</div>
		</div>
    <div class="row row_cart_buttons">
				<div class="col">
					<div class="cart_buttons d-flex flex-lg-row flex-column align-items-start justify-content-start">
						<div class="cart_buttons_right ml-lg-auto">
							<button type="submit" class="button update_cart_button"><a>Cập nhật</a></button>
						</div>
					</div>
				</div>
			</div>
		</form>
		<div class="row row_extra">
			<div class="col-lg-4">

				<!-- Coupon Code -->
				<div class="coupon">
					<div class="section_title">Coupon code</div>
					<div class="section_subtitle">Nhập coupon code của bạn</div>
					<div class="coupon_form_container">
						<form action="#" id="coupon_form" class="coupon_form">
							<input type="text" class="coupon_input" required="required">
							<button class="button coupon_button"><span>Xác nhận</span></button>
						</form>
					</div>
				</div>
			</div>

			<div class="col-lg-6 offset-lg-2">
				<div class="cart_total">
					<div class="section_title">Tổng hóa đơn</div>

					<div class="cart_total_container">
						<ul>
							<li class="d-flex flex-row align-items-center justify-content-start">
								<div class="cart_total_title">Tạm tính</div>
								<div class="cart_total_value ml-auto">{{Cart::subtotal().' '.'VNĐ'}}</div>
							</li>
							<li class="d-flex flex-row align-items-center justify-content-start">
								<div class="cart_total_title">Giảm giá</div>
								<div class="cart_total_value ml-auto">Free</div>
							</li>
							<li class="d-flex flex-row align-items-center justify-content-start">
								<div class="cart_total_title">Tổng</div>
								<div class="cart_total_value ml-auto">{{Cart::subtotal().' '.'VNĐ'}}</div>
							</li>
						</ul>
					</div>
					<?php
              $customer_id = Session::get('customer_id');
              if($customer_id!=NULL)
              {
          ?>
              <div class="button checkout_button"><a href="{{URL::to('/checkout')}}">Mua hàng</a></div>
          <?php
              }
              else {
          ?>
              <div class="button checkout_button"><a href="{{URL::to('/login')}}">Mua hàng</a></div>
          <?php
              }
          ?>
				</div>
			</div>
		</div>
	</div>
</div>

@endsection
