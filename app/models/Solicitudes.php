<?php

namespace App\models;

use Illuminate\Database\Eloquent\Model;

class Solicitudes extends Model
{

    public $timestamps = false;
    protected $fillable = [
        'idSolicitud_Vehiculo'
    ];
    protected $table = 'tbSolicitud_Vehiculo';

    
}
