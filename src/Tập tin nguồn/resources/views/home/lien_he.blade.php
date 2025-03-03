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
        <div class="container">
            <div class="page-header page-header-big text-center"
                style="background-image: url('{{ asset('UserLTE/assets/images/contact-header-bg.jpg') }}')">
                <h1 class="page-title text-white"><strong>Liên Hệ<span class="text-white">Với Chúng Tôi</span></strong></h1>
            </div><!-- End .page-header -->
        </div><!-- End .container -->

        <div class="page-content pb-0">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 mb-2 mb-lg-0 text-center" >
                        <h2 class="title mb-1">Thông tin liên lạc</h2><!-- End .title mb-2 -->
                        <p class="mb-3">Mani's Stylish Fashion. Hãy liên hệ với chúng tôi nếu bạn có
                            thắc mắc, hay vấn đề gì muốn giải quyết. Chúng tôi luôn sẵn sàng giải đáp thắc mắc của bạn. Mani's Stylish Fashion xin cảm ơn!!! </p>
                        <div class="row">
                            <div class="col-sm-7">
                                <div class="contact-info">
                                    <h3>Văn phòng</h3>

                                    <ul class="contact-list">
                                        <li>
                                            <i class="icon-map-marker"></i>
                                            Nguyễn Thiện Thành - Khóm 4, Phường 5, Thành phố Trà Vinh, tỉnh Trà Vinh
                                        </li>
                                        <li>
                                            <i class="icon-phone"></i>
                                            <a href="tel:#">038 253 3858</a>
                                        </li>
                                        <li>
                                            <i class="icon-envelope"></i>
                                            <a href="mailto:#">phiphi1101@gmail.com</a>
                                        </li>
                                    </ul><!-- End .contact-list -->
                                </div><!-- End .contact-info -->
                            </div><!-- End .col-sm-7 -->

                            <div class="col-sm-5">
                                <div class="contact-info">
                                    <h3>Thời gian làm việc</h3>

                                    <ul class="contact-list">
                                        <li>
                                            <i class="icon-clock-o"></i>
                                            <span class="text-dark">Thứ 2 - Thứ 7</span> <br>10h sáng- 7h tối
                                        </li>
                                        <li>
                                            <i class="icon-calendar"></i>
                                            <span class="text-dark">Chủ nhật</span> <br>11h sáng - 6h tối
                                        </li>
                                    </ul><!-- End .contact-list -->
                                </div><!-- End .contact-info -->
                            </div><!-- End .col-sm-5 -->
                        </div><!-- End .row -->
                    </div><!-- End .col-lg-6 -->
                    {{-- <div class="col-lg-6">
                        <h2 class="title mb-1">Bạn có câu hỏi nào không?</h2><!-- End .title mb-2 -->
                        <p class="mb-2">Sử dụng mẫu dưới đây để liên hệ với nhóm nhân viên chăm sóc khách hàng</p>

                        <form action="#" class="contact-form mb-3">
                            <div class="row">
                                <div class="col-sm-6">
                                    <label for="cname" class="sr-only">Tên</label>
                                    <input type="text" class="form-control" id="cname" placeholder="Tên *" required>
                                </div><!-- End .col-sm-6 -->

                                <div class="col-sm-6">
                                    <label for="cemail" class="sr-only">Email</label>
                                    <input type="email" class="form-control" id="cemail" placeholder="Email *"
                                        required>
                                </div><!-- End .col-sm-6 -->
                            </div><!-- End .row -->

                            <div class="row">
                                <div class="col-sm-6">
                                    <label for="cphone" class="sr-only">Điện thoại</label>
                                    <input type="tel" class="form-control" id="cphone" placeholder="Điện thoại">
                                </div><!-- End .col-sm-6 -->

                                <div class="col-sm-6">
                                    <label for="csubject" class="sr-only">Địa chỉ</label>
                                    <input type="text" class="form-control" id="csubject" placeholder="Địa chỉ">
                                </div><!-- End .col-sm-6 -->
                            </div><!-- End .row -->

                            <label for="cmessage" class="sr-only">Tin nhắn</label>
                            <textarea class="form-control" cols="30" rows="4" id="cmessage" required placeholder="Tin nhắn *"></textarea>

                            <button type="submit" class="btn btn-outline-primary-2 btn-minwidth-sm">
                                <span>Gửi</span>
                                <i class="icon-long-arrow-right"></i>
                            </button>
                        </form><!-- End .contact-form -->
                    </div><!-- End .col-lg-6 -->
                </div><!-- End .row --> --}}

                <hr class="mt-4 mb-5">

                <div class="col-lg-12 mb-2 mb-lg-0 text-center">
                    <h2 class="title text-center mb-3">Cửa hàng của chúng tôi</h2><!-- End .title text-center mb-2 -->

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="store">
                                <div class="row">
                                    <div class="col-sm-12 col-xl-12" >
                                        <div class="store-content">
                                            <h3 class="store-title">Nguyễn Thiện Thành - Khóm 4, Phường 5, Thành phố Trà Vinh, tỉnh Trà Vinh</h3><!-- End .store-title -->
                                            <address> Số 126 Nguyễn Thiện Thành - Khóm 4, Phường 5, Thành phố Trà Vinh, tỉnh Trà Vinh</address>
                                            <div><a href="tel:#">+84 382533858</a></div>
                                            <h4 class="store-subtitle">Giờ mở cửa:</h4><!-- End .store-subtitle -->
                                            <div>Thứ Hai - Thứ Bảy: 10 giờ sáng - 7 giờ tối</div>
                                            <div>Chủ Nhật: 11 giờ sáng - 6 giờ chiều</div>
                                        </div><!-- End .store-content -->
                                    </div><!-- End .col-xl-6 -->

                                </div><!-- End .row -->
                            </div><!-- End .store -->
                        </div><!-- End .col-lg-6 -->

                        <div class="col-lg-6">
                            <div class="store">
                                <div class="row">
                                    <div class="col-sm-5 col-xl-6">
                                        {{-- <figure class="store-media mb-2 mb-lg-0">
                                            <img src="{{ asset('UserLTE/assets/images/stores/img-2.jpg') }}"
                                                alt="image"> --}}
                                        </figure><!-- End .store-media -->
                                    </div><!-- End .col-xl-6 -->

                                    {{-- <div class="col-sm-7 col-xl-6">
                                        <div class="store-content">
                                            <h3 class="store-title">One New Vietnam Plaza</h3><!-- End .store-title -->
                                            <address>88 Đường Lê Lợi, Phường 5, Thành phố Trà Vinh, Việt Nam</address>
                                            <div><a href="tel:#">+84 987-876-6543</a></div>

                                            <h4 class="store-subtitle">Giờ mở cửa:</h4><!-- End .store-subtitle -->
                                            <div>Thứ Hai - Thứ Sáu: 9 giờ sáng - 8 giờ tối</div>
                                            <div> Thứ Bảy: 9 giờ sáng - 2 giờ chiều</div>
                                            <div> Chủ Nhật: Đóng cửa</div> --}}
                                        </div><!-- End .store-content -->
                                    </div><!-- End .col-xl-6 -->
                                </div><!-- End .row -->
                            </div><!-- End .store -->
                        </div><!-- End .col-lg-6 -->
                    </div><!-- End .row -->
                </div><!-- End .stores -->
            </div><!-- End .container -->
            <div id="map">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d62882.018189011214!2d106.34651932657879!3d9.923451593532501!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a0175ea296facb%3A0x55ded92e29068221!2zVHLGsOG7nW5nIMSQ4bqhaSBI4buNYyBUcsOgIFZpbmg!5e0!3m2!1svi!2s!4v1721113219627!5m2!1svi!2s" width="1600" height="700" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div><!-- End .page-content -->
    </main><!-- End .main -->
@endsection
