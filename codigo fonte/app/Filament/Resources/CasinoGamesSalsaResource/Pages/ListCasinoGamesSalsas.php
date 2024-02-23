<?php

namespace App\Filament\Resources\CasinoGamesSalsaResource\Pages;

use App\Filament\Resources\CasinoGamesSalsaResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListCasinoGamesSalsas extends ListRecords
{
    protected static string $resource = CasinoGamesSalsaResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
