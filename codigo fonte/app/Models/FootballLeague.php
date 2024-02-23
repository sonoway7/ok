<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FootballLeague extends Model
{
    use HasFactory;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'football_leagues';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'league_id',
        'name',
        'type',
        'logo',
        'country',
        'country_code',
        'country_flag',
        'season_year',
        'season_start',
        'season_end',
        'standings',
        'players',
        'top_scorers',
        'top_assists',
        'top_cards',
        'injuries',
        'predictions',
        'odds',
        'status',
    ];


}
