<?php

namespace App\Filament\Resources;

use App\Filament\Resources\SportBetResource\Pages;
use App\Filament\Resources\SportBetResource\RelationManagers;
use App\Models\SportBet;
use App\Models\User;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class SportBetResource extends Resource
{
    protected static ?string $model = SportBet::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    protected static ?string $navigationGroup = 'Esporte';

    protected static ?string $navigationLabel = 'Livro de Apostas';

    protected static ?string $modelLabel = 'Livro de Apostas';


    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Section::make('Cadastro de Saques')
                    ->schema([
                        Forms\Components\Select::make('user_id')
                            ->label('Usuários')
                            ->placeholder('Selecione um usuário')
                            ->relationship(name: 'user', titleAttribute: 'name')
                            ->options(
                                fn($get) => User::query()
                                    ->pluck('name', 'id')
                            )
                            ->searchable()
                            ->preload()
                            ->live()
                            ->required(),
                        Forms\Components\Select::make('type')
                            ->label('Selecione o tipo')
                            ->options([
                                'multiple' => 'Multiplas',
                                'single' => 'Única',
                            ]),
                        Forms\Components\Group::make()
                            ->schema([
                                Forms\Components\Toggle::make('is_win')
                                    ->label('Venceu'),
                                Forms\Components\TextInput::make('total_bets')
                                    ->required(),
                                Forms\Components\TextInput::make('total_earnings')
                                    ->required()
                            ])->columns(3),
                    ])
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->defaultSort('created_at', 'desc')
            ->columns([
                Tables\Columns\TextColumn::make('user.name')
                    ->label('Nome')
                    ->searchable(['users.name', 'users.last_name'])
                    ->sortable(),
                Tables\Columns\TextColumn::make('type')
                    ->label('Tipo'),
                Tables\Columns\ToggleColumn::make('is_win')
                    ->label('Vencedor'),
                Tables\Columns\TextColumn::make('total_bets')
                    ->label('Total Aposta'),
                Tables\Columns\TextColumn::make('total_earnings')
                    ->label('Total Prêmio'),

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

    /**
     * @return string[]
     */
    public static function getRelations(): array
    {
        return [
            RelationManagers\SportBetsOddsRelationManager::class
        ];
    }

    /**
     * @return array|\Filament\Resources\Pages\PageRegistration[]
     */
    public static function getPages(): array
    {
        return [
            'index' => Pages\ListSportBets::route('/'),
            'create' => Pages\CreateSportBet::route('/create'),
            'edit' => Pages\EditSportBet::route('/{record}/edit'),
        ];
    }
}
