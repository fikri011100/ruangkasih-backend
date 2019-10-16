<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class paymentmethod extends Model
{
    protected $fillable= [
        'id',
        'paymentmethod_name',
        'paymentmethod_image',
        'paymentmethod_desc',
    ];
}
