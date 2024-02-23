<?php

namespace App\Filament\Resources\FootballEventResource\Pages;

use App\Filament\Resources\FootballEventResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditFootballEvent extends EditRecord
{
    protected static string $resource = FootballEventResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
