<?php

namespace App\Filament\Resources\AccusedProfileResource\Pages;

use App\Filament\Resources\AccusedProfileResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditAccusedProfile extends EditRecord
{
    protected static string $resource = AccusedProfileResource::class;

    protected static ?string $navigationLabel = 'Suspect Profiles';

    protected static ?string $pluralModelLabel = 'Suspect Profiles';

    protected function getHeaderActions(): array
    {
        return [
            // Actions\DeleteAction::make(),
        ];
    }

    protected function getSaveButtonLabel(): string
    {
        return 'Update Suspect Info';
    }

    public function getTitle(): string
    {
        return 'Edit Suspect Details';
    }
}
