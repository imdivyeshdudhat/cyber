<?php

namespace App\Filament\Resources\NodalOfficerResource\Pages;

use App\Filament\Resources\NodalOfficerResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditNodalOfficer extends EditRecord
{
    protected static string $resource = NodalOfficerResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
