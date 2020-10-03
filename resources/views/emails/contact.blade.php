@component('mail::message')

    # Sir, Just received a contact message from {{ config('app.name') }}

    {{ $data['message'] }} <br><br>

    Thanks

@endcomponent
