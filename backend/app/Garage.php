<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Garage extends Model
{
    /**
    * The table associated with the model.
    *
    * @var string
    */
    protected $table = 'garages';
    /**
    * The attributes that are mass assignable.
    *
    * @var array
    */
    protected $fillable = [
        'name',
        'costumer_level'
    ];
    /**
    *  @var string
    */

    // Note that we are using belongsToMany() and not hasMany(). hasMany() is used for one-to-many relationships.
    public function bikes() {
        return $this->belongsToMany('App\Bike', 'bike_garage', 'bike_id', 'garage_id');
    }

}
