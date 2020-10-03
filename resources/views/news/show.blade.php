@extends('layouts.app')

@section('content')

    <div class="slider-area2">
        <div class="slider-height2 d-flex align-items-center">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap hero-cap2 text-center">
                            <h2>{{ $item->title }}</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <section class="blog_area single-post-area section-padding">

        <div class="container">

            <div class="row">

                <div class="col-lg-8 posts-list">
                    <div class="single-post">
                        <div class="feature-img">
                            <img class="img-fluid" src="{{ Voyager::image($item->image) }}" alt="">
                        </div>
                        <div class="blog_details">
                            <h2 style="color: #2d2d2d;">{{ $item->title }}</h2>
                            <ul class="blog-info-link mt-3 mb-4">
                                <li><a href="#"><i class="fa fa-user"></i> Travel, Lifestyle</a></li>
                                <li><a href="#"><i class="fa fa-calendar-alt"></i> {{ $item->created_at->toDayDateTimeString() }}</a></li>
                            </ul>
                            {!! $item->body !!}
                        </div>
                    </div>
                </div>

                <div class="col-lg-4">

                    <div class="blog_right_sidebar">
                        @include('partials.news.recent')
                    </div>

                </div>

            </div>

        </div>

    </section>

@endsection
