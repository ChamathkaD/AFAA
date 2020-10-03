@extends('layouts.app')

@section('content')

    <section class="section-padding">
        <div class="container">
            <!-- Section Tittle -->
            <div class="row justify-content-center">
                <div class="col-lg-5 col-md-8">
                    <div class="section-tittle text-center mb-100">
                        <h2>AFAA Image Gallery</h2>
                        <p>There arge many variations ohf passages of sorem gp ilable, but the majority have ssorem gp iluffe.</p>
                    </div>
                </div>
            </div>

            <div class="row">

                @if(count($albums) > 0)

                    @foreach($albums as $album)

                            <div class="col-md-4">
                                <div class="card mb-4 box-shadow">
                                    <img class="card-img-top" src="{{ Voyager::image($album->cover) }}" alt="{{ $album->cover }}">
                                    <div class="card-body">
                                        <p class="card-title">{{ $album->title }}</p>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="btn-group">
                                                <a href="{{ route('albums.show', [$album->id]) }}" type="button" class="genric-btn primary-border small">View</a>
                                            </div>
                                            <small class="text-muted">{{ $album->created_at->toDayDateTimeString() }}</small>
                                        </div>
                                    </div>
                                </div>
                            </div>

                    @endforeach

                @else

                    <div class="text-center">

                        <img src="{{ asset('img/svg/undraw_images_aef7.svg') }}" alt="" width="25%">
                        <br> <br>
                        <h2>Nothing to show any albums</h2>

                    </div>

                @endif

            </div>

        </div>

    </section>

@endsection
