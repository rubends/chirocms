@extends('layouts.backend')

@section('title', 'Delete '.$album->title)

@section('content')
    {!! Form::open(['method' => 'delete', 'route' => ['backend.albums.destroy', $album->id]]) !!}
        <div class="alert alert-danger">
            <strong>Warning!</strong> You are about to delete an album. This action cannot be undone. Are you sure you want to continue?
        </div>

        {!! Form::submit('Yes, delete this album!', ['class' => 'btn btn-danger']) !!}

        <a href="{{ route('backend.albums.index') }}" class="btn btn-success">
            <strong>No, go back!</strong>
        </a>
    {!! Form::close() !!}
@endsection