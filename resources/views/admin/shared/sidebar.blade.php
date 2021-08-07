
    <ul class="sidebar" >
        <!-- Dash board -->
        <!--<div class="dash_board">
             <div class="dash_board_ava">
                <img src="{{ asset('images/sunflower.png') }}" alt="#">
            </div>
            <a class="blogoof" href="{{ url('admin/dashboard') }}"> PHARMACY</a>
        </div>-->
        <!-- Manage list -->
        <li class="list_item ">
            <a class=" blogooff" data-toggle="tooltip" data-placement="right" title="{{trans('User')}}" href="{{ route('user.index') }}"><i class="fas fa-user-circle"></i></a>
        </li>

        <li class="list_item">
            <a class=" blogooff" title="{{trans('Roles')}}" href="{{ route('role.index') }}"><i class="fas fa-tasks"></i></a>
        </li>
        <li class="list_item">
            <a class=" blogooff" title="{{trans('Customers')}}"  href="{{ route('customer.index') }}"><i class="fas fa-user-friends"></i></a>
        </li>
        <!-- <li class="list_item">
            <a class=" blogooff" title="{{trans('Slide')}}" href="{{ route('slide.index') }}"><i class="fas fa-desktop"></i></a>
        </li> -->
        <li class="list_item">
            <a class=" blogooff" title="{{trans('Brand')}}" href="{{ route('brand.index') }}"><i class="fas fa-tags"></i></a>
        </li>
        <li class="list_item">
            <a class=" blogooff" title="{{trans('Category')}}" href="{{ route('category.index') }}"><i class="fas fa-map-signs"></i></a>
        </li>
        <li class="list_item">
            <a class=" blogooff" title="{{trans('Product')}}" href="{{ route('product.index') }}"><i class="fas fa-capsules"></i></a>
        </li>
        <li class="list_item">
            <a class=" blogooff" title="{{trans('Order')}}" href="{{ route('order.index') }}"><i class="fas fa-file-invoice-dollar"></i></a>
        </li>
    </ul>

