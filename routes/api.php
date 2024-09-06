<?php

use App\Http\Controllers\ProductController;
use App\Http\Controllers\ReviewController;
use App\Http\Resources\Product\ProductCollection;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::Resource('/products',ProductController::class);

// Route::get('/test/{id}', function (string $id) {
//     return new ProductCollection(Product::find($id));
// });
Route::group(['prefix'=>'products'],function(){
    Route::apiResource('/{product}/reviews',ReviewController::class);
    // Matches /api/product/12/reviews
});