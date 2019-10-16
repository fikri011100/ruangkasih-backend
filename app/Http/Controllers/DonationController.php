<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\DonationResource;
use App\Donation;
use App\Category;
use App\User;
use Validator;

class DonationController extends Controller
{

    // public function index()
    // {
    //     return DonationResource::collection(Donation::with('')->paginate());
    // }

    public function donation(Donation $donation) {
        $donation = Donation::all();
        $data = array();
        for ($i = 0; $i < sizeof($donation); $i++) {
            $category = Category::find($donation[$i]->donation_category);
            $user = User::find($donation[$i]->donation_user);
            $data[] =  [
                    'id'                => $donation[$i]->id,
                    'donation_title'    => $donation[$i]->donation_title,
                    'donation_image'    => $donation[$i]->donation_image,
                    'donation_received' => $donation[$i]->donation_received,
                    'donation_total'    => $donation[$i]->donation_total,
                    'users'     => [
                        'id'            => $user->id,
                        'name'          => $user->name,
                        'email'         => $user->email
                    ],
                    'donation_end'      => $donation[$i]->donation_end,
                    'categories'        => [
                        'id' => $category->id,
                        'name_category' => $category->name_category
                    ]  
                ];
        }

        $response = [
            'success' => true,
            'data' => $data,
            'message' => 'Semua Donasi berhasil ditampilkan'
        ];
        // return new DonationResource($donation);
        return response()->json($response, 404);
    }

    public function donationByCategory($id_category)
    {
        $donation = Donation::find($id_category);
        $data = $donation->toArray();

        if (is_null($donation)) {
            $response = [
                'success' => false,
                'data' => 'Empty',
                'message' => 'Donation not found'
            ];
            return response()->json($response, 404);
        }

        $response = [
            'success' => true,
            'data' => $data,
            'message' => 'donation ada.'
        ];

        return response()->json($response, 200);
    }

    public function addDonation(Request $request) {
        $input = $request->all();
        $filename = date('h-s') . "_" . $request->file('donation_image')->getClientOriginalName();
        $path = $request->file('donation_image')->move(public_path("/image/"), $filename);
        $photourl = url('/image/'.$filename);
        $validator = Validator::make($input, [
            'donation_title' => 'required',
            'donation_image' => 'required',
            'donation_received' => 'required',
            'donator_total' => 'required',
            'donation_user' => 'required',
            'donation_end' => 'required',
            'donation_category' => 'required'
        ]);

        $donation = Donation::create([
            'donation_title' => $request->get('donation_title'),
            'donation_image' => $photourl,
            'donation_received' => $request->get('donation_received'),
            'donator_total' => $request->get('donator_total'),
            'donation_user' => $request->get('donation_user'),
            'donation_end' => $request->get('donation_end'),
            'donation_category' => $request->get('donation_category')
        ]);
        $data = $donation->toArray();

        $response = [
            'success' => true,
            'data' => $data,
            'message' => 'Menambah Donasi berhasil.'
        ];

        return response()->json($response, 200);
    }
}
