@extends('layouts.app')

@section('content')

    <div class="slider-area2">
        <div class="slider-height2 d-flex align-items-center">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap hero-cap2 text-center">
                            <h2>Contact Us</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <section class="contact-section">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h2 class="contact-title">Get in Touch</h2>
                </div>
                <div class="col-lg-8">
                    @if(Session::has('success'))
                        @include('components.success')
                    @endif
                    @if ($errors->any())
                        @include('components.error')
                    @endif
                    @include('form.contact')
                </div>
                <div class="col-lg-3 offset-lg-1">

                    <div class="media contact-info">
                        <div class="media-body">
                            <h3 class="text-justify">Do you have any questions? Or any suggestions? We're here to help and answer any question you might have. We look forward to hearing from you.</h3>
                        </div>
                    </div>

                    <div class="media contact-info">
                        <span class="contact-info__icon"><i class="ti-tablet"></i></span>
                        <div class="media-body">
                            <h3>{{setting('site.telephone1')}}</h3>
                            <h3>{{setting('site.telephone2')}}</h3>
                        </div>
                    </div>

                    <div class="media contact-info">
                        <span class="contact-info__icon"><i class="ti-email"></i></span>
                        <div class="media-body">
                            <h3><a href="mailto:{{setting('site.email1')}}">{{setting('site.email1')}}</a></h3>
                            <h3><a href="mailto:{{setting('site.email2')}}">{{setting('site.email2')}}</a></h3>
                            <p>Send us your query anytime!</p>
                        </div>
                    </div>

                </div>

            </div>

        </div>

    </section>

@endsection
