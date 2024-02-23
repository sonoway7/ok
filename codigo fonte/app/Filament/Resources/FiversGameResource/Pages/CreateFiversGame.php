<?php

namespace App\Filament\Resources\FiversGameResource\Pages;

use App\Filament\Resources\FiversGameResource;
use App\Traits\Providers\FiversTrait;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;
use Illuminate\Database\Eloquent\Model;

class CreateFiversGame extends CreateRecord
{
    use FiversTrait;
    protected static string $resource = FiversGameResource::class;

    /**
     * Posso manipular os dados antes da criação
     * @param array $data
     * @return Model
     */
    protected function handleRecordCreation(array $data): Model
    {

        return static::getModel()::create($data);
    }
}
