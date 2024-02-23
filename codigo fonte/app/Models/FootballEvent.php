<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FootballEvent extends Model
{
    use HasFactory;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'football_events';
    protected $appends = ['data_formatada'];

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'fixture_id',
        'referee',
        'date',
        'period_first',
        'period_second',
        'team_home_id',
        'team_home_name',
        'team_home_logo',
        'team_home_winner',
        'team_home_statistics',
        'team_away_id',
        'team_away_name',
        'team_away_logo',
        'team_away_winner',
        'team_away_statistics',
        'venue_id',
        'venue_name',
        'venue_city',
        'league_id',
        'league_name',
        'league_country',
        'league_logo',
        'league_flag',
        'league_season',
        'league_round',
        'goals_home',
        'goals_away',
        'score_halftime_home',
        'score_halftime_away',
        'score_extratime_home',
        'score_extratime_away',
        'score_penalty_home',
        'score_penalty_away',
        'bets',
        'predictions',
        'odds_home',
        'odds_draw',
        'odds_away',
        'status',
        'status_long',
        'finished'
    ];

    /**
     * @param $value
     * @return mixed
     */
    public function getDataFormatadaAttribute($value)
    {
        $data = Carbon::parse($this->attributes['date']);

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

    /**
     * @return mixed
     */
    public function getBetsAttribute()
    {
        if(!empty($this->attributes['bets'])) {
            return json_decode($this->attributes['bets'], true);
        }
        return [];
    }
}
