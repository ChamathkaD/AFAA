@if($errors->has('commentable_type'))
    <div class="alert alert-danger" role="alert">
        {{ $errors->get('commentable_type') }}
    </div>
@endif

@if($errors->has('commentable_id'))
    <div class="alert alert-danger" role="alert">
        {{ $errors->get('commentable_id') }}
    </div>
@endif

<form method="POST" action="{{ route('comments.store') }}">

    @csrf
    @honeypot
    <input type="hidden" name="commentable_type" value="\{{ get_class($model) }}" />
    <input type="hidden" name="commentable_id" value="{{ $model->id }}" />

    <div class="row">

        <div class="col-md-12">

            <div class="form-group">
                <textarea class="input @if($errors->has('message')) is-invalid @endif" name="message" placeholder="Message"></textarea>
            </div>

        </div>

        {{-- Guest commenting --}}
        @if(isset($guest_commenting) and $guest_commenting == true)

            <div class="col-md-6">
                <div class="form-group">
                    <input type="text" class="input @if($errors->has('guest_name')) is-invalid @endif" placeholder="Name" name="guest_name" />
                    @error('guest_name')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                    @enderror
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <input type="email" class="input @if($errors->has('guest_email')) is-invalid @endif" placeholder="Email" name="guest_email" />
                    @error('guest_email')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                    @enderror
                </div>
            </div>

        @endif

        <div class="col-md-12">
            <button type="submit" class="primary-button">Submit</button>
        </div>

    </div>
</form>
<br />
