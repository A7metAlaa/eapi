<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Http\Requests\StoreProductRequest;
use App\Http\Requests\UpdateProductRequest;
use App\Http\Resources\Product\ProductResources;
use App\Http\Resources\ProductCollection;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Support\Facades\Auth;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     */
   

    //prevent members to delete Create products 
    public function __construct(){
      
        $this->middleware('auth:api')->except('index','show');
    }
    public function index()
    {
     
        // dd(Product::all());
         return  ProductCollection::collection(Product::paginate(5));
     }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreProductRequest $request)
    {
        $product = new Product;
       $product->name = $request->name;
       $product->detail = $request->description;
       $product->stock = $request->stock;
       $product->price = $request->price;
       $product->discount = $request->discount;
       $product->save();
       return response([
        'data'=> new ProductResources($product)
       ],200);
        return $request->all();
       
    }

    /**
     * Display the specified resource.
     */
    public function show(Product $product)
    {

        try {
            return new ProductResources($product);
        }catch(ModelNotFoundException $e){
            return response()->json(['error' => 'Product not found'], 404);

        }


         
 
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Product $product)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateProductRequest $request, Product $product)
    {   
        $request['detail'] = $request->description;
        unset($request['description']);
        $product->update($request->all());
        return response([ 'data'=> new ProductResources($product)
           ],200);
    }


    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Product $product)
    {   
        $product->delete();
         
    return response('Product Detetd Successfully', 204);
    }
}
