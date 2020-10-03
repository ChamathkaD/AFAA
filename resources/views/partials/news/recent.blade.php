@if(count($news) > 0)

    <aside class="single_sidebar_widget popular_post_widget">

        <h3 class="widget_title" style="color: #2d2d2d;">Recent Post</h3>

            @foreach($news as $var)
        <div class="media post_item">
            <img src="{{ Voyager::image($var->image) }}" alt="{{ $var->image }}" width="80">
            <div class="media-body">
                <a href="{{ route('news.show', [$var->slug]) }}">
                    <h3 style="color: #2d2d2d;">{{ $var->title }}</h3>
                </a>
                <p>{{ $var->created_at->toDayDateTimeString() }}</p>
            </div>
        </div>

    @endforeach

    </aside>

@else

    <div class="text-center">
        <img src="{{ asset('img/empty.svg') }}" alt="empty" width="50%">
        <h4>There are no news at that moment. Please check again later!</h4>
    </div>

@endif
