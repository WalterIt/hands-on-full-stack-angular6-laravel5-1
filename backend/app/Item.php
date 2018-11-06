<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Item extends Model
{
    /**
    * The table associated with the model.
    *
    * @var string
    */
    protected $table = 'items';
    /**
    * The attributes that are mass assignable.
    *
    * @var array
    */
    protected $fillable = [
        'type',
        'name',
        'company',
        'bike_id'
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
