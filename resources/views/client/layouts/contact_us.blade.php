@extends('client.shared.master')
@section('content')

<link href="https://cdn.jsdelivr.net/npm/tailwindcss/dist/tailwind.min.css" rel="stylesheet">


    <!-- new -->
    <div class="bnew w-10/12 mx-auto my-20 rounded-lg p-16 flex">
        <div class="w-1/2 ml-10">
            <div class="font-bold text-3xl blogoof">GET A QUOTE</div>
            <div class="text-white mt-2 mb-10">Fill up the form and our team will get back to you within 24 hour</div>
            <div class="text-white mb-4"><i class="fas fa-phone-square"></i>&nbsp; +(84)965 799 683 </div>
            <div class="text-white mb-4"><i class="fas fa-envelope"></i>&nbsp; vuthithanhbinh99@gmail.com </div>
            <div class="text-white mb-4"><i class="fas fa-map-marker-alt"></i>&nbsp;&nbsp; 235 Hoàng Quốc Việt, Hà Nội </div>
            <div class="text-white bbox">
                <a href="#" ><i class="fab fa-facebook" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                <a href="#"><i class="fab fa-pinterest-p" aria-hidden="true"></i></a>
            </div>
        </div>
        <form class="w-1/2 " id="contactForm" method="post" action="{{ route('sendcontact')}}">
            @csrf
            <div>
                <div class="form-group">
                    <div class="bcontact text-white mb-2 font-semibold">Your name</div>
                    <input type="text" class="form-control" id="name" name="name" required data-error="Please enter your name">
                    <div class="help-block with-errors"></div>
                </div>

                <div class="form-group">
                    <div class="bcontact text-white mb-2 font-semibold">Mail</div>
                    <input type="email" id="email" class="form-control" name="email" required data-error="Please enter your email">
                    <div class="help-block with-errors"></div>
                </div>

                <div class="form-group">
                    <div class="bcontact text-white mb-2 font-semibold">Message</div>
                    <textarea class="form-control" id="message" name="mess" rows="4" data-error="Write your message" required></textarea>
                    <div class="help-block with-errors"></div>
                </div>
                @if(Session::has('flash_message'))
                        <strong>{{ Session::get('flash_message') }}</strong>
                @endif
                <div class="submit-button text-center">
                    <button class="btn hvr-hover" id="submit" type="submit">Gửi</button>
                    <div id="msgSubmit" class="h3 text-center hidden"></div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </form>
    </div>
    <!-- end -->

@endsection
