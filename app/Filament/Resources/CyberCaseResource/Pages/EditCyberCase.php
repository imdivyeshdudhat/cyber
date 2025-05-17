<?php

namespace App\Filament\Resources\CyberCaseResource\Pages;

use App\Filament\Resources\CyberCaseResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditCyberCase extends EditRecord
{
    protected static string $resource = CyberCaseResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
