<?php

namespace App\Filament\Resources\CasinoCategoryResource\Pages;

use App\Filament\Resources\CasinoCategoryResource;
use App\Models\CasinoCategory;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class EditCasinoCategory extends EditRecord
{
    protected static string $resource = CasinoCategoryResource::class;

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
        $data['slug'] = Str::slug($data['name']);

        $checkExistSlug = CasinoCategory::where('slug', $data['slug'])->first();
        if(!empty($checkExistSlug)) {
            $data['slug'] = $data['slug'] .'-'. time();
        }

        $record->update($data);

        return $record;
    }
}
