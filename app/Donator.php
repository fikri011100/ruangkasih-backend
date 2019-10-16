<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Donator extends Model
{
    protected $fillable= [
        'donator_user_id',
        'donation_id',
        'donation_amount',
        'payment_method',
        'payment_validation',
    ];
}
