<?php

namespace App\Filament\Resources\DailyReportResource\Pages;

use App\Filament\Resources\DailyReportResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListDailyReports extends ListRecords
{
    protected static string $resource = DailyReportResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
            Actions\Action::make('html2print')
                ->label('Print Report')
                ->icon('heroicon-o-printer')
                ->action(function ($livewire) {
                    $filters = $livewire->getTableFiltersForm()->getState();

                    $from = $filters['date_range']['from'] ?? null;
                    $to = $filters['date_range']['to'] ?? null;
                    $userId = $filters['user_id']['value'] ?? null;

                    return redirect()->route('reports.view', [
                        'user' => $userId,
                        'from' => $from,
                        'to' => $to,

                    ]);
                }),
        ];
    }
}
