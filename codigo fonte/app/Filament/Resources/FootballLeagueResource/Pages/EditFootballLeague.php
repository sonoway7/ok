<?php

namespace App\Filament\Resources\FootballLeagueResource\Pages;

use App\Filament\Resources\FootballLeagueResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditFootballLeague extends EditRecord
{
    protected static string $resource = FootballLeagueResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
