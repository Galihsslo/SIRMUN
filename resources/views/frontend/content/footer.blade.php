<div class="footer-area-top">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <div class="footer-box">
                    <a href="/">
                        @if (@$footer->logo == null)
                            <img class="img-responsive" src="{{ asset('Assets/Frontend/img/logo-footer.png') }}"
                                alt="logo">
                        @else
                            <img class="img-responsive" src="{{ asset('storage/images/logo/' . $footer->logo) }}"
                                alt="logo">
                        @endif
                    </a>
                    <div class="footer-about">
                        <p> {{ @$footer->desc }} </p>
                    </div>
                    <ul class="footer-social">
                        <li><a href="{{ 'https://www.linkedin.com/in', @$footer->linkedln }}" target="_blank"><i
                                    class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                        <li><a href="{{ 'https://www.twitter.com/', @$footer->twitter }}" target="_blank"><i
                                    class="fa fa-twitter" aria-hidden="true"></i></a></li>
                        <li><a href="{{ 'https://www.facebook.com/', @$footer->facebook }}" target="_blank"><i
                                    class="fa fa-facebook" aria-hidden="true"></i></a></li>
                        <li><a href="{{ 'https://www.instagram.com/', @$footer->instagram }}" target="_blank"><i
                                    class="fa fa-instagram" aria-hidden="true"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <div class="footer-box">
                    <h3>Informasi</h3>
                    <ul class="corporate-address">
                        <li><i class="fa fa-phone" aria-hidden="true"></i><a href="tel:{{ @$footer->telp }}">
                                {{ @$footer->telp }}</a></li>
                        <li><i class="fa fa-envelope-o" aria-hidden="true"></i>{{ @$footer->email }}</li>
                    </ul>
                    <div class="newsletter-area">
                        <h3>Ingin mendapat berita terupdate ?</h3>
                        <div class="input-group stylish-input-group">
                            <input type="text" placeholder="Masukan email kamu disini" class="form-control">
                            <span class="input-group-addon">
                                <button type="submit">
                                    <i class="fa fa-paper-plane" aria-hidden="true"></i>
                                </button>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <div class="footer-box">
                    <h3>Maps</h3>
                    <ul class="flickr-photos">
                        {{-- <li>
                            <a href="#"><img class="img-responsive" src="{{asset('Assets/Frontend/img/footer/1.jpg')}}" alt="flickr"></a>
                        </li>
                        <li>
                            <a href="#"><img class="img-responsive" src="{{asset('Assets/Frontend/img/footer/2.jpg')}}" alt="flickr"></a>
                        </li>
                        <li>
                            <a href="#"><img class="img-responsive" src="{{asset('Assets/Frontend/img/footer/3.jpg')}}" alt="flickr"></a>
                        </li>
                        <li>
                            <a href="#"><img class="img-responsive" src="{{asset('Assets/Frontend/img/footer/4.jpg')}}" alt="flickr"></a>
                        </li>
                        <li>
                            <a href="#"><img class="img-responsive" src="{{asset('Assets/Frontend/img/footer/5.jpg')}}" alt="flickr"></a>
                        </li>
                        <li>
                            <a href="#"><img class="img-responsive" src="{{asset('Assets/Frontend/img/footer/6.jpg')}}" alt="flickr"></a>
                        </li> --}}
                        <div class="map-contain">
                            <iframe
                                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3973.4405793523897!2d104.94522867530036!3d-5.1932202523782!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e474a1861a5901d%3A0x9a7968cb9ae49542!2sPPTQ%20Sirojul%20Munir%20Sri%20Purnomo!5e0!3m2!1sid!2sid!4v1695970392677!5m2!1sid!2sid"
                                width="450" height="250" style="border:6;" allowfullscreen="true" loading="lazy"
                                referrerpolicy="no-referrer-when-downgrade"></iframe>
                        </div>

                    </ul>

                </div>
            </div>
        </div>
    </div>
</div>
<div class="footer-area-bottom">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                <p>&copy; {{ date('Y') }} <a href="http://sentramediadevelopment.tech" target="_blank">Sentra Media
                        Development</a> All Rights Reserved.
                </p>

            </div>
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                <ul class="payment-method">
                    <li>
                        <a href="#">Payment Methode <img alt="payment-method"
                                src="{{ asset('Assets') }}/Frontend/img/payment-method1.jpg"></a>
                    </li>
                    <li>
                        <a href="#"><img alt="payment-method"
                                src="{{ asset('Assets') }}/Frontend/img/payment-method2.jpg"></a>
                    </li>
                    <li>
                        <a href="https://theidioms.com"><img alt="Idioms"
                                src="{{ asset('Assets') }}/Frontend/img/payment-method3.jpg"></a>
                    </li>
                    <li>
                        <a href="#"><img alt="payment-method"
                                src="{{ asset('Assets') }}/Frontend/img/payment-method4.jpg"></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
