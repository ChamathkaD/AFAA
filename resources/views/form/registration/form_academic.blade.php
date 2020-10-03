<h3 class="mb-30">Academic Qualifications</h3>

<div class="field_wrapper">

    <div class="row">

        <div class="col-lg-2 col-md-2">

            <div class="mt-10">
                <label for="year" class="d-none">Year</label>
                <input
                    type="text"
                    name="year[]"
                    id="year"
                    placeholder="Year"
                    onfocus="this.placeholder = ''"
                    onblur="this.placeholder = 'Year'"
                    required
                    class="single-input-primary @error('year') is-invalid @enderror"
                    value="{{ old('year') }}"
                >
                @error('year')
                <div class="invalid-feedback">{{ $message }}</div>
                @enderror
            </div>

        </div>

        <div class="col-lg-4 col-md-4">

            <div class="mt-10">
                <label for="university" class="d-none">University</label>
                <input
                    type="text"
                    name="university[]"
                    id="university"
                    placeholder="Enter University"
                    onfocus="this.placeholder = ''"
                    onblur="this.placeholder = 'University'"
                    required
                    class="single-input-primary @error('university') is-invalid @enderror"
                    value="{{ old('university') }}"
                >
                @error('university')
                <div class="invalid-feedback">{{ $message }}</div>
                @enderror
            </div>

        </div>

        <div class="col-lg-5 col-md-5">

            <div class="mt-10">
                <label for="degree" class="d-none">Degree Programme</label>
                <input
                    type="text"
                    name="degree[]"
                    id="degree"
                    placeholder="Enter Degree Programme"
                    onfocus="this.placeholder = ''"
                    onblur="this.placeholder = 'Degree Programme'"
                    required
                    class="single-input-primary @error('degree') is-invalid @enderror"
                    value="{{ old('degree') }}"
                >
                @error('degree')
                <div class="invalid-feedback">{{ $message }}</div>
                @enderror
            </div>

        </div>

        <div class="col-lg-1 col-md-1 add_button">

            <a href="javascript:void(0);" title="Add field">
                <i class="fas fa-plus-circle text-success mt-25"></i>
            </a>

        </div>

    </div>

</div>

@push('script')

    <script>

        // Add Remove Input Fields Dynamically using jQuery
        let maxField = 15; //Input fields increment limitation
        let addButton = $('.add_button'); //Add button selector
        let wrapper = $('.field_wrapper'); //Input field wrapper

        //New input field html
        let fieldHTML =
            '<div class="row" style="padding-top: 25px">' +

            '<div class="col-lg-2 col-md-2">' +

            '<input type="text" placeholder="Enter Year" name="year[]" id="year" class="single-input-primary" value=""/>' +

            '</div>' +

            '<div class="col-lg-4 col-md-4">' +

            '<input type="text" placeholder="Enter University" name="university[]" id="year" class="single-input-primary" value=""/>' +

            '</div>' +

            '<div class="col-lg-5 col-md-5">' +

            '<input type="text" placeholder="Enter Degree Programme" name="degree[]" id="year" class="single-input-primary" value=""/>' +

            '</div>' +

            '<div class="col-lg-1 col-md-1 remove_button">' +

            '<a href="javascript:void(0);">' +

            '<i class="fas fa-minus-circle text-danger mt-15"></i>' +

            '</a>' +

            '</div>' +

            '</div>'; //New input field html

        let x = 1; //Initial field counter is 1

        //Once add button is clicked
        $(addButton).click(function(){
            //Check maximum number of input fields
            if(x < maxField){
                x++; //Increment field counter
                $(wrapper).append(fieldHTML); //Add field html
            }
        });

        //Once remove button is clicked
        $(wrapper).on('click', '.remove_button', function(e){
            e.preventDefault();
            $(this).parent('div').remove(); //Remove field html
            x--; //Decrement field counter
        });

    </script>

@endpush
