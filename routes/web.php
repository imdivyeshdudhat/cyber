<?php

use Illuminate\Support\Facades\Route;
use App\Filament\Resources\CyberCaseResource\Pages\PrintCyberCase;
use App\Filament\Resources\CyberCaseResource\Pages\PrintBankTransaction;

Route::get('/', function () {
    return view('welcome');
});


    Route::get('/cyber-cases/print/{record}', [PrintCyberCase::class, 'generatePdf'])->name('filament.resources.cyber-case-resource.pages.print-cyber-case-pdf');

    Route::get('/bank-transactions/print/{record}', [PrintBankTransaction::class, 'generatePdf'])->name('print-bank-pdf');