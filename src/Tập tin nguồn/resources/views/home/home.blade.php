{{-- <!DOCTYPE html>
<body>
    <script type="module">
        import Chatbot from "https://cdn.jsdelivr.net/npm/flowise-embed/dist/web.js"
        Chatbot.init({
            chatflowid: "2732fe41-3e2b-4268-8b12-877f56482e87",
            apiHost: "http://localhost:3000",
            theme: {
            button: {
                backgroundColor: "#3B81F6",
                right: 20,
                bottom: 20,
                size: "medium",
                iconColor: "blue",
                customIconSrc: "https://raw.githubusercontent.com/walkxcode/dashboard-icons/main/svg/google-messages.svg",
            },
            chatWindow: {
                welcomeMessage: "Mani's Stylish Fashion xin chào bạn. Tôi có thể giúp gì cho bạn?",
                backgroundColor: "#ffffff",
                height: 500,
                width: 400,
                fontSize: 16,
                poweredByTextColor: "#303235",
                botMessage: {
                    backgroundColor: "#f7f8ff",
                    textColor: "#303235",
                    showAvatar: true,
                    avatarSrc: "https://raw.githubusercontent.com/zahidkhawaja/langchain-chat-nextjs/main/public/parroticon.png",
                },
                userMessage: {
                    backgroundColor: "#FF66FF",
                    textColor: "#ffffff",
                    showAvatar: true,
                    avatarSrc: "https://raw.githubusercontent.com/zahidkhawaja/langchain-chat-nextjs/main/public/usericon.png",
                },
                textInput: {
                    placeholder: "Hãy nhập câu hỏi của bạn ",
                    backgroundColor: "#FF99F",
                    textColor: "#303235",
                    sendButtonColor: "#3B81F6",
                }
            }
        }
        })
    </script>
</body>
</html> --}}
@extends('layouts.master')
@section('title')
    <title>Mani's Stylish Fashion</title>
@endsection

@section('css')
    <link rel="stylesheet" href="{{ asset('home/home.css') }}">
@endsection

@section('js')
    <link rel="stylesheet" href="{{ asset('home/home.js') }}">
@endsection

