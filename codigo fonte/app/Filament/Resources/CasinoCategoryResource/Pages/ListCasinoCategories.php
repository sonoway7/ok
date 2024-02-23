<?php

namespace App\Filament\Resources\CasinoCategoryResource\Pages;

use App\Filament\Resources\CasinoCategoryResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListCasinoCategories extends ListRecords
{
    protected static string $resource = CasinoCategoryResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
