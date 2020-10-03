<div class="slider-area position-relative">
    <div class="slider-active">
        <!-- Single Slider -->
        <div class="single-slider slider-height d-flex align-items-center">
            <div class="container">
                <div class="row">
                    <div class="col-xl-8 col-lg-8 col-md-9 col-sm-10">
                        <div class="hero__caption">
                            <span data-animation="fadeInLeft" data-delay=".1s">
                                <i class="fas fa-calendar-alt"></i> 2020 July 30 <i class="ml-4 fas fa-map-marker-alt"></i> The Hilton Colombo, Colombo, Sri Lanka.
                            </span>
                            <h1 data-animation="fadeInLeft" data-delay=".5s">Official Digital Conference For Fashion Designers</h1>
                            <!-- Hero-btn -->
                            <div class="slider-btns">
                                <a data-animation="fadeInLeft" data-delay="1.0s" href="{{ route('judges') }}" class="btn hero-btn">View Our Jury <i class="ti-arrow-right ml-2"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Counter Section Begin -->
    @include('partials.countdown')
    <!-- Counter Section End -->
</div>
