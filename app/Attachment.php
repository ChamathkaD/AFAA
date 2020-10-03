<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Attachment extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'applicant_id',
        'file',
    ];

    /**
     * Get the applicant that owns the attachments.
     */
    public function applicant()
    {
        return $this->belongsTo(Applicant::class);
    }

    /**
     * Get the director that owns the attachments.
     */
    public function director()
    {
        return $this->belongsTo(Applicant::class);
    }
}
