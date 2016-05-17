@extends('layouts.backend')

@section('title', 'Delete '.$user->name)

@section('content')
    {!! Form::open(['method' => 'delete', 'route' => ['backend.users.destroy', $user->id]]) !!}
        <div class="alert alert-danger">
            <strong>Opgelet!</strong> Je gaat deze gebruiker verwwijderen. Dit kan niet ongedaan worden. Ben je er zeker van?
        </div>

        {!! Form::submit('Ja, verwijder deze gebruiker!', ['class' => 'btn btn-danger']) !!}

        <a href="{{ route('backend.users.index') }}" class="btn btn-success">
            <strong>Nee, ga terug!</strong>
        </a>
    {!! Form::close() !!}
@endsection