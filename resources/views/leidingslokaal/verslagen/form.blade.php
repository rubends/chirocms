@extends('layouts.leidingslokaal')

@section('title', $verslag->exists ? 'Editing '.$verslag->name : 'Nieuw verslag aanmaken')

@section('content')
    {!! Form::model($verslag, [
        'method' => $verslag->exists ? 'put' : 'post',
        'route' => $verslag->exists ? ['leidingslokaal.verslagen.update', $verslag->id] : ['leidingslokaal.verslagen.store'],
        'files' => true
    ]) !!}

    <div class="form-group">
        {!! Form::label('Uw naam') !!}
        {!! Form::text('poster', $admin->name, ['class' => 'form-control']) !!}
    </div>

    <div class="form-group">
        {!! Form::label('Titel verslag') !!}
        {!! Form::text('name', null, ['class' => 'form-control']) !!}
    </div>

    <div class="form-group">
        {!! Form::label('info') !!}
        {!! Form::textarea('info', null, ['class' => 'form-control']) !!}
    </div>

    <div class="form-group">
        {!! Form::label('verslag') !!}
        {!! Form::file('verslag', ['class' => 'form-control']) !!}
    </div>

    {!! Form::submit($verslag->exists ? 'Save Verslag' : 'Nieuw verslag maken', ['class' => 'btn btn-primary']) !!}
    <a href="{{ route('leidingslokaal.verslagen.index') }}" class="">of ga terug naar alle verslagen.</a>

    {!! Form::close() !!}
@endsection