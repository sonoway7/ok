<?php

namespace App\Filament\Resources;

use App\Filament\Resources\GameProviderResource\Pages;
use App\Filament\Resources\GameProviderResource\RelationManagers;
use App\Models\GameProvider;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class GameProviderResource extends Resource
{
    protected static ?string $model = GameProvider::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    protected static ?string $navigationLabel = 'Provedores';

    protected static ?string $modelLabel = 'Provedores';

    protected static ?string $navigationGroup = 'Fivers';

    protected static ?string $slug = 'fivers-provedores';

    protected static ?int $navigationSort = 0;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Section::make()
                ->schema([
                    Forms\Components\TextInput::make('code')
                        ->label('Código')
                        ->placeholder('Digite o codigo do Provedor')
                        ->maxLength(50),
                    Forms\Components\TextInput::make('name')
                        ->label('Nome do Provedor')
                        ->placeholder('Digite o nome do Provedor')
                        ->maxLength(50),
                    Forms\Components\TextInput::make('rtp')
                        ->numeric()
                        ->default(90)
                        ->minValue(50)
                        ->maxLength(100),
                    Forms\Components\Toggle::make('status')
                        ->required()
                        ->inline(false)
                        ->default(true),
                ])->columns(4)
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('code')
                    ->searchable(),
                Tables\Columns\TextColumn::make('name')
                    ->searchable(),
                Tables\Columns\TextColumn::make('rtp')->suffix('%'),
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
            'index' => Pages\ListGameProviders::route('/'),
            'create' => Pages\CreateGameProvider::route('/create'),
            'edit' => Pages\EditGameProvider::route('/{record}/edit'),
        ];
    }
}
