@extends('layouts.backend')

@section('title', 'Albums')

@section('content')
    <a href="{{ route('backend.albums.create') }}" class="btn btn-primary">Create New Album</a>
    <table class="table table-hover">
        <thead>
            <tr>
                <td>Title</td>
                <td>Edit</td>
                <td>Delete</td>
            </tr>
        </thead>
        <tbody>
            @if($albums->isEmpty())
                <tr>
                    <td colspan="6" align="center">There are no albums.</td>
                </tr>
            @else
                @foreach($albums as $album)
                    <tr>
                        <td>
                            {!! link_to(route('backend.albums.edit', $album->id), $album->title) !!}
                        </td>
                        <td>
                            <a href="{{ route('backend.albums.edit', $album->id) }}">
                                <span class="glyphicon glyphicon-edit"></span>
                            </a>
                        </td>
                        <td>
                            <a href="{{ route('backend.albums.confirm', $album->id) }}">
                                <span class="glyphicon glyphicon-remove"></span>
                            </a>
                        </td>
                    </tr>
                @endforeach
            @endif
        </tbody>
    </table>
@endsection