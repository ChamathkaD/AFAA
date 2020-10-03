<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Director extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'image',
        'first_name',
        'last_name',
        'nic',
        'gender',
        'birthday',
        'country',
        'telephone_1',
        'telephone_2',
        'state',
        'city',
        'email',
        'street',
        'nationality',
        'zip',
        'language_skill',
        'experience',
    ];
    /**
     * Get the attachments for the director.
     */
    public function attachments()
    {
        return $this->hasMany(Attachment::class);
    }

    /**
     * Get the degrees for the director.
     */
    public function degrees()
    {
        return $this->hasMany('App\Degree');
    }
}
