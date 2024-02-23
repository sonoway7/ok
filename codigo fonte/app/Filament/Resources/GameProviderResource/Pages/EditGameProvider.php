<?php

namespace App\Filament\Resources\GameProviderResource\Pages;

use App\Filament\Resources\GameProviderResource;
use App\Traits\Providers\FiversTrait;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;
use Illuminate\Database\Eloquent\Model;

class EditGameProvider extends EditRecord
{
    use FiversTrait;
    protected static string $resource = GameProviderResource::class;

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
        self::UpdateRTP($data['rtp'], $data['code']);
        $record->update($data);
        return $record;
    }
}
