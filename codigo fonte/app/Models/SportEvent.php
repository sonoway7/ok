<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Support\Str;

class SportEvent extends Model
{
    use HasFactory;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'sport_events';
    protected $appends = ['data_formatada'];

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'event_id',
        'sport_id',
        'sport_key',
        'commence_time',
        'completed',
        'home_team',
        'away_team',
        'home_team_score',
        'away_team_score',
        'home_team_odds',
        'away_team_odds',
        'odds_draw',
        'slug'
    ];

    /**
     * @return BelongsTo
     */
    public function sport(): BelongsTo
    {
        return $this->belongsTo(Sport::class);
    }

    /**
     * @param $value
     * @return mixed
     */
    public function getDataFormatadaAttribute($value)
    {
        $data = Carbon::parse($this->attributes['commence_time']);

        if ($data->isToday()) {
            // Se a data for hoje, exibe "Hoje"
            $dataFormatada = trans('Today').', ' . $data->format('H:i');
        } elseif ($data->isTomorrow()) {
            // Se a data for amanhã, exibe "Amanhã"
            $dataFormatada = trans('Tomorrow').', ' . $data->format('H:i');
        } else {
            // Para outras datas, exibe o formato padrão
            $dataFormatada = $data->isoFormat('dddd, H:mm');
        }

        return $dataFormatada;
    }
}
