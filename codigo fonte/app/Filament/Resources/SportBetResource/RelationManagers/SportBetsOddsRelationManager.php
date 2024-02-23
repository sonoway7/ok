<?php

namespace App\Filament\Resources\SportBetResource\RelationManagers;

use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\RelationManagers\RelationManager;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class SportBetsOddsRelationManager extends RelationManager
{
    protected static string $relationship = 'sportBetsOdds';

    /**
     * @param Form $form
     * @return Form
     */
    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('status_long')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('team_home_name')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('team_away_name')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('odds_name')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('odds_value')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('odds_odd')
                    ->required()
                    ->maxLength(255),
                Forms\Components\DateTimePicker::make('date')
                    ->required(),
                Forms\Components\TextInput::make('bet_amount')
                    ->required(),
            ]);
    }

    /**
     * @param Table $table
     * @return Table
     */
    public function table(Table $table): Table
    {
        return $table
            ->recordTitleAttribute('odds_name')
            ->columns([
                Tables\Columns\TextColumn::make('status_long')
                    ->label('Status'),
                Tables\Columns\TextColumn::make('team_home_name')
                    ->label('Home'),
                Tables\Columns\TextColumn::make('team_away_name')
                    ->label('Away'),
                Tables\Columns\TextColumn::make('odds_name')
                    ->label('ODDS Nome'),
                Tables\Columns\TextColumn::make('odds_value')
                    ->label('ODDS Valor'),
                Tables\Columns\TextColumn::make('odds_odd')
                    ->label('ODDS'),
                Tables\Columns\TextColumn::make('bet_amount')
                    ->label('Aposta'),
                Tables\Columns\TextColumn::make('date')
                    ->dateTime()
                    ->label('Data'),
            ])
            ->filters([
                //
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
            ])
            ->emptyStateActions([
                Tables\Actions\CreateAction::make(),
            ]);
    }
}
