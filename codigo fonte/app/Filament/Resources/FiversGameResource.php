<?php

namespace App\Filament\Resources;

use App\Filament\Resources\FiversGameResource\Pages;
use App\Filament\Resources\FiversGameResource\RelationManagers;
use App\Models\CasinoCategory;
use App\Models\CasinoGamesSlotgrator;
use App\Models\FiversGame;
use App\Models\GameProvider;
use App\Models\User;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class FiversGameResource extends Resource
{
    protected static ?string $model = FiversGame::class;

    protected static ?string $navigationIcon = 'heroicon-o-puzzle-piece';

    protected static ?string $navigationLabel = 'Jogos Fivers';

    protected static ?string $modelLabel = 'Jogos Fivers';

    protected static ?string $navigationGroup = 'Fivers';

    protected static ?string $slug = 'fivers-jogos';

    protected static ?int $navigationSort = 0;

    /**
     * @return string|null
     */
    public static function getNavigationBadge(): ?string
    {
        return static::getModel()::where('status', 1)->count(); // TODO: Change the autogenerated stub
    }

    /**
     * @param Form $form
     * @return Form
     */
    public static function form(Form $form): Form
    {
        return $form
            ->schema([

                Forms\Components\Section::make('Provedores/Categorias')
                    ->description('Selecione um provedor e uma categoria')
                    ->schema([
                        Forms\Components\Select::make('casino_category_id')
                            ->label('Categoria')
                            ->placeholder('Selecione uma categoria')
                            ->relationship(name: 'category', titleAttribute: 'name')
                            ->options(
                                fn($get) => CasinoCategory::query()
                                    ->pluck('name', 'id')
                            )
                            ->searchable()
                            ->preload()
                            ->live(),
                        Forms\Components\Select::make('game_provider_id')
                            ->label('Provedores')
                            ->placeholder('Selecione um provedor')
                            ->relationship(name: 'provider', titleAttribute: 'name')
                            ->options(
                                fn($get) => GameProvider::query()
                                    ->pluck('name', 'id')
                            )
                            ->searchable()
                            ->preload()
                            ->live(),
                    ])->columns(2),

                Forms\Components\Section::make('Provedores')
                    ->description('Selecione um provedor')
                    ->schema([
                        Forms\Components\TextInput::make('game_code')
                            ->label('Game Code')
                            ->placeholder('Digite o game code do jogo')
                            ->maxLength(50),
                        Forms\Components\TextInput::make('game_name')
                            ->label('Game Name')
                            ->placeholder('Digite o nome do jogo')
                            ->maxLength(50),
                        Forms\Components\Toggle::make('status')->required(),
                        Forms\Components\FileUpload::make('banner')
                            ->label('Imagem')
                            ->placeholder('Carregue a imagem do jogo')
                            ->image()
                            ->columnSpanFull()
                            ->required(),
                    ])->columns(3),

            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\ImageColumn::make('banner'),
                Tables\Columns\TextColumn::make('provider.name')
                    ->label('Provedor')
                    ->sortable(),
                Tables\Columns\TextColumn::make('category.name')
                    ->label('Categoria')
                    ->sortable(),
                Tables\Columns\TextColumn::make('game_code')
                    ->label('Game Code')
                    ->searchable(),
                Tables\Columns\TextColumn::make('game_name')
                    ->label('Game Name')
                    ->searchable(),
                Tables\Columns\ToggleColumn::make('status')
                    ->searchable(),
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
                Tables\Filters\SelectFilter::make('Category')
                    ->relationship('category', 'name')
                    ->label('Selecione uma categoria')
                    ->indicator('Categoria'),
                Tables\Filters\SelectFilter::make('Provedor')
                    ->relationship('provider', 'name')
                    ->label('Selecione um provedor')
                    ->indicator('Provedor'),
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkAction::make('Ativar')
                    ->icon('heroicon-m-check')
                    ->requiresConfirmation()
                    ->action(function($records) {
                        return $records->each->update(['status' => 1]);
                    }),
                Tables\Actions\BulkAction::make('Desativar')
                    ->icon('heroicon-m-x-circle')
                    ->requiresConfirmation()
                    ->color('danger')
                    ->action(function($records) {
                        return $records->each(function($record) {
                            $id = $record->id;
                            FiversGame::where('id', $id)->update(['status' => 0]);
                        });
                    }),
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
            'index' => Pages\ListFiversGames::route('/'),
            'create' => Pages\CreateFiversGame::route('/create'),
            'edit' => Pages\EditFiversGame::route('/{record}/edit'),
        ];
    }
}
