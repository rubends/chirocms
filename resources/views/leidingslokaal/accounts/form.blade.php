@extends('layouts.leidingslokaal')

@section('title', $user->exists ? 'Wijzig '.$user->name : 'Create New User')

@section('content')
    {!! Form::model($user, [
        'method' => $user->exists ? 'put' : 'post',
        'route' => ['leidingslokaal.accounts.update', $user->id]
    ]) !!}

    <div class="form-group">
        {!! Form::label('Volledige naam') !!}
        {!! Form::text('name', null, ['class' => 'form-control']) !!}
    </div>

    <div class="form-group">
        {!! Form::label('email') !!}
        {!! Form::text('email', null, ['class' => 'form-control']) !!}
    </div>

    <div class="form-group">
        {!! Form::label('Gsmnummer') !!}
        {!! Form::text('gsm', $user->gsm, ['class' => 'form-control']) !!}
    </div>
    <p>Passwoord invullen of vernieuwen:</p>
    <div class="form-group">
        {!! Form::label('password') !!}
        {!! Form::password('password', ['class' => 'form-control']) !!}
    </div>

    <div class="form-group">
        {!! Form::label('password_confirmation') !!}
        {!! Form::password('password_confirmation', ['class' => 'form-control']) !!}
    </div>

    {!! Form::submit($user->exists ? 'Opslaan' : 'Create New User', ['class' => 'btn btn-primary']) !!}

    {!! Form::close() !!}
@endsection