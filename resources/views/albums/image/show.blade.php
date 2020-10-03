@extends('layouts.app')

@section('content')

    <section class="section-padding">
        <div class="container">

            <div class="row justify-content-center">
                <div class="col-lg-7 col-md-10">
                    <div class="section-tittle text-center mb-100">
                        <h2>{{ $images->album->title }}</h2>
                        <p>{{ $images->album->description }}</p>
                    </div>
                </div>
            </div>

            <div class="row gallery-item">
                @php $images = json_decode($images->image); @endphp

                @foreach($images as $image)
                    <div class="col-md-4">
                        <a href="{{ Voyager::image($image) }}" class="img-pop-up">
                            <div class="single-gallery-image" style="background: url({{ Voyager::image($image) }});"></div>
                        </a>
                    </div>
                @endforeach

            </div>

        </div>

    </section>

@endsection
