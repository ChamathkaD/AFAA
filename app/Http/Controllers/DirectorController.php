<?php

namespace App\Http\Controllers;

use App\Attachment;
use App\Degree;
use App\Director;
use Illuminate\Http\Request;
use Intervention\Image\Facades\Image;

class DirectorController extends Controller
{
    public function index()
    {
        return view('form.registration.director');
    }

    public function store(Request $request)
    {
        // checked if has user image file exists
        if ($request->hasFile('avatar'))
        {
            $avatar = $request->file('avatar');
            if ($avatar->isValid())
            {
                $extension = $avatar->getClientOriginalExtension();
                $filename = date("Y_m_d_h_i_s") . "." . $extension;
                $path = 'uploads/avatars/directors/' . $filename;
                Image::make($avatar)->save($path);
            }
        }

        $director = Director::create([
            'image' => $filename,
            'first_name' => $request->first_name,
            'last_name' => $request->last_name,
            'nic' => $request->nic,
            'gender' => $request->gender,
            'birthday' => $request->birthday,
            'country' => $request->country,
            'telephone_1' => $request->telephone_1,
            'telephone_2' => $request->telephone_2,
            'state' => $request->state,
            'city' => $request->city,
            'email' => $request->email,
            'street' => $request->street,
            'nationality' => $request->nationality,
            'zip' => $request->zip,
            'language_skill' => $request->language_skill,
            'experience' => $request->experience
        ]);

        // get relevant director id from Applicant table
        $id =  Director::where('nic', $request->nic)->value('id');

        $data = $request->all();

        foreach ($data['year'] as $key => $value)
        {
            if (!empty($value))
            {
                $degree = new Degree;
                $degree->director_id = $id;
                $degree->year = $value;
                $degree->university = $data['university'][$key];
                $degree->degree = $data['degree'][$key];
                $degree->save();
            }
        }

        if($request->hasFile('attachment')) {
            foreach ($request->file('attachment') as $file) {
                $extension = $file->getClientOriginalExtension();
                $filename = uniqid() . "." . $extension;
                $file->move(public_path('uploads/attachments/directors/'), $filename);
                // save to database
                Attachment::create([
                    'director_id' => $id,
                    'file' => $filename
                ]);
            }
        }
    }

    public function getDirectors()
    {
        $directors = Director::all();
        return view('vendor.voyager.directors.browse')->with(compact('directors'));
    }

    public function getDirectorsDetails($id = null)
    {
        $director = Director::with('attachments')->with('degrees')->where('id', $id)->firstOrFail();
        return view('vendor.voyager.directors.read')->with(compact('director'));
    }
}
