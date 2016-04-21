@extends('layouts.leidingslokaal')

@section('title', $document->exists ? 'Editing '.$document->name : 'Nieuw document aanmaken')

@section('content')
    {!! Form::model($document, [
        'method' => $document->exists ? 'put' : 'post',
        'route' => $document->exists ? ['leidingslokaal.documents.update', $document->id] : ['leidingslokaal.documents.store'],
        'files' => true
    ]) !!}

    <div class="form-group">
        {!! Form::label('Uw naam') !!}
        {!! Form::text('posted_by', $admin->name, ['class' => 'form-control', 'readonly']) !!}
    </div>

    <div class="form-group">
        {!! Form::label('Titel document') !!}
        {!! Form::text('title', null, ['class' => 'form-control']) !!}
    </div>

    <div class="form-group">
        {!! Form::label('info') !!}
        {!! Form::textarea('info', null, ['class' => 'form-control']) !!}
    </div>

    <div class="form-group">
        {!! Form::label('type') !!}
        {!! Form::select('type', array('draaiboek' => 'Draaiboek', 'brief' => 'Brief', 'kamp' => 'Kamp', 'ledenlijst' => 'Ledenlijst', 'info' => 'Info', 'rest' => 'Nog iets anders'), $document->type, ['class' => 'form-control']) !!}
    </div>

    <div class="form-group">
        {!! Form::label('document') !!}
        {!! Form::file('document', ['class' => 'form-control']) !!}
    </div>

    {!! Form::submit($document->exists ? 'Document opslaan' : 'Nieuw document maken', ['class' => 'btn btn-primary']) !!}
    <a href="{{ route('leidingslokaal.documents.index') }}" class="">of ga terug naar alle documenten.</a>

    {!! Form::close() !!}
@endsection