@extends('layouts.app')

@section('content')

    <div class="slider-area2">
        <div class="slider-height2 d-flex align-items-center">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>Grand Jury Panel</h2>
                            <br>
                            <p class="text-white text-justify">
                                Grand Jury Panel The foundation of any good design award, in addition to fair evaluation and judging by an extensive methodology, is to have a strong and expert design competition jury which provides their invaluable knowledge base and insight to evaluate the submitted entries, creating benefit and value for participants by transferring their insights and ideas in form of votes, feedback and suggestions. Good design award jury panels shall be multidisciplinary and comprised of recognized but most importantly experienced international designers, professors, entrepreneurs, journalists and publishers who can truly validate and evaluate design using their wisdom, experience, specialization and technical knowledge. In a good design award, every design award jury member should follow a code of conduct or as we require sign a jury agreement and shall be excluded from taking part in the competition. In addition, to avoid conflicts of interest, the jurors may not be employees of the participating companies. Furthermore to create further value to participants, the A' Design Award and Competition has introduced during its foundation, for the first time in all design award and competitions, a prejudging procedure called preliminary evaluation and checking which helps participants to get insights about their work before they participate in the design competition finals.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <section class="team-area pt-180 pb-100">

        <div class="container">

            <div class="row d-flex justify-content-center">

                @if(count(\App\Judge::all()) > 0)

                    @foreach(\App\Judge::all() as $judge)
                        <div class="col-lg-3 col-md-4 col-sm-6">
                            <div class="single-team mb-30">
                                <div class="team-img">
                                    <img src="{{ Voyager::image($judge->avatar) }}" alt="{{ $judge->avatar }}">
                                </div>
                                <div class="team-caption team-caption2">
                                    <h3><a href="#">{{ $judge->name }}</a></h3>
                                </div>
                            </div>
                        </div>
                    @endforeach

                @else

                    <div class="text-center">
                        <img src="{{ asset('img/empty.svg') }}" alt="empty" width="50%">
                        <h3>There are no jury panel at that moment. Please check again later!</h3>
                    </div>

                @endif

            </div>

        </div>

    </section>

@endsection
