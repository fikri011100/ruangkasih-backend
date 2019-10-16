<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Donator;
use App\Donation;
use Validator;

class DonatorController extends Controller
{
    public function donator() {
        $donation = Donator::all();
        $data = $donation->toArray();

        $response = [
            'success' => true,
            'data' => $data,
            'message' => 'Semua Donasi berhasil ditampilkan'
        ];
        return response()->json($response, 200);
    }

    public function addDonator(Request $request) 
    {
        $input = $request->all();
        $validator = Validator::make($input, [
            'donator_user_id' => 'required',
            'donation_id' => 'required',
            'donation_amount' => 'required',
            'payment_method' => 'required',
            'payment_validation' => 'required'
        ]);
        if ($validator->fails()) {
            $response = [
                'success' => false,
                'data' => 'Validation Error.',
                'message' => $validator->errors()
            ];
            return response()->json($response, 404);
        }

        $donator = Donator::create($input);
        $data = $donator->toArray();
        $donation = Donation::find($request->get('donation_id'));
        $amount_donation = $donation->donation_received;
        $amount_donator = $donation->donator_total;
        $amount = $amount_donation + $request->get('donation_amount');
        $total_donator = $amount_donator + 1;
        $data_donation = [
            'donation_received' => $amount,
            'donator_total' => $total_donator
        ];
        $donation->update($data_donation);

        $response = [
            'success' => true,
            'data' => $data,
            'message' => 'Menambah Donator berhasil.'
        ];

        return response()->json($response, 200);
    }
}
