<?php

namespace App\Filament\Resources;

use App\Filament\Resources\AccusedProfileResource\Pages;
use App\Models\AccusedProfile;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\SpatieMediaLibraryFileUpload;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Enums\FiltersLayout;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;

class AccusedProfileResource extends Resource
{
    protected static ?string $model = AccusedProfile::class;

    protected static ?string $navigationIcon = 'heroicon-o-user-circle';

    protected static ?string $navigationGroup = 'Case Management';

    protected static ?string $navigationLabel = 'Suspect Profiles';

    protected static ?string $pluralModelLabel = 'Suspect Profiles';

    protected static bool $canCreateAnother = false;

    public static function getEloquentQuery(): Builder
    {
        return parent::getEloquentQuery()->whereNull('case_id');
    }

    public static function form(Form $form): Form
    {
        return $form->schema([
            Section::make('Case Information')
                ->schema([
                    Select::make('police_station')
                        ->options([
                            'Cyber Crime' => 'Cyber Crime',
                            'Navsari Town' => 'Navsari Town',
                            'Navsari Rural' => 'Navsari Rural',
                            'Maroli' => 'Maroli',
                            'Jalalpore' => 'Jalalpore',
                            'Vijalpore' => 'Vijalpore',
                            'Gandevi' => 'Gandevi',
                            'Bilimora' => 'Bilimora',
                            'Dholai Marine' => 'Dholai Marine',
                            'Chikhli' => 'Chikhli',
                            'Vansda' => 'Vansda',
                            'Khergam' => 'Khergam',
                        ])->required(),
                    TextInput::make('fir_no')->label('FIR No.')->required(),
                    // DatePicker::make('case_date')->label('FIR Date'),

                    TextInput::make('city')->label('Suspect City'),
                    Select::make('state')->label('Suspect State')
                        ->searchable()
                        ->options([
                            'Andhra Pradesh' => 'Andhra Pradesh',
                            'Arunachal Pradesh' => 'Arunachal Pradesh',
                            'Assam' => 'Assam',
                            'Bihar' => 'Bihar',
                            'Chhattisgarh' => 'Chhattisgarh',
                            'Goa' => 'Goa',
                            'Gujarat' => 'Gujarat',
                            'Haryana' => 'Haryana',
                            'Himachal Pradesh' => 'Himachal Pradesh',
                            'Jharkhand' => 'Jharkhand',
                            'Karnataka' => 'Karnataka',
                            'Kerala' => 'Kerala',
                            'Madhya Pradesh' => 'Madhya Pradesh',
                            'Maharashtra' => 'Maharashtra',
                            'Manipur' => 'Manipur',
                            'Meghalaya' => 'Meghalaya',
                            'Mizoram' => 'Mizoram',
                            'Nagaland' => 'Nagaland',
                            'Odisha' => 'Odisha',
                            'Punjab' => 'Punjab',
                            'Rajasthan' => 'Rajasthan',
                            'Sikkim' => 'Sikkim',
                            'Tamil Nadu' => 'Tamil Nadu',
                            'Telangana' => 'Telangana',
                            'Tripura' => 'Tripura',
                            'Uttar Pradesh' => 'Uttar Pradesh',
                            'Uttarakhand' => 'Uttarakhand',
                            'West Bengal' => 'West Bengal',
                            'Andaman and Nicobar Islands' => 'Andaman and Nicobar Islands',
                            'Chandigarh' => 'Chandigarh',
                            'Dadra and Nagar Haveli' => 'Dadra and Nagar Haveli',
                            'Daman and Diu' => 'Daman and Diu',
                            'Delhi' => 'Delhi',
                            'Jammu and Kashmir' => 'Jammu and Kashmir',
                            'Ladakh' => 'Ladakh',
                            'Lakshadweep' => 'Lakshadweep',
                            'Puducherry' => 'Puducherry',
                        ]),
                    TextInput::make('fraud_amount')
                        ->numeric()
                        ->prefix('₹')
                        ->label('Fraud Amount'),
                    TextInput::make('compliant_person')->label('Victim Name'),

                ])
                ->columns(2),

            Section::make('Suspect Detail')
                ->schema([
                    Textarea::make('accused_role'),
                    Section::make('Transaction Information')
                        ->schema([

                            Repeater::make('bank_accounts')->label('Transactions')
                                ->schema([
                                    TextInput::make('layer'),
                                    DatePicker::make('transaction_date'),
                                    TextInput::make('transaction_amount'),
                                    TextInput::make('dispute_amount'),
                                    TextInput::make('bank_name'),
                                    TextInput::make('bank_account_no'),
                                    TextInput::make('ifsc')->label('IFSC Code'),
                                    TextInput::make('noofcomplaints')->label('No of Complains'),

                                ])->columns(4),

                        ])
                        ->columns(1),
                ])->visible(fn (string $operation) => $operation !== 'create'),

            Section::make('Suspect Information')
                ->schema([
                    TextInput::make('name')->label('Full Name')->required(),
                    DatePicker::make('date_of_birth'),

                    SpatieMediaLibraryFileUpload::make('photo_path')->multiple(),

                ])
                ->columns(4)
                ->visible(fn (string $operation) => $operation !== 'create'),

            Section::make('Addresses')
                ->schema([

                    Repeater::make('locations')->label('')
                        ->schema([
                            TextInput::make('address')->label('Address'),

                            TextInput::make('city'),
                            TextInput::make('district')->label('District'),
                            Select::make('state')->label('State')
                                ->searchable()
                                ->options([
                                    'Andhra Pradesh' => 'Andhra Pradesh',
                                    'Arunachal Pradesh' => 'Arunachal Pradesh',
                                    'Assam' => 'Assam',
                                    'Bihar' => 'Bihar',
                                    'Chhattisgarh' => 'Chhattisgarh',
                                    'Goa' => 'Goa',
                                    'Gujarat' => 'Gujarat',
                                    'Haryana' => 'Haryana',
                                    'Himachal Pradesh' => 'Himachal Pradesh',
                                    'Jharkhand' => 'Jharkhand',
                                    'Karnataka' => 'Karnataka',
                                    'Kerala' => 'Kerala',
                                    'Madhya Pradesh' => 'Madhya Pradesh',
                                    'Maharashtra' => 'Maharashtra',
                                    'Manipur' => 'Manipur',
                                    'Meghalaya' => 'Meghalaya',
                                    'Mizoram' => 'Mizoram',
                                    'Nagaland' => 'Nagaland',
                                    'Odisha' => 'Odisha',
                                    'Punjab' => 'Punjab',
                                    'Rajasthan' => 'Rajasthan',
                                    'Sikkim' => 'Sikkim',
                                    'Tamil Nadu' => 'Tamil Nadu',
                                    'Telangana' => 'Telangana',
                                    'Tripura' => 'Tripura',
                                    'Uttar Pradesh' => 'Uttar Pradesh',
                                    'Uttarakhand' => 'Uttarakhand',
                                    'West Bengal' => 'West Bengal',
                                    'Andaman and Nicobar Islands' => 'Andaman and Nicobar Islands',
                                    'Chandigarh' => 'Chandigarh',
                                    'Dadra and Nagar Haveli' => 'Dadra and Nagar Haveli',
                                    'Daman and Diu' => 'Daman and Diu',
                                    'Delhi' => 'Delhi',
                                    'Jammu and Kashmir' => 'Jammu and Kashmir',
                                    'Ladakh' => 'Ladakh',
                                    'Lakshadweep' => 'Lakshadweep',
                                    'Puducherry' => 'Puducherry',
                                ]),
                            TextInput::make('remarks')->label('Remarks'),
                            TextInput::make('from_where')->label('From Where?'),
                        ])->columns(3),

                ])
                ->columns(1)->visible(fn (string $operation) => $operation !== 'create'),

            Section::make('')
                ->schema([
                    TextInput::make('aadhar_number')->label('AADHAR No.'),
                    TextInput::make('pan_number')->label('PAN No.'),
                    TextInput::make('gstin')->label('GSTIN'),
                ])
                ->columns(3)->visible(fn (string $operation) => $operation !== 'create'),

            Section::make('')
                ->schema([
                    Repeater::make('mobile_numbers')->label('Mobile Numbers')
                        ->schema([
                            TextInput::make('mobile')->label('Mobile'),
                            TextInput::make('remarks')->label('Remarks'),
                            TextInput::make('from_where')->label('From Where?'),
                        ])->columns(3),
                ])->columns(1)->visible(fn (string $operation) => $operation !== 'create'),

            Section::make('')
                ->schema([
                    Repeater::make('email_addresses')->label('Email Addresses')
                        ->schema([
                            TextInput::make('email')->label('email'),
                            TextInput::make('remarks')->label('Remarks'),
                            TextInput::make('from_where')->label('From Where?'),
                        ])->columns(3),
                ])->columns(1)->visible(fn (string $operation) => $operation !== 'create'),

            Section::make('')
                ->schema([
                    Repeater::make('social_media_profiles')
                        ->schema([
                            TextInput::make('platform'),
                            TextInput::make('url'),
                        ])
                        ->columns(1),

                    //     Textarea::make('ip_addresses')->label('IP Addresses'),
                    //  TextInput::make('location'),
                ])
                ->columns(2)->visible(fn (string $operation) => $operation !== 'create'),

            Section::make('')
                ->schema([
                    Repeater::make('familyMembers')
                        ->relationship()
                        ->schema([
                            TextInput::make('name'),
                            TextInput::make('relation')->label('Relationship'),
                            TextInput::make('mobile_no'),
                            SpatieMediaLibraryFileUpload::make('photo'),
                            TextInput::make('remarks'),
                        ])
                        ->columns(2),

                ])
                ->columns(2)
                ->visible(fn (string $operation) => $operation !== 'create'),

            Section::make('Additional Information')
                ->schema([
                    Textarea::make('bio')->label('Additional Info')->rows(3)->columnSpanFull(),
                    Textarea::make('additional_info')->label('Analysis')->rows(3)->columnSpanFull(),

                ])
                ->columns(3)->visible(fn (string $operation) => $operation !== 'create'),

            // Section::make('Business Details')
            //     ->schema([
            //         TextInput::make('business_name'),
            //         TextInput::make('business_type'),
            //         TextInput::make('number')->label('Contact Number'),
            //         TextInput::make('email'),
            //     ])
            //     ->columns(4),

        ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('name')->label('Suspect Name')->searchable(),
                TextColumn::make('police_station')->label('Police Station')->searchable(),
                TextColumn::make('state')->searchable(),
                TextColumn::make('city')->label('City')->searchable(),
                TextColumn::make('compliant_person')->label('Complaint Person')->searchable(),
                TextColumn::make('fraud_amount')
                    ->money('INR')
                    ->label('Fraud Amount')
                    ->sortable(),
            ])
            ->filters([
                SelectFilter::make('police_station')
                    ->label('Police Station')
                    ->options(fn () => AccusedProfile::query()
                        ->select('police_station')
                        ->distinct()
                        ->pluck('police_station', 'police_station')
                        ->filter()),

                SelectFilter::make('city')
                    ->label('City')
                    ->options(fn () => AccusedProfile::query()
                        ->select('city')
                        ->distinct()
                        ->pluck('city', 'city')
                        ->filter()),

                SelectFilter::make('state')
                    ->label('State')
                    ->options(fn () => AccusedProfile::query()
                        ->select('state')
                        ->distinct()
                        ->pluck('state', 'state')
                        ->filter()),
            ], layout: FiltersLayout::AboveContent)
            ->headerActions([
                // Tables\Actions\CreateAction::make(),
            ])

            ->actions([
                Tables\Actions\Action::make('view')
                    ->url(fn (AccusedProfile $record): string => route('accused-profiles.show', $record))
                    ->openUrlInNewTab()
                    ->icon('heroicon-o-eye'),
                Tables\Actions\EditAction::make(),
                // Tables\Actions\DeleteAction::make()
                //     ->visible(fn () => auth()->usertype() == 'admin'),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListAccusedProfiles::route('/'),
            'create' => Pages\CreateAccusedProfile::route('/create'),
            'edit' => Pages\EditAccusedProfile::route('/{record}/edit'),
        ];
    }
}
