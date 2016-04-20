@extends('layouts.leidingslokaal')

@section('title', 'Digitaal leidingslokaal')

@section('content')
    <div class="row">
        <div class="col-md-6">
            <ul class="list-group">
                @foreach($users as $user)
                    <li class="list-group-item">
                        <h4>{{ $user->name }}</h4>

                        Laatste login {{ $user->last_login_difference }}
                    </li>
                @endforeach
            </ul>
        </div>
    </div>
@endsection