@section('content')
    <main class="main">
        <div class="intro-section pt-3 pb-3 mb-2">
            <div class="container">
                <div class="row">
                    {{-- Slider --}}
                    @include('home.components.slider')
                    {{-- Slider --}}
                    <div class="col-lg-4">
                        <div class="intro-banners">
                            <div class="banner mb-lg-1 mb-xl-2">
                                <a href="#">
                                    <img src="{{ asset('UserLTE/assets/images/banner_NTL/banner-5.jpg') }}"
                                        alt="Banner" >
                                </a>

                                <div class="banner-content">
                                    <h4 class="banner-subtitle d-lg-none d-xl-block"><a href="#">Thời trang nữ</a>
                                    </h4><!-- End .banner-subtitle -->
                                    <h3 class="banner-title"><a href="#">Áo thun nữ <span>Áo sơ mi</span></a></h3>
                                    <!-- End .banner-title -->
                                </div><!-- End .banner-content -->
                            </div><!-- End .banner -->

                            <div class="banner mb-lg-1 mb-xl-2">
                                <a href="#">
                                    <img src="{{ asset('UserLTE/assets/images/banner_NTL/PHI.png') }}"
                                         alt="Banner"style="width: 370px; height: 200px;">
                                </a>

                                <div class="banner-content">
                                    <h4 class="banner-subtitle d-lg-none d-xl-block">Đầm nữ cá tính<a href="#"></a>
                                    </h4><!-- End .banner-subtitle -->
                                    <h3 class="banner-title"><a href="#">Đầm, váy<span>Quần Jean</span></a>
                                    </h3><!-- End .banner-title -->
                                </div><!-- End .banner-content -->
                            </div><!-- End .banner -->
                        </div><!-- End .intro-banners -->
                    </div><!-- End .col-lg-4 -->
                </div><!-- End .row -->
                <div class="pt-2 pb-3">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="banner banner-overlay">
                                    <a href="{{ URL::to('/product_all') }}">
                                        <img src="{{ asset('UserLTE/assets/images/demos/demo-6/banners/banner-1.jpg') }}"
                                            alt="Banner">
                                    </a>

                                    <div class="banner-content banner-content-center">
                                        <h4 class="banner-subtitle text-white"><a href="{{ URL::to('/product_all') }}">Quần áo</a></h4>
                                        <!-- End .banner-subtitle -->
                                        <h3 class="banner-title text-white"><a href="{{ URL::to('/product_all') }}"><strong>Nữ</strong></h3>
                                        <!-- End .banner-title -->
                                        <a href="{{ URL::to('/product_all') }}" class="btn btn-outline-white banner-link underline">Shop Now</a>
                                    </div><!-- End .banner-content -->
                                </div><!-- End .banner -->
                            </div><!-- End .col-sm-6 -->

                            <div class="col-sm-6">
                                <div class="banner banner-overlay">
                                    <a href="{{ URL::to('/product_all') }}">
                                        <img src="{{ asset('UserLTE/assets/images/demos/demo-6/banners/banner-3.jpg') }}"
                                            alt="Banner">
                                    </a>

                                    <div class="banner-content banner-content-center">
                                        <h4 class="banner-subtitle text-white"><a href="{{ URL::to('/product_all') }}">Phụ kiện </a></h4>
                                        <!-- End .banner-subtitle -->
                                        <h3 class="banner-title text-white"><a href="{{ URL::to('/product_all') }}"><strong>Nữ</strong></a></h3>
                                        <!-- End .banner-title -->
                                        <a href="{{ URL::to('/product_all') }}" class="btn btn-outline-white banner-link underline">Shop Now</a>
                                    </div><!-- End .banner-content -->
                                </div><!-- End .banner -->
                            </div><!-- End .col-sm-6 -->
                        </div><!-- End .row -->
                        <hr class="mt-0 mb-0">
                    </div><!-- End .container -->
                </div><!-- End .bg-gray -->
            </div><!-- End .container -->
        </div><!-- End .intro-section -->

        <!-- feature_product-->
        @include('home.components.feature_product')
        <!-- feature_product-->

        </div><!-- End .container -->
        <div class="mb-7 mb-lg-11"></div><!-- End .mb-7 -->


        <div class="container">
            <div class="owl-carousel mt-5 mb-5 owl-simple" data-toggle="owl"
                data-owl-options='{
                    "nav": false,
                    "dots": false,
                    "margin": 30,
                    "loop": false,
                    "responsive": {
                        "0": {
                            "items":2
                        },
                        "420": {
                            "items":3
                        },
                        "600": {
                            "items":4
                        },
                        "900": {
                            "items":5
                        },
                        "1024": {
                            "items":6
                        }
                    }
                }'>
                <a href="#" class="brand">
                    <img src="UserLTE/assets/images/brands/10.webp" alt="Brand Name">
                </a>
                <a href="#" class="brand">
                    <img src="UserLTE/assets/images/brands/11.jpg" alt="Brand Name">
                </a>

                <a href="#" class="brand">
                    <img src="UserLTE/assets/images/brands/12.jpg" alt="Brand Name">
                </a>

                <a href="#" class="brand">
                    <img src="UserLTE/assets/images/brands/13.png" alt="Brand Name">
                </a>

                <a href="#" class="brand">
                    <img src="UserLTE/assets/images/brands/14.jpg" alt="Brand Name">
                </a>

                <a href="#" class="brand">
                    <img src="UserLTE/assets/images/brands/15.png" alt="Brand Name">
                </a>

                <a href="#" class="brand">
                    <img src="UserLTE/assets/images/brands/16.png" alt="Brand Name">
                </a>
                <a href="#" class="brand">
                    <img src="UserLTE/assets/images/brands/17.png" alt="Brand Name">
                </a>
            </div><!-- End .owl-carousel -->
        </div><!-- End .container -->

        <div class="container">
            <hr class="mt-3 mb-6">
        </div><!-- End .container -->

        {{-- Trending product --}}
        @include('home.components.category_tab')
        {{-- Trending product --}}

        <div class="container">
            <hr class="mt-5 mb-6">
        </div><!-- End .container -->


        {{-- Selling products --}}
        @include('home.components.selling_product')
        {{-- Selling products --}}

        <div class="container">
            <hr class="mt-5 mb-0">
        </div><!-- End .container -->

        <div class="icon-boxes-container mt-2 mb-2 bg-transparent">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-lg-3">
                        <div class="icon-box icon-box-side">
                            <span class="icon-box-icon text-dark">
                                <i class="icon-rocket"></i>
                            </span>
                            <div class="icon-box-content">
                                <h3 class="icon-box-title">Miễn phí vận chuyển</h3><!-- End .icon-box-title -->
                                <p>Từ 1,000,000 VNĐ</p>
                            </div><!-- End .icon-box-content -->
                        </div><!-- End .icon-box -->
                    </div><!-- End .col-sm-6 col-lg-3 -->

                    <div class="col-sm-6 col-lg-3">
                        <div class="icon-box icon-box-side">
                            <span class="icon-box-icon text-dark">
                                <i class="icon-rotate-left"></i>
                            </span>

                            <div class="icon-box-content">
                                <h3 class="icon-box-title">1 đổi 1</h3><!-- End .icon-box-title -->
                                <p>Trong vòng 7 - 30 ngày</p>
                            </div><!-- End .icon-box-content -->
                        </div><!-- End .icon-box -->
                    </div><!-- End .col-sm-6 col-lg-3 -->

                    <div class="col-sm-6 col-lg-3">
                        <div class="icon-box icon-box-side">
                            <span class="icon-box-icon text-dark">
                                <i class="icon-info-circle"></i>
                            </span>

                            <div class="icon-box-content">
                                <h3 class="icon-box-title">Giảm 10%</h3><!-- End .icon-box-title -->
                                <p>đơn hàng đầu tiên</p>
                            </div><!-- End .icon-box-content -->
                        </div><!-- End .icon-box -->
                    </div><!-- End .col-sm-6 col-lg-3 -->

                    <div class="col-sm-6 col-lg-3">
                        <div class="icon-box icon-box-side">
                            <span class="icon-box-icon text-dark">
                                <i class="icon-life-ring"></i>
                            </span>

                            <div class="icon-box-content">
                                <h3 class="icon-box-title">Hỗ trợ dịch vụ</h3><!-- End .icon-box-title -->
                                <p>24/7</p>
                            </div><!-- End .icon-box-content -->
                        </div><!-- End .icon-box -->
                    </div><!-- End .col-sm-6 col-lg-3 -->
                </div><!-- End .row -->
            </div><!-- End .container -->
        </div><!-- End .icon-boxes-container -->
    </main><!-- End .main -->
