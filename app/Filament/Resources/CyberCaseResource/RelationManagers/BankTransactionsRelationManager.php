<?php

namespace App\Filament\Resources\CyberCaseResource\RelationManagers;

use Filament\Forms;
use Filament\Forms\Form;
use Filament\Tables;
use Filament\Tables\Table;
use Filament\Resources\RelationManagers\RelationManager;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\Select;

class BankTransactionsRelationManager extends RelationManager
{
    protected static string $relationship = 'bankTransactions';

    public function form(Form $form): Form
    {
        return $form->schema([

            TextInput::make('outward_no'),
            TextInput::make('transaction_id'),
            TextInput::make('account_id'),
            DatePicker::make('transaction_date'),
            TextInput::make('transaction_amount'),
            Textarea::make('remarks'),
            Select::make('transaction_type')
                ->options([
                    'ATM Withdrawal' => 'ATM Withdrawal',
                    'Money Transfer' => 'Money Transfer',
                    'Other' => 'Other',
                    'Put on Hold' => 'Put on Hold',
                ]),

                Select::make('info_type')
                ->options([
                    'Bank Account' => 'Bank Account',
                    'Credit Card' => 'Credit Card',
                    'Wallet' => 'Wallet',
                    'Other' => 'Other',
                ]),
        ]);
    }

    public function table(Table $table): Table
    {
        return $table->columns([
            Tables\Columns\TextColumn::make('outward_no')->label('Outward No.')->searchable(),
     Tables\Columns\TextColumn::make('account_id')->label(' Victim A/C')->searchable(),
            Tables\Columns\TextColumn::make('layer')->label('L')->searchable(),
            Tables\Columns\TextColumn::make('transaction_id')->searchable(),
  
            Tables\Columns\TextColumn::make('transaction_date')->label('Trans. Date'),
            Tables\Columns\TextColumn::make('transaction_amount')->label('TN Amt.'),
            Tables\Columns\TextColumn::make('disputed_amount')->label('DS Amt.'),
            Tables\Columns\TextColumn::make('bank_name')->label('Accused Bank Name'),
            Tables\Columns\TextColumn::make('ifsc_code')->label('IFSC Code'),
            Tables\Columns\TextColumn::make('branch_city_state')->label('Branch-City-State'),
            Tables\Columns\TextColumn::make('account_id')->label('Accused Bank A/C'),
            Tables\Columns\TextColumn::make('account_name')->label('AC Name'),
            Tables\Columns\TextColumn::make('transaction_id_2')->label('Accused Trans Id.'),
        ])
        ->headerActions([
            Tables\Actions\CreateAction::make(),
        ])->filters([
            Tables\Filters\SelectFilter::make('layer')
                ->options([
                    '1' => '1',
                    '2' => '2',
                    '3' => '3',
                    '4' => '4',
                    '5' => '5',
                    '6' => '6',
                    '7' => '7',
                    '8' => '8',
                    '9' => '9',
                    '10' => '10', 
                    '11' => '11',
                    '12' => '12',
                    '13' => '13',
                    '14' => '14',
                    '15' => '15',
                    '16' => '16',
                    '17' => '17',
                    '18' => '18',
                    '19' => '19',
                    '20' => '20',
                   
                ]),
        ])
        
        ->actions([
            Tables\Actions\EditAction::make(),
            Tables\Actions\DeleteAction::make(),
            Tables\Actions\Action::make('print')
            ->icon('heroicon-o-printer')
            ->url(fn ($record) => route('print-bank-pdf', ['record' => $record->id]))
            ->openUrlInNewTab(),
        ])
        ->bulkActions([
            Tables\Actions\BulkActionGroup::make([
                Tables\Actions\DeleteBulkAction::make(),
            ]),
        ])->defaultSort('layer', 'asc');
    }
} 