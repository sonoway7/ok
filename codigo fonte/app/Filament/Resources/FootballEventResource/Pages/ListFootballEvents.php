<?php

namespace App\Filament\Resources\FootballEventResource\Pages;

use App\Filament\Resources\FootballEventResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListFootballEvents extends ListRecords
{
    protected static string $resource = FootballEventResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
