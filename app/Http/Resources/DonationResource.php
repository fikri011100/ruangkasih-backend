<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;

class DonationResource extends Resource
{
    public function toArray($request)
    {
        return [
            'success'           => true,
            'data'              => [
                    'id'                => (string)$this->id,
                    'donation_title'    => $this->donation_title,
                    'donation_image'    => $this->donation_image,
                    'donation_received' => $this->donation_received,
                    'donation_total'    => $this->donation_total,
                    'donation_user'     => $this->donation_user,
                    'donation_end'      => $this->donation_end,
                    'categories'          => $this->categories,
            ],
            'message'           => 'Semua Donasi berhasil ditampilkan'
        ];
    }
}
