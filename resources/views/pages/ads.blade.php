@section('ads')
<!-- Ad -->

<div class="avds_xl">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="avds_xl_container clearfix">
                    <div class="avds_xl_background" style="background-image:url({{('public/User/images/Gear.jpg')}})"></div>
                    
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Icon Boxes -->

<div class="icon_boxes">
    <div class="container">
        <div class="row icon_box_row">

            <!-- Icon Box -->
            <div class="col-lg-4 icon_box_col">
                <div class="icon_box">
                    <div class="icon_box_image"><img src="{{('public/User/images/icon_1.svg')}}" alt=""></div>
                    <div class="icon_box_title">GIAO HÀNG SIÊU TỐC</div>
                    <div class="icon_box_text">
                        <p>Hệ thống giao hàng tự động chỉ trong 3 phút.</p>
                    </div>
                </div>
            </div>

            <!-- Icon Box -->
            <div class="col-lg-4 icon_box_col">
                <div class="icon_box">
                    <div class="icon_box_image"><img src="{{('public/User/images/icon_2.svg')}}" alt=""></div>
                    <div class="icon_box_title">BẢO HÀNH NHANH CHÓNG</div>
                    <div class="icon_box_text">
                        <p>Mọi yêu cầu hỗ trợ sẽ được đội ngũ tư vấn giải quyết trực tiếp.</p>
                    </div>
                </div>
            </div>

            <!-- Icon Box -->
            <div class="col-lg-4 icon_box_col">
                <div class="icon_box">
                    <div class="icon_box_image"><img src="{{('public/User/images/icon_3.svg')}}" alt=""></div>
                    <div class="icon_box_title">HỖ TRỢ TẬN TÌNH</div>
                    <div class="icon_box_text">
                        <p>Hệ thống hỗ trợ online liên tục 24h.</p>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

<!-- Newsletter -->

<div class="newsletter">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="newsletter_border"></div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <div class="newsletter_content text-center">
                        <div class="newsletter_title">Subscribe to our newsletter</div>
                        <div class="newsletter_text"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam a ultricies metus. Sed nec molestie eros</p></div>
                        <div class="newsletter_form_container">
                            <form action="#" id="newsletter_form" class="newsletter_form">
                                <input type="email" class="newsletter_input" required="required">
                                <button class="newsletter_button trans_200"><span>Subscribe</span></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
