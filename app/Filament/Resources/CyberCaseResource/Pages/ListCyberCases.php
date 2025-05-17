<?php

namespace App\Filament\Resources\CyberCaseResource\Pages;

use App\Filament\Resources\CyberCaseResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

use YOS\FilamentExcel\Actions\Import;
use App\Imports\ContentsImport;

class ListCyberCases extends ListRecords
{
    protected static string $resource = CyberCaseResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Import::make()
            ->import(ContentsImport::class)
            ->type(\Maatwebsite\Excel\Excel::XLSX)
            ->label('Import from excel')
            ->hint('Upload xlsx type')
            ->color('success'),
            Actions\CreateAction::make(),
        ];
    }
}
