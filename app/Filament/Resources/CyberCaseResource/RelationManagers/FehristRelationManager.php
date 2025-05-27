<?php

namespace App\Filament\Resources\CyberCaseResource\RelationManagers;

use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Resources\RelationManagers\RelationManager;
use Filament\Tables;
use Filament\Tables\Table;

class FehristRelationManager extends RelationManager
{
    protected static string $relationship = 'fehrists';

    public function form(Form $form): Form
    {
        return $form->schema([

            Section::make('Cyber Case Details')
                ->schema([
                    TextInput::make('details')->required(),
                    DatePicker::make('action_date')->label('Action Date'),
                    DatePicker::make('details_received_date')->label('Details Received Date'),
                ]),
            Section::make('Received Information (Reminders)')
                ->schema([
                    Repeater::make('received_info_dates')
                        ->label('Reminders')
                        ->schema([
                            TextInput::make('reminder_no')->label('Reminder No')->required(),
                            DatePicker::make('reminder_date')->label('Reminder Date')->required(),
                        ])
                        ->grid(2)
                        ->createItemButtonLabel('Add Reminder')
                        ->collapsible(),
                ]),
        ]);

    }

    public function table(Table $table): Table
    {
        return $table->columns([
            Tables\Columns\TextColumn::make('details')->searchable(),
            Tables\Columns\TextColumn::make('action_date')->date(),

            Tables\Columns\TextColumn::make('received_info_dates')
                ->label('Reminders')
                ->formatStateUsing(function ($state): string {
                    // If $state is a JSON string, decode it; otherwise, use as is
                    if (is_string($state)) {
                        $reminders = json_decode($state, true);
                    } else {
                        $reminders = $state;
                    }

                    if (! is_array($reminders) || empty($reminders)) {
                        return '';
                    }

                    return collect($reminders)
                        ->map(function ($item) {
                            $no = $item['reminder_no'] ?? '?';
                            $date = $item['reminder_date'] ?? 'N/A';

                            return "Reminder $no - $date";
                        })
                        ->implode('<br>');
                })

                ->html() // enables HTML rendering for <br>
                ->wrap()
                ->limit(1000),

            Tables\Columns\TextColumn::make('details_received_date')->date(),
        ])
            ->headerActions([
                Tables\Actions\CreateAction::make(),

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
}
