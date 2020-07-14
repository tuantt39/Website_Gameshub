@extends('layout')
@extends('pages.header')
@section('content')
@extends('pages.footer')

<!-- Home -->

<p>Đối kháng</p>

<div class="home_2">
  <div class="home_container">
    <div class="home_background" style="background-image:url({{URL::to('public/User/images/light.jpg')}})"></div>
    <div class="home_content_container">
      <div class="container">
        <div class="row">
          <div class="col">
            <div class="home_content">
              @foreach ($category_name as $key => $cate_name)
                  <div class="home_title">{{$cate_name->category_name}}</div>
              @endforeach
              @foreach ($category_desc as $key => $cate_desc)
                  <div class="home_text"><p>{{$cate_desc->category_desc}}</p></div>
              @endforeach
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
                    @foreach($category_by_id as $key=> $cate)
                      @if($cate->product_status == 0)
                      <!-- Product -->
                        <div class="product">
                            <div class="product_image">
                              <a href="{{URL::to('/san-pham/'.$cate->product_id)}}">
                                <img src="{{URL::to('public/uploads/product/'.$cate->product_image)}}">
                              </a>
                            </div>
                            <div class="product_content">
                                <div class="product_title"><a href="{{URL::to('/san-pham/'.$cate->product_id)}}">{{$cate->product_name}}</a></div>
                                <div class="product_price">{{number_format($cate->product_price).' '.'VNĐ'}}</div>
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
