@extends('layouts.leidingslokaal')

@section('title', 'Delete '.$document->title)

@section('content')
    {!! Form::open(['method' => 'delete', 'route' => ['leidingslokaal.documents.destroy', $document->id]]) !!}
        <div class="alert alert-danger">
            <strong>Warning!</strong> You are about to delete a document. This action cannot be undone. Are you sure you want to continue?
        </div>

        {!! Form::submit('Yes, delete this document!', ['class' => 'btn btn-danger']) !!}

        <a href="{{ route('leidingslokaal.documents.index') }}" class="btn btn-success">
            <strong>No, go back!</strong>
        </a>
    {!! Form::close() !!}
@endsection