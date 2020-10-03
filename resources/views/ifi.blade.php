@extends('layouts.app')

@section('content')

    <div class="slider-area2">
        <div class="slider-height2 d-flex align-items-center">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>International Fashion Icons</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <section class="team-area pt-180 pb-100">

        <div class="container">

            <div class="row d-flex justify-content-center">

                @if(count(\App\Icon::all()) > 0)

                    @foreach(\App\Icon::all() as $icon)
                        <div class="col-lg-3 col-md-4 col-sm-6">
                            <div class="single-team mb-30">
                                <div class="team-img">
                                    <img src="{{ Voyager::image($icon->image) }}" alt="{{ $icon->image }}">
                                    <ul class="team-social">
                                        <li><a href="{{ $icon->link }}" target="_blank"><i class="fab fa-wikipedia-w"></i></a></li>
                                    </ul>
                                </div>
                                <div class="team-caption team-caption2">
                                    <h3><a href="#">{{ $icon->name }}</a></h3>
                                </div>
                            </div>
                        </div>
                    @endforeach

                @else

                    <div class="text-center">
                        <img src="{{ asset('img/empty.svg') }}" alt="empty" width="50%">
                        <h3>There are no International Fashion Icons at that moment. Please check again later!</h3>
                    </div>

                @endif

            </div>

        </div>

    </section>

@endsection
