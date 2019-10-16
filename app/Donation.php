<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Donation extends Model
{
    protected $fillable= [
        'id',
        'donation_title',
        'donation_image',
        'donation_received',
        'donator_total',
        'donation_user',
        'donation_end',
        'donation_category',
    ];
}
