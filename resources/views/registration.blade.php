@extends('layouts.app')

@section('content')

    <section class="accordion fix section-padding30">

        <div class="container-fluid">

            <div class="row justify-content-center">

                <div class="col-xl-5 col-lg-6 col-md-6">
                    <!-- Section Tittle -->
                    <div class="section-tittle text-center mb-80">
                        <h2>Registration</h2>
                        <p>There arge many variations ohf passages of sorem gp ilable, but the majority have ssorem gp iluffe.</p>
                    </div>
                </div>

            </div>

            <div class="row d-flex justify-content-center">

                <div class="col-md-4 col-lg-4 text-center border-right">

                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi aut doloremque dolorum earum illum omnis quae sit! Adipisci dignissimos eveniet illo illum ipsum iure quia repellendus saepe sint ullam! Ab!</p>

                    <a href="{{ route('applicant.register.index') }}" class="btn mt-50">Register as an Applicant</a>

                </div>

                <div class="col-md-4 col-lg-4 text-center">

                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi aut doloremque dolorum earum illum omnis quae sit! Adipisci dignissimos eveniet illo illum ipsum iure quia repellendus saepe sint ullam! Ab!</p>

                    <a href="{{ route('director.register.index') }}" class="btn mt-50">Register as a Director</a>

                </div>

            </div>

        </div>

    </section>

@endsection
