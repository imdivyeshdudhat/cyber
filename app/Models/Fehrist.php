<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Fehrist extends Model
{
    protected $table = 'fehrists';

    protected $fillable = [
        'case_id', 'details', 'action_date', 'received_info_dates', 'details_received_date',
    ];

    protected $casts = [

        'received_info_dates' => 'array',

    ];
}
