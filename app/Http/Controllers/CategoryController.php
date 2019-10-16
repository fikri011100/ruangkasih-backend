<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Category;
use Validator;

class CategoryController extends Controller
{
    public function category() {
        $category = Category::all();
        $data = $category->toArray();

        $response = [
            'success' => true,
            'data' => $data,
            'message' => 'Kategori berhasil ditampilkan'
        ];
        return response()->json($response, 200);
    }

    public function addCategory(Request $request) {
        $input = $request->all();
        $validator = Validator::make($input, [
            'name_category' => 'required',
            'image_category' => 'required'
        ]);
        if ($validator->fails()) {
            $response = [
                'success' => false,
                'data' => 'Validation Error.',
                'message' => $validator->errors()
            ];
            return response()->json($response, 404);
        }

        $category = Category::create($input);
        $data = $category->toArray();

        $response = [
            'success' => true,
            'data' => $data,
            'message' => 'Menambah Kategori berhasil.'
        ];

        return response()->json($response, 200);
    }

    public function categoryAuth() {
        $data = "Welcome " . Auth::user()->name;
        return response()->json($data, 200);
    }
}