@endsection

<button id="scroll-top" title="Back to Top"><i class="icon-arrow-up"></i></button>

<!-- Mobile Menu -->
<div class="mobile-menu-overlay"></div><!-- End .mobil-menu-overlay -->

<div class="mobile-menu-container">
    <div class="mobile-menu-wrapper">
        <span class="mobile-menu-close"><i class="icon-close"></i></span>

        <form action="#" method="get" class="mobile-search">
            <label for="mobile-search" class="sr-only">Search</label>
            <input type="search" class="form-control" name="mobile-search" id="mobile-search"
                placeholder="Search in..." required>
            <button class="btn btn-primary" type="submit"><i class="icon-search"></i></button>
        </form>

        <ul class="nav nav-pills-mobile nav-border-anim" role="tablist">
            <li class="nav-item">
                <a class="nav-link active" id="mobile-menu-link" data-toggle="tab" href="#mobile-menu-tab"
                    role="tab" aria-controls="mobile-menu-tab" aria-selected="true">Menu</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="mobile-cats-link" data-toggle="tab" href="#mobile-cats-tab" role="tab"
                    aria-controls="mobile-cats-tab" aria-selected="false">Categories</a>
            </li>
        </ul>


        <div class="social-icons">
            <a href="#" class="social-icon" target="_blank" title="Facebook"><i
                    class="icon-facebook-f"></i></a>
            <a href="#" class="social-icon" target="_blank" title="Twitter"><i class="icon-twitter"></i></a>
            <a href="#" class="social-icon" target="_blank" title="Instagram"><i
                    class="icon-instagram"></i></a>
            <a href="#" class="social-icon" target="_blank" title="Youtube"><i class="icon-youtube"></i></a>
        </div><!-- End .social-icons -->
    </div><!-- End .mobile-menu-wrapper -->
</div><!-- End .mobile-menu-container -->

