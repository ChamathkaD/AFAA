<h3 class="mb-30">Basic Information</h3>

<div class="row">

    <div class="col-lg-6 col-md-6">

        <div class="mt-10">
            <label for="first_name" class="d-none">First Name</label>
            <input
                type="text"
                name="first_name"
                id="first_name"
                placeholder="Enter First Name"
                onfocus="this.placeholder = ''"
                onblur="this.placeholder = 'First Name'"
                required
                class="single-input-primary @error('first_name') is-invalid @enderror"
                value="{{ old('first_name') }}"
            >
            @error('first_name')
            <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>

        <div class="mt-10">
            <label for="nic" class="d-none">NIC / Passport Number</label>
            <input
                type="text"
                name="nic"
                id="nic"
                placeholder="Enter NIC / Passport Number"
                onfocus="this.placeholder = ''"
                onblur="this.placeholder = 'Enter NIC / Passport Number'"
                required
                class="single-input-primary @error('nic') is-invalid @enderror"
                value="{{ old('nic') }}"
            >
            @error('nic')
            <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>

        <div class="mt-10 input-group-icon">
            <label for="datepicker1" class="d-none">Birthday</label>
            <input
                id="datepicker1"
                name="birthday"
                class="single-input-primary @error('birthday') is-invalid @enderror"
                placeholder="Birthday"
                value="{{ old('birthday') }}"
            />
            @error('birthday')
            <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>

        @if(Route::currentRouteName() == 'applicant.register.index')

        <div class="mt-10">
            <label for="body_weight" class="d-none">Body Weight</label>
            <input
                type="text"
                name="body_weight"
                id="body_weight"
                placeholder="Enter Body Weight"
                onfocus="this.placeholder = ''"
                onblur="this.placeholder = 'Enter Body Weight'"
                required
                class="single-input-primary @error('body_weight') is-invalid @enderror"
                value="{{ old('body_weight') }}"
                aria-describedby="bodyWeightHelpBlock"
            >
            @error('body_weight')
            <div class="invalid-feedback">{{ $message }}</div>
            @enderror
            <small class="form-text text-muted" id="bodyWeightHelpBlock">Please enter your body color if you are selected fashion category.</small>
        </div>

        <div class="mt-10">
            <label for="hair_color" class="d-none">Hair Color</label>
            <input
                type="text"
                name="hair_color"
                id="hair_color"
                placeholder="Enter Hair Color"
                onfocus="this.placeholder = ''"
                onblur="this.placeholder = 'Enter Hair Color'"
                required
                class="single-input-primary @error('hair_color') is-invalid @enderror"
                value="{{ old('hair_color') }}"
                aria-describedby="hairColorHelpBlock"
            >
            @error('hair_color')
            <div class="invalid-feedback">{{ $message }}</div>
            @enderror
            <small class="form-text text-muted" id="hairColorHelpBlock">Please enter your hair color if you are selected fashion category.</small>
        </div>

        @endif

    </div>

    <div class="col-lg-6 col-md-6">

        <div class="mt-10">
            <label for="last_name" class="d-none">Last Name</label>
            <input
                type="text"
                name="last_name"
                id="last_name"
                placeholder="Enter Last Name"
                onfocus="this.placeholder = ''"
                onblur="this.placeholder = 'Last Name'"
                required
                class="single-input-primary @error('last_name') is-invalid @enderror"
                value="{{ old('last_name') }}"
            >
            @error('last_name')
            <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>

        <div class="mt-10 input-group-icon">
            <div class="form-select default-select" id="default-select">
                <label for="gender" class="d-none">Gender</label>
                <div class="icon"><i class="fa fa-male" aria-hidden="true"></i></div>
                <select id="gender" name="gender">
                    <option selected disabled>Gender</option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Other">Rather not Say</option>
                </select>
            </div>
        </div>

        @if(Route::currentRouteName() == 'applicant.register.index')

        <div class="mt-10">
            <label for="body_color" class="d-none">Body Color</label>
            <input
                type="text"
                name="body_color"
                id="body_color"
                placeholder="Enter Body Color"
                onfocus="this.placeholder = ''"
                onblur="this.placeholder = 'Enter Body Color'"
                required
                class="single-input-primary @error('body_color') is-invalid @enderror"
                value="{{ old('body_color') }}"
                aria-describedby="bodyColorHelpBlock"
            >
            @error('body_color')
            <div class="invalid-feedback">{{ $message }}</div>
            @enderror
            <small class="form-text text-muted" id="bodyColorHelpBlock">Please enter your body color if you are selected fashion category.</small>
        </div>

        <div class="mt-10">
            <label for="body_height" class="d-none">Body Height</label>
            <input
                type="text"
                name="body_height"
                id="body_height"
                placeholder="Enter Body Height"
                onfocus="this.placeholder = ''"
                onblur="this.placeholder = 'Enter Body Height'"
                required
                class="single-input-primary @error('body_height') is-invalid @enderror"
                value="{{ old('body_height') }}"
                aria-describedby="bodyHeightHelpBlock"
            >
            @error('body_height')
            <div class="invalid-feedback">{{ $message }}</div>
            @enderror
            <small class="form-text text-muted" id="bodyHeightHelpBlock">Please enter your body height if you are selected fashion category.</small>
            <kbd>Format: Feets Inches.</kbd> <br>
            <span class="text-muted">
               Example: 5' 10".
            </span>
        </div>

        @endif

    </div>

</div>
