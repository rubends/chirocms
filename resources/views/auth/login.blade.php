@extends('layouts.auth')

@section('title', 'Login')

@section('heading', 'Het leidingslokaal is enkel voor de leiding.')

@section('content')
    {!! Form::open() !!}

    <div class="form-group">
        {!! Form::label('email') !!}
        {!! Form::text('email', null, ['class' => 'form-control']) !!}
    </div>

    <div class="form-group">
        {!! Form::label('password') !!}
        {!! Form::password('password', ['class' => 'form-control']) !!}
    </div>

    <div class="form-group">
        {!! Form::submit('Login', ['class' => 'btn btn-primary']) !!}

        <a href="{{ route('auth.password.email') }}" class="small">Forgot password?</a>
    </div>

    <a class="btn btn-default btn-block" href="/">Terug naar de site</a>

    {!! Form::close() !!}
@endsection