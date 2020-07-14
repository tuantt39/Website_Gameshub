@extends('layout')
@extends('pages.header')
@section('content')
@extends('pages.footer')


<!-- Product Details -->

<div class="product_details">
	<div class="container">
		<div class="row details_row">
			@foreach ($details_product as $key => $value)
			<!-- Product Image -->
			<div class="col-lg-6">
				<div class="details_image">
					<div class="details_image_large"><img src="{{URL::to('public/uploads/product/'.$value->product_image)}}" alt=""><div class="product_extra product_new"><a href="categories.html">New</a></div></div>
					<div class="details_image_thumbnails d-flex flex-row align-items-start justify-content-between">

						<div class="details_image_thumbnail" data-image="{{asset('public/User/images/details_2.jpg')}}"><img src="{{asset('public/User/images/details_2.jpg')}}" alt=""></div>
						<div class="details_image_thumbnail" data-image="{{asset('public/User/images/details_3.jpg')}}"><img src="{{asset('public/User/images/details_3.jpg')}}" alt=""></div>
						<div class="details_image_thumbnail" data-image="{{asset('public/User/images/details_4.jpg')}}"><img src="{{asset('public/User/images/details_4.jpg')}}" alt=""></div>
					</div>
				</div>
			</div>

			<!-- Product Content -->
			<div class="col-lg-6">
				<form action="{{URL::to('/save-cart')}}" method="post">
					{{csrf_field()}}
					<div class="details_content">
						<div class="details_name">{{$value->product_name}}</div>
						<div class="details_discount">{{number_format($value->product_price*2).' '.'VNĐ'}}</div>
						<div class="details_price">{{number_format($value->product_price).' '.'VNĐ'}}</div>

						<!-- In Stock -->
						<div class="in_stock_container">
							<div class="availability">Tình trạng:</div>
							<span>Còn hàng</span>
						</div>
						<div class="in_stock_container">
							<div class="availability">Nhà phát hành:</div>
							<a href="{{URL::to('/nha-phat-hanh/'.$value->publisher_id)}}">
							<span>{{$value->publisher_name}}</span>
						</a>
						</div>
						<!-- Product Quantity -->
						<div class="product_quantity_container">
							<div class="product_quantity clearfix">
								<span>Số lượng</span>
								<input id="quantity_input" name="qty" type="text" pattern="[0-9]*" value="1">
								<input name="productid_hidden" type="hidden" value="{{$value->product_id}}">
								<div class="quantity_buttons">
									<div id="quantity_inc_button" class="quantity_inc quantity_control"><i class="fa fa-chevron-up" aria-hidden="true"></i></div>
									<div id="quantity_dec_button" class="quantity_dec quantity_control"><i class="fa fa-chevron-down" aria-hidden="true"></i></div>
								</div>
							</div>
							<button type="submit" class="button cart_button"><a>Thêm vào giỏ</a></button>
						</div>
				</form>

						<!-- Share -->
						<div class="details_share">
							<span>Share:</span>
							<ul>
								<li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
							</ul>
						</div>
					</div>
			</div>
		</div>

		<div class="row description_row">
			<div class="col">
				<div class="description_title_container">
					<div class="description_title">Mô tả</div>
					<div class="reviews_title"><a href="#">Đánh giá <span>(1)</span></a></div>
				</div>
				<div class="description_text">
					<p>{!!$value->product_content!!}</p>
				</div>
			</div>
		</div>
	</div>
</div>

	@endforeach

<!-- Products -->

	<div class="products">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					<div class="products_title">Sản phẩm liên quan</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<div class="product_grid">
						<!-- Product -->
						@foreach($related_product as $key => $value)
							@if($value->product_status == 0)
								<div class="product">
									<div class="product_image">
										<a href="{{URL::to('/san-pham/'.$value->product_id)}}">
											<img src="{{URL::to('public/uploads/product/'.$value->product_image)}}" alt="">
										<a/>
									</div>
									<div class="product_extra product_new"><a href="categories.html">New</a></div>
									<div class="product_content">
										<div class="product_title"><a href="{{URL::to('/san-pham/'.$value->product_id)}}">{{$value->product_name}}</a></div>
										<div class="product_price">{{number_format($value->product_price).' '.'VNĐ'}}</div>
									</div>
								</div>
							@endif
						@endforeach
					</div>
				</div>
			</div>
		</div>
	</div>


@endsection
