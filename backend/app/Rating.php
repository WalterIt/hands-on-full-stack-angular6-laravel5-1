<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Rating extends Model
{
    /**
    * The attributes that are mass assignable.
    *
    * @var array
    */
    protected $fillable = [
        'bike_id',
        'user_id',
        'rating'
    ];
    /**
    * Relationship.
    *
    * @var string
    */
    public function bike() {
        return $this->belongsTo('App\Bike');
    }
}
