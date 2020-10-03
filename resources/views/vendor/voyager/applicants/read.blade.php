@extends('voyager::master')

@section('page_title', $applicant->first_name . "'s Details")

@section('page_header')
    <div class="container-fluid">
        <h1 class="page-title">
            <i class="voyager-people"></i> Details of {{ $applicant->first_name . ' ' . $applicant->last_name }}
        </h1>
    </div>
@stop

@section('content')

    <div class="container-fluid">

        <div class="row">

            <div class="col-md-2">

                <div class="card" style="width: 20rem;">
                    <img src="{{ asset('uploads/avatars/'.$applicant->image) }}" class="card-img-top img-responsive" alt="...">
                    <div class="card-body">
                        <h4 class="card-title">{{ $applicant->first_name . ' ' . $applicant->last_name }}</h4>
                        <p class="card-text">Registered at : {{ $applicant->created_at }}</p>
                        <a href="{{ asset('uploads/avatars/'.$applicant->image) }}" target="_blank" class="btn btn-primary">Download Image</a>
                    </div>
                </div>

            </div>

            <div class="col-md-3">

                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h5 class="panel-title">General Information</h5>
                    </div>
                    <div class="panel-body" style="margin-top: 15px">

                        <table class="table table-bordered">
                            <tr>
                                <td>Category</td>
                                <td>{{ $applicant->category }}</td>
                            </tr>
                            <tr>
                                <td>First Name</td>
                                <td>{{ $applicant->first_name }}</td>
                            </tr>
                            <tr>
                                <td>Last Name</td>
                                <td>{{ $applicant->last_name }}</td>
                            </tr>
                            <tr>
                                <td>NIC</td>
                                <td>{{ $applicant->nic }}</td>
                            </tr>
                            <tr>
                                <td>Gender</td>
                                <td>{{ $applicant->gender }}</td>
                            </tr>
                            <tr>
                                <td>Birthday</td>
                                <td>{{ $applicant->birthday }}</td>
                            </tr>
                            <tr>
                                <td>Nationality</td>
                                <td>{{ $applicant->nationality }}</td>
                            </tr>
                            <tr>
                                <td>Language Skill</td>
                                <td>{{ $applicant->language_skill }}</td>
                            </tr>
                        </table>

                    </div>
                </div>

                <div class="panel panel-warning">
                    <div class="panel-heading">
                        <h5 class="panel-title">Body Details</h5>
                    </div>
                    <div class="panel-body" style="margin-top: 15px">

                        <table class="table table-bordered">
                            <tr>
                                <td>Body Color</td>
                                <td>{{ $applicant->body_color }}</td>
                            </tr>
                            <tr>
                                <td>Body Weight</td>
                                <td>{{ $applicant->body_weight }}</td>
                            </tr>
                            <tr>
                                <td>Body Height</td>
                                <td>{{ $applicant->body_height }}</td>
                            </tr>
                            <tr>
                                <td>Hair Color</td>
                                <td>{{ $applicant->hair_color }}</td>
                            </tr>
                        </table>

                    </div>
                </div>

            </div>

            <div class="col-md-3">

                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h5 class="panel-title">Contact Information</h5>
                    </div>
                    <div class="panel-body" style="margin-top: 15px">

                        <table class="table table-bordered">
                            <tr>
                                <td>Email</td>
                                <td>{{ $applicant->email }}</td>
                            </tr>
                            <tr>
                                <td>Telephone 1</td>
                                <td>{{ $applicant->telephone_1 }}</td>
                            </tr>
                            <tr>
                                <td>Telephone 2</td>
                                <td>{{ $applicant->telephone_2 }}</td>
                            </tr>
                            <tr>
                                <td>Country</td>
                                <td>{{ $applicant->country }}</td>
                            </tr>
                            <tr>
                                <td>State</td>
                                <td>{{ $applicant->state }}</td>
                            </tr>
                            <tr>
                                <td>City</td>
                                <td>{{ $applicant->city }}</td>
                            </tr>
                            <tr>
                                <td>Street</td>
                                <td>{{ $applicant->street }}</td>
                            </tr>
                            <tr>
                                <td>Zip</td>
                                <td>{{ $applicant->zip }}</td>
                            </tr>
                        </table>

                    </div>
                </div>

                <div class="panel panel-danger">
                    <div class="panel-heading">
                        <h5 class="panel-title">Educational</h5>
                    </div>
                    <div class="panel-body" style="margin-top: 15px">

                        <table class="table table-bordered">
                            <tr>
                                <td>Experience</td>
                                <td>{!! $applicant->experience !!}</td>
                            </tr>
                        </table>

                        <table class="table table-bordered">
                            <thead>
                            <tr>
                                <th>Year</th>
                                <th>University</th>
                                <th>Degree</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($applicant->degrees as $degree)
                                <tr>
                                    <td>{{ $degree->year }}</td>
                                    <td>{{ $degree->university }}</td>
                                    <td>{{ $degree->degree }}</td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>

                    </div>
                </div>

            </div>

            <div class="col-md-3">

                <div class="panel panel-dark">
                    <div class="panel-heading">
                        <h5 class="panel-title">Attachments</h5>
                    </div>
                    <div class="panel-body" style="margin-top: 15px">

                        <table class="table table-bordered">
                            <tr>
                                @foreach($applicant->attachments as $attachment)
                                    @if (pathinfo($attachment->file, PATHINFO_EXTENSION) == 'JPG' || pathinfo($attachment->file, PATHINFO_EXTENSION) == 'jpg' || pathinfo($attachment->file, PATHINFO_EXTENSION) == 'png' || pathinfo($attachment->file, PATHINFO_EXTENSION) == 'jpeg')
                                        <img src="{{ asset('img/ico/files/image.png') }}" alt="image" width="25">
                                    @elseif(pathinfo($attachment->file, PATHINFO_EXTENSION) == 'pdf')
                                        <img src="{{ asset('img/ico/files/pdf.png') }}" alt="image" width="25">
                                    @elseif(pathinfo($attachment->file, PATHINFO_EXTENSION) == 'docx' || pathinfo($attachment->file, PATHINFO_EXTENSION) == 'doc')
                                        <img src="{{ asset('img/ico/files/word.png') }}" alt="image" width="25">
                                    @else
                                        <img src="{{ asset('img/ico/files/file.png') }}" alt="image" width="25">
                                    @endif
                                    <a href="{{ asset('uploads/attachments/'.$attachment->file) }}" target="_blank">{{ $attachment->file }}</a> <br>
                                @endforeach
                            </tr>
                        </table>

                    </div>
                </div>

            </div>

        </div>
    </div>


@stop
