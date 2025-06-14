<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class NodalOfficer extends Model
{
    use HasFactory;

    protected $fillable = [
        'bank',
        'name_of_officer',
        'designation',
        'mobile_no',
        'email',
    ];
}
