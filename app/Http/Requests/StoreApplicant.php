<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreApplicant extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'category' => 'required',
            'avatar' => 'required|image|mimes:jpeg,png,jpg|dimensions:min_width=780,min_height=1050',
            'first_name' => 'required|string',
            'last_name' => 'required|string',
            'nic' => 'required',
            'gender' => 'required',
            'birthday' => 'required|date',
            'body_color' => 'nullable|string',
            'body_weight' => 'nullable|string|numeric',
            'body_height' => 'nullable|string',
            'hair_color' => 'nullable|string',
            'year' => 'nullable|numeric',
            'university' => 'nullable|string',
            'degree' => 'nullable|string',
            'country' => 'required',
            'telephone_1' => 'required',
            'telephone_2' => 'nullable',
            'state' => 'required|string',
            'city' => 'required|string',
            'email' => 'email|required|unique:applicants,email',
            'street' => 'required|string',
            'nationality' => 'required|string',
            'zip' => 'required',
            'language_skill' => 'required|string',
            'experience' => 'required|string'
        ];
    }

    /**
     * Get the error messages for the defined validation rules.
     *
     * @return array
     */
    public function messages()
    {
        return [
            'avatar.required' => 'You must use the "Browse" button to select which file you wish to upload.',
            'avatar.dimensions' => 'Unable to upload this image. It must not be less than 780 X 1050 pixels.',
            'avatar.mimes' => 'The photo must be a file of type: jpeg, png, jpg',
            'first_name.required' => 'Please enter your first name.',
            'last_name.required' => 'Please enter your last name.',
            'nic.required' => 'Please enter your NIC or Passport.',
            'birthday.required' => 'Please enter your birthday.',
            'experience.required' => 'Please enter your working experience.'
        ];
    }
}
