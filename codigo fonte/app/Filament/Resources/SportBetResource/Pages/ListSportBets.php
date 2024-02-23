<?php

namespace App\Filament\Resources\SportBetResource\Pages;

use App\Filament\Resources\SportBetResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListSportBets extends ListRecords
{
    protected static string $resource = SportBetResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
