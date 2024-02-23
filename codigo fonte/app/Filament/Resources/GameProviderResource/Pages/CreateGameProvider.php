<?php

namespace App\Filament\Resources\GameProviderResource\Pages;

use App\Filament\Resources\GameProviderResource;
use App\Traits\Providers\FiversTrait;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;
use Illuminate\Database\Eloquent\Model;

class CreateGameProvider extends CreateRecord
{
    use FiversTrait;
    protected static string $resource = GameProviderResource::class;

    /**
     * Posso manipular os dados antes da criação
     * @param array $data
     * @return Model
     */
    protected function handleRecordCreation(array $data): Model
    {

        self::UpdateRTP($data['rtp'], $data['code']);
        return static::getModel()::create($data);
    }
}
