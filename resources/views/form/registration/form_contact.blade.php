<h3 class="mb-30">Contact Information</h3>

<div class="row">

    <div class="col-lg-6 col-md-6">

        <div class="input-group-icon mt-10">
            <div class="icon"><i class="fa fa-globe" aria-hidden="true"></i></div>
            <div class="form-select" id="default-select">
                <select id="country" name="country">
                    <option selected disabled> Country </option>
                    @foreach(\Illuminate\Support\Facades\DB::table('countries')->get() as $country)
                        <option value="{{ $country->nicename }}">{{ $country->name . " (" . $country->iso . ")" }}</option>
                    @endforeach
                </select>
                <small class="form-text text-muted">This is for postal purposes only.</small>
            </div>
        </div>

        <div class="mt-20">
            <label for="state" class="d-none">State</label>
            <input
                type="text"
                name="state"
                id="state"
                placeholder="Enter State"
                onfocus="this.placeholder = ''"
                onblur="this.placeholder = 'Enter State'"
                required
                class="single-input-primary @error('state') is-invalid @enderror"
                value="{{ old('state') }}"
                aria-describedby="stateHelpBlock"
            >
            @error('state')
            <div class="invalid-feedback">{{ $message }}</div>
            @enderror
            <small class="form-text text-muted" id="stateHelpBlock">State or region.</small>
        </div>

        <div class="mt-10">
            <label for="city" class="d-none">City</label>
            <input
                type="text"
                name="city"
                id="city"
                placeholder="Enter City"
                onfocus="this.placeholder = ''"
                onblur="this.placeholder = 'Enter City'"
                required
                class="single-input-primary @error('city') is-invalid @enderror"
                value="{{ old('city') }}"
                aria-describedby="cityHelpBlock"
            >
            @error('city')
            <div class="invalid-feedback">{{ $message }}</div>
            @enderror
            <small class="form-text text-muted" id="cityHelpBlock">City for your address.</small>
        </div>

        <div class="mt-10">
            <label for="street" class="d-none">Street</label>
            <input
                type="text"
                name="street"
                id="street"
                placeholder="Enter Street"
                onfocus="this.placeholder = ''"
                onblur="this.placeholder = 'Enter Street'"
                required
                class="single-input-primary @error('street') is-invalid @enderror"
                value="{{ old('street') }}"
                aria-describedby="streetHelpBlock"
            >
            @error('street')
            <div class="invalid-feedback">{{ $message }}</div>
            @enderror
            <small class="form-text text-muted" id="streetHelpBlock">Street address, Including apartment/site no and floor etc.</small>
        </div>

        <div class="mt-10">
            <label for="zip" class="d-none">Zip Code</label>
            <input
                type="text"
                name="zip"
                id="zip"
                placeholder="Enter Zip Code"
                onfocus="this.placeholder = ''"
                onblur="this.placeholder = 'Enter Zip Code'"
                required
                class="single-input-primary @error('zip') is-invalid @enderror"
                value="{{ old('zip') }}"
                aria-describedby="zipHelpBlock"
            >
            @error('zip')
            <div class="invalid-feedback">{{ $message }}</div>
            @enderror
            <small class="form-text text-muted" id="zipHelpBlock">Postal Code.</small>
        </div>

    </div>

    <div class="col-lg-6 col-md-6">

        <div class="mt-10">
            <label for="telephone_1" class="d-none">Contact Number 1</label>
            <input
                type="tel"
                name="telephone_1"
                id="telephone_1"
                placeholder="Enter Contact Number"
                onfocus="this.placeholder = ''"
                onblur="this.placeholder = 'Enter Contact Number'"
                required
                class="single-input-primary @error('telephone_1') is-invalid @enderror"
                value="{{ old('telephone_1') }}"
                aria-describedby="telephone1HelpBlock"
            >
            @error('telephone_1')
            <div class="invalid-feedback">{{ $message }}</div>
            @enderror
            <small class="form-text text-muted" id="telephone1HelpBlock">Should include area and country code.</small>
        </div>

        <div class="mt-10">
            <label for="telephone_2" class="d-none">Contact Number 2</label>
            <input
                type="tel"
                name="telephone_2"
                id="telephone_2"
                placeholder="Enter Contact Number"
                onfocus="this.placeholder = ''"
                onblur="this.placeholder = 'Enter Contact Number'"
                required
                class="single-input-primary @error('telephone_2') is-invalid @enderror"
                value="{{ old('telephone_2') }}"
                aria-describedby="telephone1HelpBlock"
            >
            @error('telephone_2')
            <div class="invalid-feedback">{{ $message }}</div>
            @enderror
            <small class="form-text text-muted" id="telephone1HelpBlock">Should include area and country code.</small>
        </div>

        <div class="mt-10">
            <label for="email" class="d-none">Email Address</label>
            <input
                type="email"
                name="email"
                id="email"
                placeholder="Enter Email Address"
                onfocus="this.placeholder = ''"
                onblur="this.placeholder = 'Enter Email Address'"
                required
                class="single-input-primary @error('email') is-invalid @enderror"
                value="{{ old('email') }}"
            >
            @error('email')
            <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>

        <div class="mt-10">
            <label for="nationality" class="d-none">Nationality</label>
            <input
                type="text"
                name="nationality"
                id="nationality"
                placeholder="Enter Your Nationality"
                onfocus="this.placeholder = ''"
                onblur="this.placeholder = 'Enter Your Nationality'"
                required
                class="single-input-primary @error('nationality') is-invalid @enderror"
                value="{{ old('nationality') }}"
                aria-describedby="nationalityHelpBlock"
            >
            @error('nationality')
            <div class="invalid-feedback">{{ $message }}</div>
            @enderror
            <small class="form-text text-muted" id="nationalityHelpBlock">Is where you are originally from.</small>
        </div>

        <div class="mt-10">
            <label for="language_skill" class="d-none">Language Skills</label>
            <textarea
                name="language_skill"
                id="language_skill"
                cols="30"
                rows="10"
                class="single-textarea single-input-primary"
                placeholder="Enter Language Skills"
                aria-describedby="languageSkillHelpBlock"
            >{{ old('language_skill') }}</textarea>
            @error('language_skill')
            <div class="invalid-feedback">{{ $message }}</div>
            @enderror
            <small class="form-text text-muted" id="languageSkillHelpBlock">Which language do you speak? How well do you communicate with these languages?</small>
            <kbd>Format: Language Name, Language Proficiency (Native|Near Native|Advanced|Intermediate|Pre-Intermediate|Beginner).</kbd> <br>
            <span class="text-muted">
                    Example: English (Near Native). <br>
                    *One entry of each line.
                </span>
        </div>

    </div>

</div>
