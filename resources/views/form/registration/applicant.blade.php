@extends('layouts.app')

@section('content')

    <section class="accordion fix section-padding">

        <div class="container">

            <div class="section-tittle text-center mb-80">
                <h2>Applicant Registration</h2>
                <p>There arge many variations ohf passages of sorem gp ilable, but the majority have ssorem gp iluffe.</p>
            </div>

            <div class="row">

                <form action="{{ route('applicant.register.store') }}" enctype="multipart/form-data" method="POST">
                    @csrf
                    @include('form.registration.form_category')
                    <br><br>
                    @include('form.registration.form_avatar')
                    <br><br>
                    @include('form.registration.form_basic')
                    <br><br>
                    @include('form.registration.form_contact')
                    <br><br>
                    @include('form.registration.form_academic')
                    <br><br>
                    @include('form.registration.form_experience')
                    <br><br>
                    @include('form.registration.form_attachment')
                    <br><br>
                    <input type="submit" class="btn btn-block" value="Register">
                </form>

            </div>

        </div>

    </section>

@endsection
