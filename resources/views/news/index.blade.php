@extends('layouts.app')

@section('content')

    <div class="slider-area2">
        <div class="slider-height2 d-flex align-items-center">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap hero-cap2 text-center">
                            <h2>AFAA News</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <section class="blog_area section-padding">

        <div class="container">

                @if(count($news) > 0)

                    <div class="row d-flex justify-content-center">

                    <div class="col-lg-8 mb-5 mb-lg-0">

                        <div class="blog_left_sidebar">

                            @foreach($news as $var)

                                <article class="blog_item">
                                    <div class="blog_item_img">
                                        <img class="card-img rounded-0" src="{{ Voyager::image($var->image) }}" alt="{{ $var->image }}">
                                        <a href="#" class="blog_item_date">
                                            <h3>{{ $var->created_at->isoFormat('D') }}</h3>
                                            <p>{{ $var->created_at->isoFormat('MMM') }}</p>
                                        </a>
                                    </div>
                                    <div class="blog_details">
                                        <a class="d-inline-block" href="{{ route('news.show', [$var->slug]) }}">
                                            <h2 class="blog-head" style="color: #2d2d2d;">{{ $var->title }}</h2>
                                        </a>
                                        <p>
                                            @if(strlen(strip_tags($var->body)) > 250)
                                                {{ str_limit(strip_tags($var->body), 250) }} <br> <br>
                                                <a href="{{ route('news.show', [$var->slug]) }}" class="primary-button">Read More <i class="ti-arrow-circle-right ml-1 mr-1"></i></a>
                                            @else
                                                {{ str_limit(strip_tags($var->body)) }}
                                            @endif
                                        </p>
                                        <ul class="blog-info-link">
                                            <li><a href="#"><i class="fa fa-clock"></i> {{ $var->created_at->format('h:i A') }}</a></li>
                                            <li><a href="#"><i class="fas fa-calendar-alt"></i> {{ $var->created_at->toDateString() }}</a></li>
                                        </ul>
                                    </div>
                                </article>

                            @endforeach

                            <nav class="blog-pagination justify-content-center d-flex">
                                {{ $news->links() }}
                            </nav>

                        </div>
                    </div>
            </div>

                @else

                    <div class="row">

                        <div class="col d-flex justify-content-center">

                            <div class="text-center">
                                <img src="{{ asset('img/empty.svg') }}" alt="empty" width="50%">
                                <h1>There are no news at that moment. Please check again later!</h1>
                            </div>

                        </div>

                    </div>

                @endif

        </div>

    </section>

@endsection
