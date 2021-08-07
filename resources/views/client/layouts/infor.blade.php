@extends('client.shared.master')
@section('content')
<link href="https://cdn.jsdelivr.net/npm/tailwindcss/dist/tailwind.min.css" rel="stylesheet">
<div class="content_yield">
	@if (session('thanhcong'))
    <div class="alert alert-success">
        {{ session('thanhcong') }}
    </div>
	@endif
	{{ Form::open(['route'=>['reset.password',$user->id],'method'=>'put','class' => 'col-md-12 row']) }}
	<div class="col-md-6 mx-auto my-20">
		<h3 class="mb-5 font-weight-bold text-3xl" style="text-align: center;">User information</h3>
		<div class="col-lg-10 col-md-12 col-sm-12">
			<div class="form-group" style="margin: auto;">
				{{ Form::label('Name: ','',['class' => 'font-weight-bold']) }}
				{!! Form::text('name', $user->name, [
					'class' => 'form-control',
					'placeholder'=>"Tên người dùng"
				])
				!!}
				<span class="text-danger">{{ $errors->first('name')}}</span>
			</div>
			<div class="form-group" style="margin: auto; margin-top:20px">
				{{ Form::label('Password: ','',['class' => 'font-weight-bold']) }}
				{!! Form::text('password', '', [
					'class' => 'form-control',
					'placeholder'=>"Password"
				])
				!!}
				<span class="text-danger">{{ $errors->first('password')}}</span>
			</div>

			<div class="form-group text-right" style="margin-left: 20px;margin-top: 10px;">
				{{ Form::submit('Lưu',['class' => 'font-weight-bold text-white btn bg-blue-400 mt-4 hover:bg-blue-600']) }}
			</div>
		</div>
	</div>
	{{ Form::close() }}
</div>
@endsection
