<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Builder extends Model
{
    /**
    * The table associated with the model.
    *
    * @var string
    */
    protected $table = 'builders';
    /**
    * The attributes that are mass assignable.
    *
    * @var array
    */
    protected $fillable = [
        'name',
        'description',
        'location'
    ];
    /**
    * Relationship one to one.
    *
    * @var array
    */
    public function bike() {
        return $this->hasOne('App\Bike');
    }
}
