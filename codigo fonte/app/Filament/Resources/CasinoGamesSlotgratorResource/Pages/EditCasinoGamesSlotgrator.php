<?php

namespace App\Filament\Resources\CasinoGamesSlotgratorResource\Pages;

use App\Filament\Resources\CasinoGamesSlotgratorResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;
use Filament\Notifications\Notification;

class EditCasinoGamesSlotgrator extends EditRecord
{
    protected static string $resource = CasinoGamesSlotgratorResource::class;

    /**
     * @return array|Actions\Action[]|Actions\ActionGroup[]
     */
    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }

    /**
     * @param Model $record
     * @param array $data
     * @return Model
     */
    protected function handleRecordUpdate(Model $record, array $data): Model
    {
        if(empty($record->slug)) {
            $data['slug'] = Str::slug($data['provider'].' '.$data['name']);
        }

        $record->update($data);
        return $record;
    }

    /**
     * @return Notification|null
     */
    protected function getSavedNotification(): ?Notification
    {
        return Notification::make()
            ->success()
            ->title('Jogo atualizado')
            ->body('Jogo atualizado com sucesso');
    }
}
