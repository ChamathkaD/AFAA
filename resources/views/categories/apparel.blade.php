@extends('layouts.app')

@section('content')

    <div class="slider-area2">
        <div class="slider-height2 d-flex align-items-center">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap hero-cap2 text-center">
                            <h2>Apparel Industry</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <section class="blog_area section-padding">

        <div class="container">

            <div class="row d-flex justify-content-center">

                <div class="col-lg-11 mb-5 mb-lg-0">

                    <div class="blog_left_sidebar">

                        <article class="blog_item">

                            <div class="blog_item_img">
                                <img class="card-img rounded-0" src="{{ asset('img/blog/single_blog_1.png') }}" alt="">
                            </div>

                            <div class="blog_details">

                                <a class="d-inline-block" href="#">
                                    <h2 class="blog-head" style="color: #2d2d2d;">Apparel Industry</h2>
                                </a>

                                <p>
                                    This award is open to company which import export and decide apparel item two main title are presented under this category.
                                </p>

                                <ul class="unordered-list">
                                    <li>Best Apparel Brand Of The Year</li>
                                    <li>Best Upcoming Apparel Brand Of The Year</li>
                                </ul>

                                <br>

                                <p>
                                    Factors such as,
                                </p>

                                <ul class="unordered-list">
                                    <li>International stands</li>
                                    <li>Ase of technology</li>
                                    <li>Creativity</li>
                                    <li>Consumer friendliness and environment</li>
                                    <li>Adaptability</li>
                                    <li>Human Sensitivity</li>
                                    <li>Production Mode Capacity and Development</li>
                                    <li>Eco Friendly</li>
                                </ul>

                            </div>

                        </article>

                    </div>

                </div>

            </div>

        </div>

    </section>

@endsection
