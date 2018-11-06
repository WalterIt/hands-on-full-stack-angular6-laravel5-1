<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Bike extends Model
{
    protected $fillable = [
        'make',
        'model',
        'year',
        'mods',
        'picture'
    ];

    /**
    * Relationship. Notice that belongsTo relation is a one-to-many inverse relationship.
    *
    * @var string
    */
    public function builder() {
        return $this->belongsTo('App\Builder');
    }

    // One-to-many relationship
    public function items() {
        return $this->hasMany('App\Item');
    }

    // Many-to-many relationship
    public function garages() {
        return $this->belongsToMany('App\Garage');
    }

    public function user() {
        return $this->belongsTo('App\User');
    }

    public function ratings() {
            return $this->hasMany('App\Rating');
    }

}
