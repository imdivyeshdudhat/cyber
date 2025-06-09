<?php

namespace App\Filament\Resources\NodalOfficerResource\Pages;

use App\Filament\Resources\NodalOfficerResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListNodalOfficers extends ListRecords
{
    protected static string $resource = NodalOfficerResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
