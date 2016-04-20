@extends('layouts.leidingslokaal')

@section('title', 'Delete '.$verslag->name)

@section('content')
    {!! Form::open(['method' => 'delete', 'route' => ['leidingslokaal.verslagen.destroy', $verslag->id]]) !!}
        <div class="alert alert-danger">
            <strong>Warning!</strong> You are about to delete a verslagske. This action cannot be undone. Are you sure you want to continue?
        </div>

        {!! Form::submit('Yes, delete this verslagske!', ['class' => 'btn btn-danger']) !!}

        <a href="{{ route('leidingslokaal.verslagen.index') }}" class="btn btn-success">
            <strong>No, go back!</strong>
        </a>
    {!! Form::close() !!}
@endsection