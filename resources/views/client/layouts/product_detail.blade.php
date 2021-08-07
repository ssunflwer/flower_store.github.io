@extends('client.shared.master')
@section('content')


<link href="https://cdn.jsdelivr.net/npm/tailwindcss/dist/tailwind.min.css" rel="stylesheet">

<!-- new detail -->

<div class="m-auto bg-gray-100 py-10">

<div class="w-9/12  rounded-2xl p-10 m-auto  bg-white">
<a class="ml-10 py-1 px-2 bg-white text-blue-300 rounded border-2 border-blue-400 hover:text-blue-700 hover:border-blue-700 font-semibold " href="{{('product-all') }}" title="back"><i class="fas fa-arrow-left"> Back</i></a>

    <div class=" m-auto flex">
        <div class="w-1/2">

            <div id="carousel-example-1" class="single-product-slider carousel slide" data-ride="carousel">

                        <div class="carousel-inner" role="listbox">
                            <div class="carousel-item active my-10 bimg-container">
                                <img class=" w-10/12 m-auto " src="{{asset('images/'.$product->url_image)}}">
                            </div>
                            <!-- <div class="thu-nghiem-zoom">
                                <p><img title="" src="{{asset('images/'.$product->url_image)}}" alt="" /></p>
                            </div> -->

                        </div>

            </div>

        </div>
        <div class="w-1/2 my-auto mx-auto ">

            <div class="font-bold text-3xl text-black mb-6">{{$product->name}}</div>

            @if($product->promotion_price != null)
                <div class=" text-blue-500 font-semibold text-lg"> {{$product->promotion_price}}VNĐ  &nbsp;&nbsp;&nbsp;<strike class="font-semibold text-blue-500 text-secondary">{{$product->price}}VNĐ </strike></div>
            @else
                <div>{{$product->price}}VNĐ</div>
            @endif

            <div class="mt-8 flex">
                <div class="w-2/6">
                    <div class="mb-2 text-gray-500 text-opacity-50">Brand Name</div>
                    <a class="btn-sm btn-group btn-group-sm btn-success bg-transparent text-blue-400 rounded border-2 border-blue-400 hover:text-blue-700 hover:border-blue-700 font-semibold " data-toggle="tooltip" data-placement="top"  href="{{url('product-all?brand_id='.$brand->id)}}">{{$brand->name}}</a>
                </div>
                <div class="w-6/6">
                    <div class="mb-2 text-gray-500 text-opacity-50">Category Name</div>
                    <a class="btn-sm btn-group btn-group-sm btn-info bg-transparent text-blue-400 rounded border-2 border-blue-400 hover:text-blue-700 hover:border-blue-700 font-semibold" data-toggle="tooltip" data-placement="top"  href="{{url('product-all?category_id='.$category->id)}}">{{$category->name}}</a>
                </div>
            </div>

            <div class="price-box-bar mt-20">
                <div class="cart-and-bay-btn">
                            @if($quantity > 0)
                                <a id="div-cart" class="btn hvr-hover " data-fancybox-close=""
                                   href="{{ url('/add-to-cart?product_id='.$product->id.'&quantity=1') }}">Add to Cart</a>
                                <span class="ml-3">Hàng còn: {{$quantity}}</span>
                            @else
                                <a id="div-cart" class="btn hvr-hover disabled" data-fancybox-close=""
                                   href="{{ url('/add-to-cart?product_id='.$product->id.'&quantity=1') }}">Add to Cart</a>
                                <span class="ml-3 text-danger">Hàng còn: {{$quantity}}</span>
                            @endif
                </div>
            </div>

        </div>


    </div>

    <div class="w-10/12 m-auto">
            <div class="text-black font-semibold">Short Description:</div>
            <p class="mt-4 ">{!! $product->description !!}</p>

            <hr class="my-10">

            <div class="text-black font-semibold">Detail:</div>
            <p class="mt-4 ">{{$product->detail}}</p>

    </div>

</div>
</div>
<!-- end detail -->


@endsection

