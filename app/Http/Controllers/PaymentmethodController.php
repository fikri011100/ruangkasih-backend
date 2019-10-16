<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\paymentmethod;
use Validator;

class PaymentmethodController extends Controller
{
    public function payment() {
        $paymentmethod = paymentmethod::all();
        $data = $paymentmethod->toArray();

        $response = [
            'success' => true,
            'data' => $data,
            'message' => 'Semua Payment Method berhasil ditampilkan'
        ];
        return response()->json($response, 200);
    }

    public function addPayment(Request $request) {
        $input = $request->all();
        $filename = date('h-s') . "_" . $request->file('paymentmethod_image')->getClientOriginalName();
        $path = $request->file('paymentmethod_image')->move(public_path("/image/"), $filename);
        $photourl = url('/image/'.$filename);
        $validator = Validator::make($input, [
            'paymentmethod_name' => 'required',
            'paymentmethod_image' => 'required',
            'paymentmethod_desc' => 'required'
        ]);

        $paymentmethod = paymentmethod::create([
            'paymentmethod_name' => $request->get('paymentmethod_name'),
            'paymentmethod_image' => $photourl,
            'paymentmethod_desc' => $request->get('paymentmethod_desc'),
        ]);
        $data = $paymentmethod->toArray();

        $response = [
            'success' => true,
            'data' => $data,
            'message' => 'Menambah Payment Method berhasil.'
        ];

        return response()->json($response, 200);
    }
}
