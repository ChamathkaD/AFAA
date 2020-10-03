<section class="home-blog-area section-padding30">
    <div class="container">
        <!-- Section Tittle -->
        <div class="row justify-content-center">
            <div class="col-lg-5 col-md-8">
                <div class="section-tittle text-center mb-50">
                    <h2>News From Blog</h2>
                    <p>There arge many variations ohf passages of sorem gp ilable, but the majority have ssorem gp iluffe.</p>
                </div>
            </div>
        </div>
        <div class="row">
            @if(count($news) > 0)

                @foreach($news as $var)

                <div class="col-xl-6 col-lg-6 col-md-6">
                    <div class="home-blog-single mb-30">
                        <div class="blog-img-cap">
                            <div class="blog-img">
                                <img src="{{ Voyager::image($var->image) }}" alt="{{ $var->image }}">
                                <!-- Blog date -->
                                <div class="blog-date text-center">
                                    <span>{{ $var->created_at->isoFormat('MMM') }}</span>
                                    <p>{{ $var->created_at->isoFormat('D') }}</p>
                                </div>
                            </div>
                            <div class="blog-cap">
                                <p class="text-muted"><i class="fas fa-clock mr-2"></i> {{ $var->created_at->diffForHumans() }}</p>
                                <h3><a href="{{ route('news.show', [$var->slug]) }}">{{ $var->title }}</a></h3>
                                <a href="{{ route('news.show', [$var->slug]) }}" class="more-btn">Read more »</a>
                            </div>
                        </div>
                    </div>
                </div>

                @endforeach

            @else

                <div class="text-center">
                    <img src="{{ asset('img/empty.svg') }}" alt="empty" width="50%">
                    <h4>There are no news at that moment. Please check again later!</h4>
                </div>

            @endif

        </div>
    </div>
</section>
