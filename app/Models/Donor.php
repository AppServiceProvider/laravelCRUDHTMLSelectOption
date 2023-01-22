<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Donor extends Model
{
    use HasFactory;
    protected $appends = ['full_name'];
    protected $fillable = [
        'first_name',
        'last_name',
        'blood_donor_location',
    ];

    public function getFullNameAttribute()
    {
        return $this->first_name . ' ' . $this->last_name;
    }

    function district_model(){
        return $this->belongsTo(District::class,'blood_donor_location','id');
    }

}
