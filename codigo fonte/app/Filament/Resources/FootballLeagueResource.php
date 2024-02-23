<?php

namespace App\Filament\Resources;

use App\Filament\Resources\FootballLeagueResource\Pages;
use App\Filament\Resources\FootballLeagueResource\RelationManagers;
use App\Models\FootballLeague;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class FootballLeagueResource extends Resource
{
    protected static ?string $model = FootballLeague::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    protected static ?string $navigationLabel = 'Ligas';

    protected static ?string $modelLabel = 'Ligas';

    protected static ?string $navigationGroup = 'Esporte';

    protected static ?int $navigationSort = 0;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('league_id')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('name')
                    ->required()
                    ->maxLength(191),
                Forms\Components\TextInput::make('type')
                    ->required()
                    ->maxLength(20),
                Forms\Components\TextInput::make('logo')
                    ->required()
                    ->maxLength(191),
                Forms\Components\TextInput::make('country')
                    ->maxLength(191),
                Forms\Components\TextInput::make('country_code')
                    ->maxLength(191),
                Forms\Components\TextInput::make('country_flag')
                    ->maxLength(191),
                Forms\Components\TextInput::make('season_year')
                    ->required()
                    ->numeric(),
                Forms\Components\DatePicker::make('season_start')
                    ->required(),
                Forms\Components\DatePicker::make('season_end')
                    ->required(),
                Forms\Components\Toggle::make('standings')
                    ->required(),
                Forms\Components\Toggle::make('players')
                    ->required(),
                Forms\Components\Toggle::make('top_scorers')
                    ->required(),
                Forms\Components\Toggle::make('top_assists')
                    ->required(),
                Forms\Components\Toggle::make('top_cards')
                    ->required(),
                Forms\Components\Toggle::make('injuries')
                    ->required(),
                Forms\Components\Toggle::make('predictions')
                    ->required(),
                Forms\Components\Toggle::make('odds')
                    ->required(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('league_id')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('name')
                    ->searchable(),
                Tables\Columns\TextColumn::make('type')
                    ->searchable(),
                Tables\Columns\TextColumn::make('logo')
                    ->searchable(),
                Tables\Columns\TextColumn::make('country')
                    ->searchable(),
                Tables\Columns\TextColumn::make('country_code')
                    ->searchable(),
                Tables\Columns\TextColumn::make('country_flag')
                    ->searchable(),
                Tables\Columns\TextColumn::make('season_year')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('season_start')
                    ->date()
                    ->sortable(),
                Tables\Columns\TextColumn::make('season_end')
                    ->date()
                    ->sortable(),
                Tables\Columns\IconColumn::make('standings')
                    ->boolean(),
                Tables\Columns\IconColumn::make('players')
                    ->boolean(),
                Tables\Columns\IconColumn::make('top_scorers')
                    ->boolean(),
                Tables\Columns\IconColumn::make('top_assists')
                    ->boolean(),
                Tables\Columns\IconColumn::make('top_cards')
                    ->boolean(),
                Tables\Columns\IconColumn::make('injuries')
                    ->boolean(),
                Tables\Columns\IconColumn::make('predictions')
                    ->boolean(),
                Tables\Columns\IconColumn::make('odds')
                    ->boolean(),
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
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
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

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListFootballLeagues::route('/'),
            'create' => Pages\CreateFootballLeague::route('/create'),
            'edit' => Pages\EditFootballLeague::route('/{record}/edit'),
        ];
    }
}
