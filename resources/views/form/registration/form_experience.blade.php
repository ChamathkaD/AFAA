<h3 class="mb-30">Working Experience</h3>

<div class="row">

    <div class="col-lg-12 col-md-12">

        <div class="mt-10">
            <label for="editor">Working Experience: <span class="text-muted font-weight-bold">When and Where did you work?</span></label>
            <textarea
                name="experience"
                id="editor"
                cols="30"
                rows="10"
                class="single-textarea single-input-primary"
                placeholder="Type Your Working Experience"
            >{{ old('experience') }}</textarea>
            @error('experience')
            <div class="invalid-feedback">{{ $message }}</div>
            @enderror
            <br>
            <kbd>Format: Years, Position, Institution, City/Country.</kbd> <br>
            <span class="text-muted">
                    Example: 1981-1987, Dean of Faculty of Design, Harvard University, BOSTON/USA. <br>
                    *One entry of each line.
                </span>
        </div>

    </div>

</div>
