<?php

namespace App\Filament\Resources\BankEmailResource\Pages;

use App\Filament\Resources\BankEmailResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListBankEmails extends ListRecords
{
    protected static string $resource = BankEmailResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
