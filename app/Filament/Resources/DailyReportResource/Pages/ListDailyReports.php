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

                    $from = $filters['date_range']['from'] ?? now()->startOfMonth()->format('Y-m-d');
                    $to = $filters['date_range']['to'] ?? now()->endOfMonth()->format('Y-m-d');
                    $userId = auth()->user()->user_type === 'admin' ? ($filters['user_id']['value'] ?? auth()->id()) : auth()->id();

                    return redirect()->route('reports.view', [
                        'user' => $userId,
                        'from' => $from,
                        'to' => $to,

                    ]);
                }),
        ];
    }
}
