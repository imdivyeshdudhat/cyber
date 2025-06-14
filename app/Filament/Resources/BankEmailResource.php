<?php

namespace App\Filament\Resources;

use App\Filament\Resources\BankEmailResource\Pages;
use App\Models\BankEmail;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;

class BankEmailResource extends Resource
{
    protected static ?string $model = BankEmail::class;

    protected static ?string $navigationIcon = 'heroicon-o-envelope';

    protected static ?string $navigationGroup = 'Bank Management';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('bank')
                    ->required()
                    ->maxLength(255),
                Forms\Components\Textarea::make('emails')
                    ->required()
                    ->rows(5)
                    ->placeholder('Enter emails separated by commas')
                    ->helperText('Enter multiple emails separated by commas'),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('bank')
                    ->searchable()
                    ->sortable(),
                Tables\Columns\TextColumn::make('emails')
                    ->searchable()
                    ->wrap()
                    ->copyable()
                    ->limit(100),
                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                Tables\Filters\SelectFilter::make('bank')
                    ->options(function () {
                        return BankEmail::distinct()->pluck('bank', 'bank')->toArray();
                    })
                    ->searchable()
                    ->preload()
                    ->label('Filter by Bank'),
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListBankEmails::route('/'),
            'create' => Pages\CreateBankEmail::route('/create'),
            'edit' => Pages\EditBankEmail::route('/{record}/edit'),
        ];
    }
}
