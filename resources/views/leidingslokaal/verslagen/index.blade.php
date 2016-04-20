@extends('layouts.leidingslokaal')

@section('title', 'LK verslagen')

@section('content')
<a href="{{ route('leidingslokaal.verslagen.create') }}" class="btn btn-primary">Verslag toevoegen</a>

    <table class="table table-hover">
        <thead>
            <tr>
                <th>Titel</th>
                <th>Datum</th>
                <th>Geüpload door</th>
                <th>extra info</th>
            </tr>
        </thead>
        <tbody>
            @foreach($verslagen->reverse() as $verslag)
                <tr>
                    <td>
                        <a href="../verslagen/{{$verslag->verslag}}">{{ $verslag->name }}</a>
                    </td>
                    <td>{{ $verslag->created_at }}</td>
                    <td>{{ $verslag->poster }}</td>
                    <td>{{ $verslag->info }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>

    {!! $verslagen->render() !!}
@endsection