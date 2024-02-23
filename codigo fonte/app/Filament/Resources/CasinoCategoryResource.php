<?php

namespace App\Filament\Resources;

use App\Filament\Resources\CasinoCategoryResource\Pages;
use App\Filament\Resources\CasinoCategoryResource\RelationManagers;
use App\Models\CasinoCategory;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class CasinoCategoryResource extends Resource
{
    protected static ?string $model = CasinoCategory::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    protected static ?string $navigationLabel = 'Categorias de Jogos';

    protected static ?string $modelLabel = 'Categorias de Jogos';

    protected static ?string $navigationGroup = 'Meus Jogos';

    protected static ?int $navigationSort = 0;

    /**
     * @param Form $form
     * @return Form
     */
    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Section::make()
                ->schema([
                    Forms\Components\TextInput::make('name')
                        ->label('Nome')
                        ->placeholder('Digite o nome')
                        ->required()
                        ->maxLength(191),
                    Forms\Components\TextInput::make('description')
                        ->label('Descrição')
                        ->placeholder('Digite a descrição')
                        ->required()
                        ->maxLength(191),
                    Forms\Components\FileUpload::make('image')
                        ->placeholder('Carregue uma imagem')
                        ->image(),
                ])
            ]);
    }

    /**
     * @param Table $table
     * @return Table
     */
    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\ImageColumn::make('image')
                    ->label('Imagem'),
                Tables\Columns\TextColumn::make('name')
                    ->label('Nome')
                    ->searchable(),
                Tables\Columns\TextColumn::make('description')
                    ->label('Descrição')
                    ->searchable(),
                Tables\Columns\TextColumn::make('slug')
                    ->label('Slug')
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
            'index' => Pages\ListCasinoCategories::route('/'),
            'create' => Pages\CreateCasinoCategory::route('/create'),
            'edit' => Pages\EditCasinoCategory::route('/{record}/edit'),
        ];
    }
}
