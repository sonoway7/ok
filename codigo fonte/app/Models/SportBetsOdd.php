<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SportBetsOdd extends Model
{
    use HasFactory;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'sport_bets_odds';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'sport_bet_id',
        'bet_id',
        'bet_odd_id',
        'date',
        'status_long',
        'team_home_name',
        'team_away_name',
        'odds_id',
        'odds_name',
        'odds_value',
        'odds_odd',
        'bet_amount'
    ];
}
