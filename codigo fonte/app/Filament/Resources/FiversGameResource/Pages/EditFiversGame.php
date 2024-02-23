<?php

namespace App\Filament\Resources\FiversGameResource\Pages;

use App\Filament\Resources\FiversGameResource;
use App\Traits\Providers\FiversTrait;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;
use Illuminate\Database\Eloquent\Model;

class EditFiversGame extends EditRecord
{
    use FiversTrait;
    protected static string $resource = FiversGameResource::class;

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

        $record->update($data);
        return $record;
    }
}
