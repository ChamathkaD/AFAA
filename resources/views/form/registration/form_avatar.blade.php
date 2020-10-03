@push('css')

@endpush

<div class="row d-flex justify-content-center" id="uploadForm" style="margin-top: 25px; margin-bottom: 25px;">

    <div class="col-md-4">

        <div class="text-center">

            <img
                src="@if(Route::currentRouteName() == 'applicant.register.index') {{ asset('uploads/avatars/default.svg') }} @else {{ asset('uploads/avatars/directors.svg') }} @endif"
                alt="user_avatar"
                id="default_avatar"
                style="
                    width: 250px;
                    height: 250px;
                    margin-right: 25px"
            >

            <br><br>
            <label for="avatar">Upload Your Image</label>
            <div class="custom-file">
                <input
                    type="file"
                    class="custom-file-input"
                    id="avatar"
                    name="avatar"
                    value="{{ old('avatar') }}"
                >
                @error('avatar')
                <div style="color: red">{{ $message }}</div>
                @enderror
                <label class="custom-file-label" for="avatar">Choose file</label>
            </div>

        </div>

    </div>

</div>

@push('script')
    <script>
        function filePreview(input) {
            if (input.files && input.files[0]) {
                let reader = new FileReader();
                reader.onload = function (e) {
                    $('#default_avatar').attr('src', e.target.result);
                }
                reader.readAsDataURL(input.files[0]);
            }
        }

        $("#avatar").change(function () {
            filePreview(this);
        });
    </script>
@endpush
