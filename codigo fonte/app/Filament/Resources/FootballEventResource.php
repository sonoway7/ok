<?php

namespace App\Filament\Resources;

use App\Filament\Resources\FootballEventResource\Pages;
use App\Filament\Resources\FootballEventResource\RelationManagers;
use App\Models\FootballEvent;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class FootballEventResource extends Resource
{
    protected static ?string $model = FootballEvent::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    protected static ?string $navigationLabel = 'Eventos';

    protected static ?string $modelLabel = 'Eventos';

    protected static ?string $navigationGroup = 'Esporte';

    protected static ?int $navigationSort = 1;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('fixture_id')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('referee')
                    ->maxLength(191),
                Forms\Components\DateTimePicker::make('date')
                    ->required(),
                Forms\Components\TextInput::make('period_first')
                    ->maxLength(191),
                Forms\Components\TextInput::make('period_second')
                    ->maxLength(191),
                Forms\Components\TextInput::make('team_home_id')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('team_home_name')
                    ->maxLength(191),
                Forms\Components\TextInput::make('team_home_logo')
                    ->maxLength(191),
                Forms\Components\Toggle::make('team_home_winner'),
                Forms\Components\Textarea::make('team_home_statistics')
                    ->maxLength(65535)
                    ->columnSpanFull(),
                Forms\Components\TextInput::make('team_away_id')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('team_away_name')
                    ->maxLength(191),
                Forms\Components\TextInput::make('team_away_logo')
                    ->maxLength(191),
                Forms\Components\Toggle::make('team_away_winner'),
                Forms\Components\Textarea::make('team_away_statistics')
                    ->maxLength(65535)
                    ->columnSpanFull(),
                Forms\Components\TextInput::make('status')
                    ->required()
                    ->maxLength(20),
                Forms\Components\TextInput::make('venue_id')
                    ->numeric(),
                Forms\Components\TextInput::make('venue_name')
                    ->maxLength(191),
                Forms\Components\TextInput::make('venue_city')
                    ->maxLength(191),
                Forms\Components\TextInput::make('league_id')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('league_name')
                    ->maxLength(191),
                Forms\Components\TextInput::make('league_country')
                    ->maxLength(50),
                Forms\Components\TextInput::make('league_logo')
                    ->maxLength(191),
                Forms\Components\TextInput::make('league_flag')
                    ->maxLength(20),
                Forms\Components\TextInput::make('league_season')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('league_round')
                    ->maxLength(191),
                Forms\Components\TextInput::make('goals_home')
                    ->maxLength(191),
                Forms\Components\TextInput::make('goals_away')
                    ->maxLength(191),
                Forms\Components\TextInput::make('score_halftime_home')
                    ->maxLength(191),
                Forms\Components\TextInput::make('score_halftime_away')
                    ->maxLength(191),
                Forms\Components\TextInput::make('score_extratime_home')
                    ->maxLength(191),
                Forms\Components\TextInput::make('score_extratime_away')
                    ->maxLength(191),
                Forms\Components\TextInput::make('score_penalty_home')
                    ->maxLength(191),
                Forms\Components\TextInput::make('score_penalty_away')
                    ->maxLength(191),
                Forms\Components\Textarea::make('predictions')
                    ->maxLength(65535)
                    ->columnSpanFull(),
                Forms\Components\Textarea::make('bets')
                    ->maxLength(65535)
                    ->columnSpanFull(),
                Forms\Components\TextInput::make('odds_home')
                    ->maxLength(20),
                Forms\Components\TextInput::make('odds_draw')
                    ->maxLength(20),
                Forms\Components\TextInput::make('odds_away')
                    ->maxLength(20),
                Forms\Components\TextInput::make('status_long')
                    ->maxLength(50),
                Forms\Components\Toggle::make('finished'),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('fixture_id')
                    ->sortable(),
                Tables\Columns\TextColumn::make('referee')
                    ->searchable(),
                Tables\Columns\TextColumn::make('date')
                    ->dateTime()
                    ->sortable(),
                Tables\Columns\TextColumn::make('period_first')
                    ->searchable(),
                Tables\Columns\TextColumn::make('period_second')
                    ->searchable(),
                Tables\Columns\TextColumn::make('team_home_id')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('team_home_name')
                    ->searchable(),
                Tables\Columns\TextColumn::make('team_home_logo')
                    ->searchable(),
                Tables\Columns\IconColumn::make('team_home_winner')
                    ->boolean(),
                Tables\Columns\TextColumn::make('team_away_id')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('team_away_name')
                    ->searchable(),
                Tables\Columns\TextColumn::make('team_away_logo')
                    ->searchable(),
                Tables\Columns\IconColumn::make('team_away_winner')
                    ->boolean(),
                Tables\Columns\TextColumn::make('status')
                    ->searchable(),
                Tables\Columns\TextColumn::make('venue_id')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('venue_name')
                    ->searchable(),
                Tables\Columns\TextColumn::make('venue_city')
                    ->searchable(),
                Tables\Columns\TextColumn::make('league_id')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('league_name')
                    ->searchable(),
                Tables\Columns\TextColumn::make('league_country')
                    ->searchable(),
                Tables\Columns\TextColumn::make('league_logo')
                    ->searchable(),
                Tables\Columns\TextColumn::make('league_flag')
                    ->searchable(),
                Tables\Columns\TextColumn::make('league_season')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('league_round')
                    ->searchable(),
                Tables\Columns\TextColumn::make('goals_home')
                    ->searchable(),
                Tables\Columns\TextColumn::make('goals_away')
                    ->searchable(),
                Tables\Columns\TextColumn::make('score_halftime_home')
                    ->searchable(),
                Tables\Columns\TextColumn::make('score_halftime_away')
                    ->searchable(),
                Tables\Columns\TextColumn::make('score_extratime_home')
                    ->searchable(),
                Tables\Columns\TextColumn::make('score_extratime_away')
                    ->searchable(),
                Tables\Columns\TextColumn::make('score_penalty_home')
                    ->searchable(),
                Tables\Columns\TextColumn::make('score_penalty_away')
                    ->searchable(),
                Tables\Columns\TextColumn::make('odds_home')
                    ->searchable(),
                Tables\Columns\TextColumn::make('odds_draw')
                    ->searchable(),
                Tables\Columns\TextColumn::make('odds_away')
                    ->searchable(),
                Tables\Columns\TextColumn::make('status_long')
                    ->searchable(),
                Tables\Columns\IconColumn::make('finished')
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
            'index' => Pages\ListFootballEvents::route('/'),
            'create' => Pages\CreateFootballEvent::route('/create'),
            'edit' => Pages\EditFootballEvent::route('/{record}/edit'),
        ];
    }
}
