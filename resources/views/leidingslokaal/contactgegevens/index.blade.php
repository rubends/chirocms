@extends('layouts.leidingslokaal')

@section('title', 'Contactgegevens')

@section('content')
    <h4>Admins</h4>
    <table class="table table-hover">
        <thead>
            <tr>
                <th>Naam</th>
                <th>E-mail</th>
                <th>Gsmnummer</th>
            </tr>
        </thead>
        <tbody>
            @foreach($admins as $user)
                <tr>
                    <td>{{ $user->name }}</td>
                    <td>{{ $user->email }}</td>
                    <td>{{ $user->gsm }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>

    <h4>Leiding</h4>
    <table class="table table-hover">
        <thead>
            <tr>
                <th>Naam</th>
                <th>E-mail</th>
                <th>Gsmnummer</th>
            </tr>
        </thead>
        <tbody>
            @foreach($leiding as $user)
                <tr>
                    <td>{{ $user->name }}</td>
                    <td>{{ $user->email }}</td>
                    <td>{{ $user->gsm }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>

    <h4>Vriendekring</h4>
    <table class="table table-hover">
        <thead>
            <tr>
                <th>Naam</th>
                <th>E-mail</th>
                <th>Gsmnummer</th>
            </tr>
        </thead>
        <tbody>
            @foreach($vriendekring as $user)
                <tr>
                    <td>{{ $user->name }}</td>
                    <td>{{ $user->email }}</td>
                    <td>{{ $user->gsm }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>

    <h4>Oudleiding</h4>
    <table class="table table-hover">
        <thead>
            <tr>
                <th>Naam</th>
                <th>E-mail</th>
                <th>Gsmnummer</th>
            </tr>
        </thead>
        <tbody>
            @foreach($oudleiding as $user)
                <tr>
                    <td>{{ $user->name }}</td>
                    <td>{{ $user->email }}</td>
                    <td>{{ $user->gsm }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>

@endsection