<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Support\Collection;
use Illuminate\Database\Eloquent\Relations\HasMany;

class CyberCase extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = 'cases';

    protected $fillable = [
        'acknowledgement_no',
        'nccrp_no',
        'category',
        'sub_category',
        'lean_amount',
        'fraud_amount',
        'complainant_address',
     
        'application_date',
        'complainant_name',
        'complainant_mobile',
        'complainant_email',
        'complainant_pincode',
        'police_station',
        'status',
    ];

    protected $casts = [
        'application_date' => 'datetime',
      
    ];


    public function accusedProfiles():HasMany
    {
        return $this->hasMany(AccusedProfile::class, 'case_id');
    }
    

    public function bankTransactions():HasMany
    {
        return $this->hasMany(BankTransaction::class, 'acknowledgement_no', 'acknowledgement_no');
    }


} 