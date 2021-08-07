@extends('client.shared.master')
@section('content')

<body>
<link href="https://cdn.jsdelivr.net/npm/tailwindcss/dist/tailwind.min.css" rel="stylesheet">



        <!-- new product page -->

        <div class="shop-box-inner m-auto bg-gray-100">
        <div class="container w-10/12 flex">



            <div class="w-1/4 ">

                <div class=" rounded-xl p-4 bg-white">



                    <div class="filter-sidebar-left">
                        <div class="title-left">
                            <h3>{{trans('message.cate')}}</h3>
                        </div>
                        <div class="list-group list-group-collapse list-group-sm list-group-tree" id="list-group-men" data-children=".sub-men">
                            @foreach($categories as $key => $item)
                            <a href="{{url('product-all?category_id='.$item->id)}}" class="list-group-item list-group-item-action">{{$item->name}}</a>
                            @endforeach
                        </div>
                    </div>

                    <div class="filter-brand-left mt-2">
                        <div class="title-left">
                            <h3>{{trans('message.brand')}}</h3>
                        </div>
                        <div class="brand-box">
                            @foreach($brands as $key => $item)
                            <a href="{{url('product-all?brand_id='.$item->id)}}" class="list-group-item list-group-item-action">{{$item->name}}</a>
                            @endforeach
                        </div>
                    </div>


                </div>

            </div>



            <div class="w-3/4 pl-10 ">

                                <div class="search-product bg-transparent">
                                    <form action="{{url('product-all')}}" method="GET">
                                        <input class="form-control" value="{{old('keyword')}}" name="keyword" placeholder="{{trans('message.Search')}}..." type="text">
                                        <button type="submit bg-transparent"> <!--<i class="fa fa-search"></i>--> </button>
                                    </form>
                                </div>


                            <div class="right-product-box ">
                                <div class="row product-categorie-box">
                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane fade show active" id="grid-view">


                                            <div class="row">
                                                @foreach($products as $key => $item)
                                                <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                                    <div class="products-single fix bg-white  rounded-lg">

                                                            <div class="box-img-hover">
                                                                <img src="{{asset('images/'.$item->url_image)}}" class="w-full img-fluid"  alt="Image">
                                                                <div class="mask-icon">
                                                                    <ul>
                                                                        <li><a class="cartt w-1/2" href="{{url('/product-detail?id='.$item->id)}}" data-toggle="tooltip" data-placement="right" >{{trans('Xem ngay')}}</a></li>
                                                                    </ul>
                                                                    <a class="cart w-1/2" href="{{ url('/add-to-cart?product_id='.$item->id.'&quantity=1') }}">{{trans('Thêm vào giỏ')}}</a>
                                                                </div>
                                                            </div>

                                                            <div class="why-text p-2 mb-8 mt-2 ml-3">
                                                                <h4>{{Illuminate\Support\Str::limit($item->name, 28)}}</h4>
                                                                @if($item->promotion_price != null)
                                                                <div>
                                                                    <p style="float: left;padding-right: 15px;">{{$item->promotion_price}} &nbsp;VNĐ</p>
                                                                    <p class="text-secondary"><strike>{{$item->price}} &nbsp;VNĐ</strike></p>
                                                                </div>
                                                                @else
                                                                <h5>{{$item->price}} &nbsp;VNĐ</h5>
                                                                @endif
                                                            </div>

                                                    </div>
                                                </div>
                                                @endforeach
                                            </div>


                                        </div>
                                    </div>
                                </div>
                            </div>

            </div>



        </div>
        </div>

        <!-- end product page -->


            @endsection
