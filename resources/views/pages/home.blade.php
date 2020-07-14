
@extends('layout')
@extends('pages.header')
@extends('pages.banner')
@section('content')
@extends('pages.ads')
@extends('pages.footer')


<div class="products">
    <div class="container">
      <div class="row">
        <div class="col text-center">
          <div class="products_title">Sản phẩm mới nhất</div>
        </div>
      </div>
      <div class="row">
            <div class="col">
              <div class="product_grid">
                @foreach($all_product as $key=> $prod_pro)
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
                @endforeach
              </div>
          </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-2">
              <a type="button"  href="{{URL::to('/san-pham')}}" class="btn btn-outline-primary">Xem thêm</a>
            </div>
        </div>
      <br></br>
    </div>
</div>

<div class="products">
    <div class="container">
      <div class="row">
        <div class="col text-center">
          <div class="products_title">Hành động</div>
        </div>
      </div>
      <div class="row">
            <div class="col">
              <div class="product_grid">
                @foreach($category_action as $key=> $prod_pro)
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
                @endforeach
              </div>
          </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-2">
              <a type="button"  href="{{URL::to('/danh-muc-san-pham/1')}}" class="btn btn-outline-primary">Xem thêm</a>
            </div>
        </div>
      <br></br>
    </div>
</div>

<div class="products">
    <div class="container">
      <div class="row">
        <div class="col text-center">
          <div class="products_title">Phiêu lưu</div>
        </div>
      </div>
      <div class="row">
            <div class="col">
              <div class="product_grid">
                @foreach($category_avt as $key=> $prod_pro)
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
                @endforeach
              </div>
          </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-2">
              <a type="button"  href="{{URL::to('/danh-muc-san-pham/2')}}" class="btn btn-outline-primary">Xem thêm</a>
            </div>
        </div>
      <br></br>
    </div>
</div>

<div class="products">
    <div class="container">
      <div class="row">
        <div class="col text-center">
          <div class="products_title">Đối kháng</div>
        </div>
      </div>
      <div class="row">
            <div class="col">
              <div class="product_grid">
                @foreach($category_ctv as $key=> $prod_pro)
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
                @endforeach
              </div>
          </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-2">
              <a type="button"  href="{{URL::to('/danh-muc-san-pham/3')}}" class="btn btn-outline-primary">Xem thêm</a>
            </div>
        </div>
      <br></br>
    </div>
</div>

<div class="products">
    <div class="container">
      <div class="row">
        <div class="col text-center">
          <div class="products_title">Nhập vai</div>
        </div>
      </div>
      <div class="row">
            <div class="col">
              <div class="product_grid">
                @foreach($category_rlp as $key=> $prod_pro)
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
                @endforeach
              </div>
          </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-2">
              <a type="button"  href="{{URL::to('/danh-muc-san-pham/9')}}" class="btn btn-outline-primary">Xem thêm</a>
            </div>
        </div>
      <br></br>
    </div>
</div>

@endsection
