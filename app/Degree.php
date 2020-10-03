<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Degree extends Model
{
    /**
     * Get the applicant that owns the degrees.
     */
    public function applicant()
    {
        return $this->belongsTo(Applicant::class);
    }
}
