<?php

namespace App\Filament\Resources\CasinoGamesSalsaResource\Pages;

use App\Filament\Resources\CasinoGamesSalsaResource;
use Filament\Actions;
use Filament\Notifications\Notification;
use Filament\Resources\Pages\EditRecord;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class EditCasinoGamesSalsa extends EditRecord
{
    protected static string $resource = CasinoGamesSalsaResource::class;

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
