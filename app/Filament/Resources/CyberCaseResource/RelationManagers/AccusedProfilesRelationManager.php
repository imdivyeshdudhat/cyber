<?php

namespace App\Filament\Resources\CyberCaseResource\RelationManagers;

use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Resources\RelationManagers\RelationManager;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;

class AccusedProfilesRelationManager extends RelationManager
{
    protected static string $relationship = 'accusedProfiles';

    public function form(Form $form): Form
    {
        return $form->schema([
            Section::make('Personal Information')
                ->schema([
                    Textarea::make('name')->required(),
                    DatePicker::make('date_of_birth'),
                    TextInput::make('fathers_name'),
                    TextInput::make('mothers_name'),
                    FileUpload::make('photo_path')->image()->directory('accused_photos'),
                    FileUpload::make('signature_path')->image()->directory('accused_signatures'),
                ])
                ->columns(2),

            Section::make('Address Details')
                ->schema([
                    Repeater::make('family_members')
                        ->schema([
                            TextInput::make('name'),
                            TextInput::make('relation'),
                        ])
                        ->columnSpanFull(),
                    Textarea::make('address')->columnSpanFull(),
                ])
                ->columnSpanFull(),

            Section::make('Business Details')
                ->schema([
                    TextInput::make('business_name'),
                    TextInput::make('business_type'),
                    Textarea::make('number')->label('Contact Number'),
                    Textarea::make('email'),
                ])
                ->columns(3),

            Section::make('Identification')
                ->schema([
                    TextInput::make('aadhar_number'),
                    TextInput::make('pan_number'),
                    TextInput::make('gstin'),
                ])
                ->columns(3),

            Section::make('Online Presence')
                ->schema([
                    Repeater::make('social_media_profiles')
                        ->schema([
                            TextInput::make('platform'),
                            TextInput::make('url'),
                        ])
                        ->columns(1),
                    Textarea::make('type')->label('Devices'),
                    Textarea::make('ip')->label('IP Address'),
                    TextInput::make('location'),
                ])
                ->columns(2),

            /* Section::make('Banking Information')
                ->schema([
                    Repeater::make('bank_accounts')
                        ->schema([
                            TextInput::make('account_number'),
                            TextInput::make('bank_name'),
                        ])
                        ->columns(1),
                ])
                ->columns(2),
              */

            Section::make('Additional Information')
                ->schema([
                    Textarea::make('bio')->rows(3)->columnSpanFull(),
                    Repeater::make('additional_info')
                        ->schema([
                            TextInput::make('key'),
                            TextInput::make('value'),
                        ])
                        ->columns(2),
                ])
                ->columns(3),
        ]);

    }

    public function table(Table $table): Table
    {
        return $table

            ->columns([

                TextColumn::make('name')->label('Name')->searchable(),
                TextColumn::make('date_of_birth')->date()->label('DOB'),
                TextColumn::make('aadhar_number'),
                TextColumn::make('pan_number'),

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
