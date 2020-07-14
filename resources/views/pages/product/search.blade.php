@extends('layout')
@extends('pages.header')
@section('content')
@extends('pages.footer')

    
<div class="products">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="product_grid">
                  @foreach($search_product as $key => $prod_pro)
                    <!-- Product -->
                    <div class="product">
                        <div class="product_image">
                          <a href="{{URL::to('/san-pham/'.$prod_pro->product_id)}}">
                            <img src="{{URL::to('public/uploads/product/'.$prod_pro->product_image)}}">
                          </a>
                        </div>
                        <div class="product_content">
                            <div class="product_title"><a href="{{URL::to('/san-pham/'.$prod_pro->product_id)}}">{{$prod_pro->product_name}}</a></div>
                            <div class="product_price">{{number_format($prod_pro->product_price).' '.'USD'}}</div>
                        </div>
                    </div>
                  @endforeach
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
