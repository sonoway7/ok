<?php

namespace App\Filament\Resources\CasinoGamesSlotgratorResource\Pages;

use App\Filament\Resources\CasinoGamesSlotgratorResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListCasinoGamesSlotgrators extends ListRecords
{
    protected static string $resource = CasinoGamesSlotgratorResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