<!-- Sign in / Register Modal -->
<div class="modal fade" id="signin-modal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true"><i class="icon-close"></i></span>
                </button>

                <div class="form-box">
                    <div class="form-tab">
                        <ul class="nav nav-pills nav-fill nav-border-anim" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="signin-tab" data-toggle="tab" href="#signin"
                                    role="tab" aria-controls="signin" aria-selected="true">Sign In</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="register-tab" data-toggle="tab" href="#register"
                                    role="tab" aria-controls="register" aria-selected="false">Register</a>
                            </li>
                        </ul>
                        <div class="tab-content" id="tab-content-5">
                            <div class="tab-pane fade show active" id="signin" role="tabpanel"
                                aria-labelledby="signin-tab">
                                <form action="#">
                                    <div class="form-group">
                                        <label for="singin-email">Username or email address *</label>
                                        <input type="text" class="form-control" id="singin-email"
                                            name="singin-email" required>
                                    </div><!-- End .form-group -->

                                    <div class="form-group">
                                        <label for="singin-password">Password *</label>
                                        <input type="password" class="form-control" id="singin-password"
                                            name="singin-password" required>
                                    </div><!-- End .form-group -->

                                    <div class="form-footer">
                                        <button type="submit" class="btn btn-outline-primary-2">
                                            <span>LOG IN</span>
                                            <i class="icon-long-arrow-right"></i>
                                        </button>

                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="signin-remember">
                                            <label class="custom-control-label" for="signin-remember">Remember
                                                Me</label>
                                        </div><!-- End .custom-checkbox -->

                                        <a href="#" class="forgot-link">Forgot Your Password?</a>
                                    </div><!-- End .form-footer -->
                                </form>
                                <div class="form-choice">
                                    <p class="text-center">or sign in with</p>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <a href="#" class="btn btn-login btn-g">
                                                <i class="icon-google"></i>
                                                Login With Google
                                            </a>
                                        </div><!-- End .col-6 -->
                                        <div class="col-sm-6">
                                            <a href="#" class="btn btn-login btn-f">
                                                <i class="icon-facebook-f"></i>
                                                Login With Facebook
                                            </a>
                                        </div><!-- End .col-6 -->
                                    </div><!-- End .row -->
                                </div><!-- End .form-choice -->
                            </div><!-- .End .tab-pane -->
                            <div class="tab-pane fade" id="register" role="tabpanel"
                                aria-labelledby="register-tab">
                                <form action="#">
                                    <div class="form-group">
                                        <label for="register-email">Your email address *</label>
                                        <input type="email" class="form-control" id="register-email"
                                            name="register-email" required>
                                    </div><!-- End .form-group -->

                                    <div class="form-group">
                                        <label for="register-password">Password *</label>
                                        <input type="password" class="form-control" id="register-password"
                                            name="register-password" required>
                                    </div><!-- End .form-group -->

                                    <div class="form-footer">
                                        <button type="submit" class="btn btn-outline-primary-2">
                                            <span>SIGN UP</span>
                                            <i class="icon-long-arrow-right"></i>
                                        </button>

                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="register-policy"
                                                required>
                                            <label class="custom-control-label" for="register-policy">I agree to the
                                                <a href="#">privacy policy</a> *</label>
                                        </div><!-- End .custom-checkbox -->
                                    </div><!-- End .form-footer -->
                                </form>
                                <div class="form-choice">
                                    <p class="text-center">or sign in with</p>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <a href="#" class="btn btn-login btn-g">
                                                <i class="icon-google"></i>
                                                Login With Google
                                            </a>
                                        </div><!-- End .col-6 -->
                                        <div class="col-sm-6">
                                            <a href="#" class="btn btn-login  btn-f">
                                                <i class="icon-facebook-f"></i>
                                                Login With Facebook
                                            </a>
                                        </div><!-- End .col-6 -->
                                    </div><!-- End .row -->
                                </div><!-- End .form-choice -->
                            </div><!-- .End .tab-pane -->
                        </div><!-- End .tab-content -->
                    </div><!-- End .form-tab -->
                </div><!-- End .form-box -->
            </div><!-- End .modal-body -->
        </div><!-- End .modal-content -->
    </div><!-- End .modal-dialog -->
</div><!-- End .modal -->

<div class="container newsletter-popup-container mfp-hide">
    <div class="row justify-content-center">
        <div class="col-10">
            {{-- <div class="row no-gutters bg-white newsletter-popup-content">
                    <div class="col-xl-3-5col col-lg-7 banner-content-wrap">
                        <div class="banner-content text-center">
                            <img src="UserLTE/assets/images/popup/newsletter/logo.png" class="logo" alt="logo" width="60" height="15">
                            <h2 class="banner-title">get <span>25<light>%</light></span> off</h2>
                            <p>Subscribe to the Molla eCommerce newsletter to receive timely updates from your favorite products.</p>
                            <form action="#">
                                <div class="input-group input-group-round">
                                    <input type="email" class="form-control form-control-white" placeholder="Your Email Address" aria-label="Email Adress" required>
                                    <div class="input-group-append">
                                        <button class="btn" type="submit"><span>go</span></button>
                                    </div><!-- .End .input-group-append -->
                                </div><!-- .End .input-group -->
                            </form>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="register-policy-2" required>
                                <label class="custom-control-label" for="register-policy-2">Do not show this popup again</label>
                            </div><!-- End .custom-checkbox -->
                        </div>
                    </div>
                    <div class="col-xl-2-5col col-lg-5 ">
                        <img src="UserLTE/assets/images/popup/newsletter/img-1.jpg" class="newsletter-img" alt="newsletter">
                    </div> --}}
        </div>
    </div>
</div>
</div>
