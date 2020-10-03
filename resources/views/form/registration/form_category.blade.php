<div class="row">

    <div class="col-md-12">

        <div class="input-group mt-10">
            <label for="category">Select Category</label>
            <div class="form-select" id="default-select">
                <select id="category" name="category" style="@error('category') border: 2px solid red @enderror">
                    <option selected disabled>----Select Category----</option>
                    <option value="Fashion Designing">Fashion Designing</option>
                    <option value="Costume Designing">Costume Designing</option>
                    <option value="Textile Designing">Textile Designing</option>
                    <option value="Apparel Industry">Apparel Industry</option>
                    <option value="Modeling">Modeling</option>
                    <option value="Foot ware">Foot ware</option>
                    <option value="Fashion Photography">Fashion Photography</option>
                    <option value="Fashion Choreography">Fashion Choreography</option>
                </select>
                @error('category')
                    <div style="color: red">{{ $message }}</div>
                @enderror
            </div>

        </div>

    </div>

</div>


