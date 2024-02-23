<?php

namespace App\Filament\Resources\FootballLeagueResource\Pages;

use App\Filament\Resources\FootballLeagueResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListFootballLeagues extends ListRecords
{
    protected static string $resource = FootballLeagueResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
