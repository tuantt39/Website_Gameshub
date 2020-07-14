@extends('layout')
@extends('pages.header')
@section('content')
@extends('pages.footer')

<!-- Home -->
<div class="home_2">
  <div class="home_container">
    <div class="home_background" style="background-image:url({{URL::to('public/User/images/DBZ.jpg')}})"></div>
    <div class="home_content_container">
      <div class="container">
        <div class="row">
          <div class="col">
            <div class="home_content">
              <div class="home_title">Sản phẩm mới</div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Products -->
<div class="products">
        <div class="container">
          <div class="row">
    				<div class="col">
    					<!-- Product Sorting -->
    					<div class="sorting_bar d-flex flex-md-row flex-column align-items-md-center justify-content-md-start">
    						<div class="results">Showing <span>12</span> results</div>
    						<div class="sorting_container ml-md-auto">
    							<div class="sorting">
    								<ul class="item_sorting">
    									<li>
    										<span class="sorting_text">Sort by</span>
    										<i class="fa fa-chevron-down" aria-hidden="true"></i>
    										<ul>
    											<li class="product_sorting_btn" data-isotope-option='{ "sortBy": "original-order" }'><span>Default</span></li>
    											<li class="product_sorting_btn" data-isotope-option='{ "sortBy": "price" }'><span>Price</span></li>
    											<li class="product_sorting_btn" data-isotope-option='{ "sortBy": "stars" }'><span>Name</span></li>
    										</ul>
    									</li>
    								</ul>
    							</div>
    						</div>
    					</div>
    				</div>
    			</div>
          <div class="row">
              <div class="col">
                  <div class="product_grid">
                    @foreach($all_product as $key=> $prod_pro)
                      @if($prod_pro->product_status == 0)
                      <!-- Product -->
                        <div class="product">
                            <div class="product_image">
                              <a href="{{URL::to('/san-pham/'.$prod_pro->product_id)}}">
                                <img src="{{URL::to('public/uploads/product/'.$prod_pro->product_image)}}">
                              </a>
                            </div>
                            <div class="product_content">
                                <div class="product_title"><a href="{{URL::to('/san-pham/'.$prod_pro->product_id)}}">{{$prod_pro->product_name}}</a></div>
                                <div class="product_price">{{number_format($prod_pro->product_price).' '.'VNĐ'}}</div>
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
