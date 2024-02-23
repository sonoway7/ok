<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Sport extends Model
{
    use HasFactory;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'sports';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'key',
        'sport_category_id',
        'title',
        'description',
        'active',
        'has_outrights'
    ];

    /**
     * Sport Category
     * @return BelongsTo
     */
    public function sportCategory(): BelongsTo
    {
        return $this->belongsTo(SportCategory::class);
    }


    /**
     * Sport Events
     * @return HasMany
     */
    public function sportEvents(): HasMany
    {
        return $this->hasMany(SportEvent::class);
    }
}
