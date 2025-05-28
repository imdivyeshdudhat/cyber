<?php

use App\Filament\Resources\CyberCaseResource\Pages\PrintBankTransaction;
use App\Filament\Resources\CyberCaseResource\Pages\PrintCyberCase;
use App\Http\Controllers\ReportController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/cyber-cases/print/{record}', [PrintCyberCase::class, 'generatePdf'])->name('filament.resources.cyber-case-resource.pages.print-cyber-case-pdf');
Route::get('/bank-transactions/print/{record}', [PrintBankTransaction::class, 'generatePdf'])->name('print-bank-pdf');
Route::get('/reports/view', [ReportController::class, 'view'])->name('reports.view');
