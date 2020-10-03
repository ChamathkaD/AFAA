@extends('layouts.app')

@section('content')

    <div class="slider-area2">
        <div class="slider-height2 d-flex align-items-center">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>About Us</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <section class="about-low-area section-padding2">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-12">
                    <div class="about-caption mb-50">
                        <!-- Section Tittle -->
                        <div class="section-tittle mb-35">
                            <h2>Who We Are?</h2>
                        </div>
                        <p>
                            In Sri Lanka we have a proud history thousands of years has defined our fashion and apparel Industry. Once our we were inspired by those who conquered us, and now at the height of civilization and urbanization of reached its peak based by Apparel Industry and Sri Lanka is Becoming one of the major icons of fashion world.
                            <br><br>
                            Fashion shows have always defined glamour, charisma as well as the creativity of the great mind behind the effort.
                        </p>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12 align-self-center">
                    <img src="{{ asset('img/svg/undraw_winners_ao2o.svg') }}" alt="" class="img-fluid">
                </div>
            </div>
            <div class="row mt-30">
                <div class="col-lg-6 col-md-12 text-center">
                    <img src="{{ asset('img/logo/logo_bk.jpeg') }}" alt="" class="img-fluid" width="50%">
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="about-caption mb-50">
                        <p>
                            The main idea of this mega event is motivate and Inspire who are involve as designers, Models and fashion photographers and Apparel Industry development in Sri Lankan Asia we can’t see a awarding ceremony like this and after this awarding ceremony we think it will be a grate place to give their hard work to be awarded.
                            <br><br>
                            The main awards will be appreciating all the fashion and Apparel main covering areas.
                            <br><br>
                            A designer chose a Inspiration to a specific thing to make a unique design. It specifically structured with to give the main ides of the ASIAN FASHION AWARD 2019. It will be a fabulous design and more eye cash all invitees.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="about-low-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-12">
                    <div class="about-caption mb-50">
                        <!-- Section Tittle -->
                        <div class="section-tittle mb-35">
                            <h2>Event Director</h2>
                            <h4>Mr. W.A.I.Neranjan <br>(Consultant Fashion & Textile Designer / Lecture)</h4>
                        </div>
                        <p>
                            Mr. W.A.I.Neranjan is one of the veteran and talented fashion and textile designer in Sri Lanka. Starting his professional career in 2011.He has contributed to fashion and Modeling Industry in Sri Lanka in many events, including various television programmers. He is also the founder and owner of "Universal Fashion Studio" which is established as an academy for the talented and young individuals in Sri Lanka to study and specialize fashion designing, Textile designing & Development costume designing, Fashion Marketing, Fashion Modeling and Fashion Photography.
                        </p>
                    </div>

                    <a href="{{ route('contact') }}" class="btn mt-50"> <i class="fas fa-phone mr-2"></i>Contact Us</a>
                </div>
                <div class="col-lg-6 col-md-12">
                    <!-- about-img -->
                    <div class="about-img ">
                        <div class="about-font-img d-none d-lg-block">
                            <img src="{{ asset('img/gallery/about2.png') }}" alt="">
                        </div>
                        <div class="about-back-img ">
                            <img src="{{ asset('img/gallery/about1.png') }}" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="about-low-area section-padding2">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-12 align-self-center">
                    <img src="{{ asset('img/parties/mediaalent.png') }}" alt="mediaalent" width="50%">
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="about-caption mb-50">
                        <!-- Section Tittle -->
                        <div class="section-tittle mb-35">
                            <h2>Event Producer</h2>
                            <h4>Mediaalent</h4>
                        </div>
                        <p>
                            Mediaalent started operations in beginning of 2016. Mediaalent is Sri Lankan Most outstanding media platform. It was rapidly established itself as a renowned social media partner in providing high quality graphics, content, videos and social media coverage for any kind of events. Mediaalent moving forward with young talented crew and with help of new ideas.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection
