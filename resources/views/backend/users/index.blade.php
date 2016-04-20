@extends('layouts.backend')

@section('title', 'Users')

@section('content')
    <a href="{{ route('backend.users.create') }}" class="btn btn-primary">Create New User</a>

    <table class="table table-hover">
        <thead>
            <tr>
                <th>Name</th>
                <th>E-mail</th>
                <th>Gsmnummer</th>
                <th>Type</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
            @foreach($users as $user)
                <tr>
                    <td>
                        <a href="{{ route('backend.users.edit', $user->id) }}">{{ $user->name }}</a>
                    </td>
                    <td>{{ $user->email }}</td>
                    <td>{{ $user->gsm }}</td>
                    <td>
                        @if ($user->type === 0)
                            onbekend
                        @elseif ($user->type === 1) 
                            leiding
                        @elseif ($user->type === 2) 
                            oudleiding
                        @elseif ($user->type === 3) 
                            admin
                        @endif
                    </td>
                    <td>
                        <a href="{{ route('backend.users.edit', $user->id) }}">
                            <span class="glyphicon glyphicon-edit"></span>
                        </a>
                    </td>
                    <td>
                        <a href="{{ route('backend.users.confirm', $user->id) }}">
                            <span class="glyphicon glyphicon-remove"></span>
                        </a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>

    {!! $users->render() !!}
@endsection