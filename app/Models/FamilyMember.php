<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;

class FamilyMember extends Model implements HasMedia
{
    use HasFactory, InteractsWithMedia;

    protected $fillable = [
        'accused_profile_id',
        'name',
        'relation',
        'mobile_no',
        'remarks',
    ];

    public function accusedProfile(): BelongsTo
    {
        return $this->belongsTo(AccusedProfile::class);
    }
}
