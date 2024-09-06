<?php

namespace App\Http\Resources\Product;

use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ProductResources extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request)
    {   
        return [
 
            'name'=> $this->name,
            'description'=> $this->detail,
            'price'=> $this->price,
            'totalprice'=>round((1- $this->discount/(100)) * $this->discount ,2),
            'stock'=> $this->stock ==0 ? 'Out of stock' : $this->stock ,
            'discount'=> $this->discount,
 
            'rating'=>$this->reviews->count()>0 ? round($this->reviews->sum('star')/$this->reviews->count(),2):'No rating yet',

            'href'=>[
                'reviews'=>route('reviews.index',$this->id)
            ]
        ];
    }
}


 