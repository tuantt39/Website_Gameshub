@section('banner')

<!-- Home -->

<div class="home">
    <div class="home_slider_container">

        <!-- Home Slider -->
        <div class="owl-carousel owl-theme home_slider">

            <!-- Slider Item -->
            <div class="owl-item home_slider_item">
                <div class="home_slider_background" style="background-image:url({{URL::to('public/User/images/SC6.jpg')}})"></div>
                <div class="home_slider_content_container">
                    <div class="container">
                        <div class="row">
                            <div class="col">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Slider Item -->
            <div class="owl-item home_slider_item">
                <div class="home_slider_background" style="background-image:url({{('public/User/images/MHW.jpg')}})"></div>
                <div class="home_slider_content_container">
                    <div class="container">
                        <div class="row">
                            <div class="col">
                                <div class="home_slider_content"  data-animation-in="fadeIn" data-animation-out="animate-out fadeOut">
                                
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Slider Item -->
            <div class="owl-item home_slider_item">
                <div class="home_slider_background" style="background-image:url({{('public/User/images/gtaV.jpg')}})"></div>
                <div class="home_slider_content_container">
                    <div class="container">
                        <div class="row">
                            <div class="col">
                                <div class="home_slider_content"  data-animation-in="fadeIn" data-animation-out="animate-out fadeOut">
                                
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <!-- Home Slider Dots -->

        <div class="home_slider_dots_container">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="home_slider_dots">
                            <ul id="home_slider_custom_dots" class="home_slider_custom_dots">
                                <li class="home_slider_custom_dot active">01.</li>
                                <li class="home_slider_custom_dot">02.</li>
                                <li class="home_slider_custom_dot">03.</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>

<!-- Ads -->

<div class="avds">
    <div class="avds_container d-flex flex-lg-row flex-column align-items-start justify-content-between">
        <div class="avds_small">
            <div class="avds_background" style="background-image:url({{('public/User/images/bannerjpg.jpg')}})"></div>
              <div class="avds_small_inner">
                  <div class="avds_discount_container">
                      <img src="images/discount.png" alt="">
                      <div>
                         
                      </div>
                  </div>
                  <div class="avds_small_content">
                      <div class="avds_title">Summer Sales</div>
                      <div class="avds_link"><a>Xem thêm</a></div>
                  </div>
              </div>

        </div>
        <div class="avds_large">
            <div class="avds_background" style="background-image:url({{('public/User/images/Gear1.jpg')}})"></div>
            <div class="avds_large_container">
                <div class="avds_large_content">
                    <div class="avds_title">Professional Gaming</div>
                    
                    <div class="avds_link avds_link_large"><a>Xem thêm</a></div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
