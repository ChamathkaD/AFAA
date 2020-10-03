<header>
    <div class="header-area">
        <div class="main-header header-sticky">
            <div class="container-fluid">
                <div class="row align-items-center">
                    <div class="col-xl-2 col-lg-2 col-md-1">
                        <div class="logo">
                            <a href="{{ URL::to('/') }}">
                                <img class="img-responsive" src="{{ asset('img/logo/logo.png') }}" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="col-xl-10 col-lg-10 col-md-10">
                        <div class="menu-main d-flex align-items-center justify-content-end">
                            <!-- Main-menu -->
                            <div class="main-menu f-right d-none d-lg-block">
                                <nav>
                                    <ul id="navigation">
                                        <li><a href="{{ URL::to('/') }}">Home</a></li>
                                        <li><a href="#">Gallery</a>
                                            <ul class="submenu">
                                                <li> <a href="{{ route('albums') }}"><i class="fas fa-image"></i> Photos</a></li>
                                                <li> <a href="#"><i class="fas fa-video"></i> Videos</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Categories</a>
                                            <ul class="submenu">
                                                @include('partials.categories')
                                            </ul>
                                        </li>
                                        <li><a href="{{ route('about') }}">About</a></li>
                                        <li><a href="{{ route('judges') }}">Jury</a></li>
                                        <li><a href="{{ route('news') }}">News</a></li>
                                        <li><a href="{{ route('contact') }}">Contact</a></li>
                                    </ul>
                                </nav>
                            </div>
                            <div class="header-right-btn f-right d-none d-lg-block ml-30">
                                <a href="{{ route('register') }}" class="btn header-btn">Registration</a>
                            </div>
                        </div>
                    </div>
                    <!-- Mobile Menu -->
                    <div class="col-12">
                        <div class="mobile_menu d-block d-lg-none"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
