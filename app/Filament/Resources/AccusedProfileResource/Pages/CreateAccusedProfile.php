<?php

namespace App\Filament\Resources\AccusedProfileResource\Pages;

use App\Filament\Resources\AccusedProfileResource;
use Filament\Resources\Pages\CreateRecord;

class CreateAccusedProfile extends CreateRecord
{
    protected static string $resource = AccusedProfileResource::class;

    protected static bool $canCreateAnother = false;

    protected static ?string $navigationLabel = 'Suspect Profiles';

    protected static ?string $pluralModelLabel = 'Suspect Profiles';

    // ✅ Change the submit button text
    public function getCreateButtonLabel(): string
    {
        return 'Save Case Info & Proceed';
    }

    // (Optional) Change the page title
    public function getTitle(): string
    {
        return 'Create New Suspect';
    }
}
