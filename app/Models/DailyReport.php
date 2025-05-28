<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DailyReport extends Model
{
    protected $fillable = [
        'date',
        'user_id', // Assuming this is the ID of the user submitting the report
        'day',
        'from_time',
        'to_time',
        'work_done',
    ];

    // Automatically set 'day' based on 'date'
    protected static function booted()
    {
        static::saving(function ($report) {
            if ($report->date) {
                $report->day = \Carbon\Carbon::parse($report->date)->format('l');

            }
            $report->user_id = auth()->id(); // Automatically set user ID
        });
    }
}
