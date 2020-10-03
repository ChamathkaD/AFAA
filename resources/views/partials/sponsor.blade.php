<section class="work-company section-padding30" style="background: #2e0e8c;">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-5 col-md-8">
                <!-- Section Tittle -->
                <div class="section-tittle section-tittle2 mb-50">
                    <h2>Our Top General Partners.</h2>
                    <p>There arge many variations ohf passages of sorem gp ilable, but the majority have ssorem gp iluffe.</p>
                </div>
            </div>
            <div class="col-lg-7">
                <div class="logo-area">
                    <div class="row">
                        @if(count($partners) > 0)
                            @foreach($partners as $partner)
                                <div class="col-lg-4 col-md-4 col-sm-6">
                                    <div class="single-logo mb-30">
                                        <img src="{{ Voyager::image($partner->logo )}}" alt="{{ $partner->name }}">
                                    </div>
                                </div>
                            @endforeach
                        @else
                            <div class="col-lg-4 col-md-4 col-sm-6">
                                <h4>To be announced...</h4>
                            </div>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
