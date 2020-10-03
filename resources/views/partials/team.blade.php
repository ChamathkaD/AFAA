<section class="team-area pt-180 pb-100 section-bg" data-background="{{ asset('img/gallery/section_bg02.png') }}">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-9">
                <!-- Section Tittle -->
                <div class="section-tittle section-tittle2 mb-50">
                    <h2>The Most Important Speakers.</h2>
                    <p>There arge many variations ohf passages of sorem gpsum ilable, but the majority have suffered alteration in.</p>
                    <a href="{{ route('ifi') }}" class="btn hero-btn mt-30">International Fashion Icon <i class="fas fa-chevron-right"></i></a>
                </div>
            </div>

            @foreach(\App\Speaker::all() as $speaker)
                <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="single-team mb-30">
                    <div class="team-img">
                        <img src="{{ Voyager::image($speaker->image) }}" alt="">
                        <!-- Blog Social -->
                        <ul class="team-social">
                            <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                        </ul>
                    </div>
                    <div class="team-caption">
                        <h3><a href="#">{{$speaker->name}}</a></h3>
                        <p>{{$speaker->position}}</p>
                    </div>
                </div>
            </div>
            @endforeach

        </div>
    </div>
</section>
