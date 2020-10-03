<footer>
    <!-- Footer Start-->
    <div class="footer-area footer-padding">
        <div class="container">
            <div class="row d-flex justify-content-between">
                <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                    <div class="single-footer-caption mb-50">
                        <div class="single-footer-caption mb-30">
                            <div class="footer-tittle">
                                <img src="{{ asset('img/logo/logo_footer.png') }}" class="img-responsive" alt="" width="75%">
                                <div class="footer-pera mt-2">
                                    <p>The main idea of this mega event is to motivate and Inspire who are involved as designers, models, and fashion photographers and Apparel Industry development in Sri Lankan Asia we can’t see an awarding ceremony like this and after this awarding ceremony, we think it will be a great place to give their hard work to be awarded.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-4 col-sm-5">
                    <div class="single-footer-caption mb-50">
                        <div class="footer-tittle">
                            <h4>Contact Info</h4>
                            <ul>
                                <li><i class="fas fa-phone mr-2"></i><a href="tel:{{setting('site.telephone1')}}">{{setting('site.telephone1')}}</a></li>
                                <li><i class="fas fa-phone mr-2"></i><a href="tel:{{setting('site.telephone2')}}">{{setting('site.telephone2')}}</a></li>
                                <li><i class="fas fa-envelope mr-2"></i><a href="mailto:{{setting('site.email1') }}">{{setting('site.email1') }}</a></li>
                                <li><i class="fas fa-envelope mr-2"></i><a href="mailto:{{setting('site.email2') }}">{{setting('site.email2') }}</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-4 col-sm-5">
                    <div class="single-footer-caption mb-50">
                        <div class="footer-tittle">
                            <h4>Important Link</h4>
                            <ul>
                                <li><a href="{{ URL::to('/') }}">Home</a></li>
                                <li><a href="{{ route('about') }}">About</a></li>
                                <li><a href="{{ route('contact') }}">Contacts</a></li>
                                <li><a href="{{ route('videos') }}">Videos</a></li>
                                <li><a href="{{ route('albums') }}">Images</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-6 col-sm-5">
                    <div class="single-footer-caption mb-50">
                        <div class="footer-tittle">
                            <h4>Countries</h4>
                            @include('partials.countries')
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- footer-bottom area -->
    <div class="footer-bottom-area footer-bg">
        <div class="container">
            <div class="footer-border">
                <div class="row d-flex justify-content-between align-items-center">
                    <div class="col-xl-10 col-lg-8 ">
                        <div class="footer-copy-right">
                            <p>
                                Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved.
                                </p>
                        </div>
                    </div>

                    <div class="col-xl-2 col-lg-4">
                        {{ menu('social', 'partials.menu.social') }}
                    </div>

                </div>

            </div>

        </div>

    </div>

</footer>
