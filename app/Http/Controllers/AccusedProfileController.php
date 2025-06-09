<?php

namespace App\Http\Controllers;

use App\Models\AccusedProfile;

class AccusedProfileController extends Controller
{
    public function show(AccusedProfile $accusedProfile)
    {
        return view('accused-profile.view', compact('accusedProfile'));
    }
}
