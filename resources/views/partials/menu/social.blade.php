<div class="footer-social f-right">
    @foreach($items as $menu_item)
        <a href="{{ $menu_item->link() }}" target="_blank">
            <i class="fab fa-{{ $menu_item->title }}"></i>
        </a>
    @endforeach
</div>
