@extends('client.shared.master')
@section('content')

<link href="https://cdn.jsdelivr.net/npm/tailwindcss/dist/tailwind.min.css" rel="stylesheet">



<div class="cart-box-main">
    <div class="container">
<!-- new checkout -->
    <div class="w-10/12 mx-auto flex  mb-10 pl-20">
    <form class="row wuc-ph" action="{{url('payment')}}" method="get" >
            <div class="w-1/2 p-12">

                <div class="font-bold text-3xl text-black mb-6">Payment</div>

                <div class="update-box">
                    <input type="radio" name="payment_method" id="cod" value="1" checked />
                    <label for="cod">{{trans('message.Cash')}}</label>
                </div>

                <div>
                    <div>Full name</div>
                    {{-- <div class="ml-auto ">{{$customer->full_name}}</div>--}}
                        @if($customer->full_name)
                            <input class="ml-auto text-left form-control h-50" disabled name="full_name" value="{{$customer->full_name}}">

                        @else
                            <input class="ml-auto text-left form-control h-50" required name="full_name" value="{{$customer->full_name}}">

                        @endif
                </div>

                <div class="flex">
                    <div class="pr-2 w-1/3">
                        <div>Phone Number</div>
                        {{-- <div class="ml-auto "> {{$customer->phone_no}} </div>--}}
                        @if($customer->phone_no)
                            <input class="ml-auto text-left form-control h-50" disabled name="phone_no" value="{{$customer->phone_no}}">
                        @else
                            <input class="ml-auto text-left form-control h-50" required name="phone_no" value="{{$customer->phone_no}}">
                        @endif
                    </div>

                    <div class="w-2/3">
                        <div>Email</div>
                        {{--<div class="ml-auto "> {{$customer->email}} </div>--}}
                            @if($customer->email)
                                <input class="ml-auto text-left form-control h-50" disabled name="email" value="{{$customer->email}}">
                            @else
                                <input class="ml-auto text-left form-control h-50" required name="email" value="{{$customer->email}}">
                            @endif
                    </div>
                </div>

                <div>
                    <div>Address</div>
                    {{-- <div class="ml-auto "> {{$customer->address}} </div> --}}
                        @if($customer->address)
                            <input class="ml-auto text-left form-control h-50" disabled name="address" value="{{$customer->address}}">
                        @else
                            <input class="ml-auto text-left form-control h-50" required name="address" value="{{$customer->address}}">
                        @endif
                </div>

                <div class="col-12 shopping-box mt-10">
                    <button type="submit" class="btn btn-success" style="float: right;">{{trans('message.Pay')}}</button>
                </div>

            </div>

            <div class="w-1/2 p-8 rounded-md bg-blue-900 text-white">

                <table class="table">
                        <thead>
                        <tr>
                            <th>Images</th>
                            <th>Product Name</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Total</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php $totalAmount = 0 ?>
                        @if(session('cart'))
                            @foreach(session('cart') as $key => $item)
                                <input type="hidden" name="product_id[]" value="{{$item['id']}}">
                                <input type="hidden" name="quantity[]" value="{{$item['quantity']}}">
                                <input type="hidden" name="price[]" value="{{$item['price']}}">
                                <p style="display: none">{{$totalAmount += $item['quantity'] * $item['price']}}</p>
                                <input type="hidden" name="total_amount" value="{{$totalAmount}}">
                                <tr>
                                    <td class="thumbnail-img">
                                        <a href="#">
                                            <img class="img-fluid" src="{{asset('images/'.$item['image'])}}" width="80" />
                                        </a>
                                    </td>
                                    <td class="name-pr text-white text-base">
                                        <a href="#">{{$item['name']}}</a>
                                    </td>
                                    <td class="price-pr">
                                        <p>{{$item['price']}}&nbsp;VNĐ</p>
                                    </td>
                                    <td class="quantity-box">
                                        <p>{{$item['quantity']}}</p>
                                    </td>
                                    <td class="total-pr">
                                        <p>{{$item['price'] * $item['quantity']}}&nbsp;VNĐ</p>
                                    </td>
                                </tr>
                            @endforeach
                            @else
                                <tr>
                                    <td colspan="6">
                                        <p class="text-danger text-center">{{trans('message.Cart is empty')}}</p>
                                    </td>
                                </tr>
                            @endif
                        </tbody>
                        <tfoot>
                            <tr>
                                <td colspan="4" class="text-right font-weight-bold">{{trans('message.Total amount')}}</td>
                                <td colspan="1" >{{$totalAmount ?? 0}}&nbsp;VNĐ</td>
                            </tr>
                        </tfoot>
                    </table>

            </div>
        </form>
    </div>
<!-- end checkout -->
    </div>
</div>

@endsection
