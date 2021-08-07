@extends('client.shared.master')
@section('content')
<body>
<link href="https://cdn.jsdelivr.net/npm/tailwindcss/dist/tailwind.min.css" rel="stylesheet">





<div class=" bg-gray-100">
<div class="w-9/12 m-auto ">
    <!-- Start Products  -->
    <div class="products-box">
        <div class="container">
            <div class="row mx-auto">
                <div class="col-lg-12 ">
                    <div class="special-menu flex">
                        <div class="w-7/12 ">
                            <div class=" text-gray-500 text-opacity-50">Welcome</div>
                            <div class="font-bold text-6xl pr-10 text-black">Your health is our happiness </div>
                        </div>
                        <div class="w-5/12 button-group filter-button-group  flex flex-row-esserence">
                            <!-- <button data-filter=".top-hot">Hoa Tươi</button> -->
                            <button class="active h-10 mt-10 w-1/3 mb-2" data-filter="*">All</button>
                            <button class="w-1/3 h-10 mt-10  mb-2" data-filter=".top-sale">Season Sale</button>
                            <button class="w-1/3 h-10 mt-10  mb-2" data-filter=".top-new">New Arrival</button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row special-list">


                <!--Top new product-->
                @foreach($topNews as $key => $topNew)
                <div class="col-lg-3 col-md-6 special-grid top-new mb-2">
                    <div class="products-single fix  bg-white  rounded-lg " style="height: 430px;">

                            <div class="box-img-hover h-2/3" >
                                <img src="{{asset('/images/'.$topNew->url_image)}}" class="img-fluid" alt="Image">
                                <div class="mask-icon flex">
                                    <ul>
                                        <li><a  class="cartt w-1/2" href="{{url('/product-detail?id='.$topNew->id)}}" data-toggle="tooltip" data-placement="right" >{{trans('Xem ngay')}}</a></li>
                                    </ul>
                                    <a class="cart w-1/2" href="{{ url('/add-to-cart?product_id='.$topNew->id.'&quantity=1') }}" >{{trans('Thêm vào giỏ')}}</a>
                                </div>
                            </div>

                            <div class="why-text mt-3 mb-4 ml-3 h-1/3">
                                <h4>
                                    <a href="{{url('/product-detail?id='.$topNew->id)}}">{{ Illuminate\Support\Str::limit($topNew->name, 25) }}</a>
                                </h4>
                                @if($topNew->promotion_price != null)
                                <div>
                                    <h5 style="float: left;padding-right: 10px;">{{$topNew->promotion_price}}VNĐ </h5>
                                    <h5 class="text-secondary"> <strike>{{$topNew->price}}VNĐ</strike></h5>
                                </div>
                                @else
                                <h5>{{$topNew->price}}VNĐ</h5>
                                @endif
                            </div>
                    </div>
                </div>
                @endforeach

                <!--Top Sales product-->
                @foreach($topSales as $key => $topSale)
                <div class="col-lg-3 col-md-6 special-grid top-sale  mb-2">
                    <div class="products-single fix  bg-white  rounded-lg" style="height: 430px;">

                            <div class="box-img-hover h-2/3">
                                <img src="{{asset('/images/'.$topSale->url_image)}}" class="img-fluid" alt="Image">
                                <div class="mask-icon ">
                                    <ul>
                                        <li><a class="cartt w-1/2" href="{{url('/product-detail?id='.$topSale->id)}}" data-toggle="tooltip" data-placement="right">{{trans('Xem ngay')}}</a></li>
                                    </ul>
                                    <a class="cart w-1/2" href="{{ url('/add-to-cart?product_id='.$topSale->id.'&quantity=1') }}" >{{trans('Thêm vào giỏ')}}</a>
                                </div>
                            </div>

                        <div class="why-text mt-3 mb-4 ml-3 h-1/3">
                            <h4 >
                                <a class=" hover:text-blue-500" href="{{url('/product-detail?id='.$topSale->id)}}">{{ Illuminate\Support\Str::limit($topSale->name, 25) }}</a>
                            </h4>
                            @if($topSale->promotion_price != null)
                            <div>
                                <h5 style="float: left;padding-right: 10px;">{{$topSale->promotion_price}} VNĐ</h5>
                                <h5 class="text-secondary"> <strike>{{$topSale->price}}VNĐ</strike></h5>
                            </div>
                            @else
                            <h5>{{$topSale->price}}VNĐ</h5>
                            @endif
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
    <!-- End Products  -->






    </div>

    </div>
</body>
@endsection
