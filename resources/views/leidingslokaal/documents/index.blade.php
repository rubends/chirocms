@extends('layouts.leidingslokaal')

@section('title', 'Documenten')

@section('content')
<a href="{{ route('leidingslokaal.documents.create') }}" class="btn btn-primary">Document toevoegen</a>

    <h4>Draaiboeken</h4>
    <table class="table table-hover">
        <thead>
            <tr>
                <th>Titel</th>
                <th>extra info</th>
                <th>Datum</th>
                <th>Geüpload door</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
            @foreach($draaiboeken as $document)
                <tr>
                    <td><a href="../documents/{{$document->document}}" target="_blank">{{ $document->title }}</a></td>
                    <td>{{ $document->info }}</td>
                    <td>{{ $document->updated_at }}</td>
                    <td>{{ $document->posted_by }}</td>
                    <td>
                        <a href="{{ route('leidingslokaal.documents.edit', $document->id) }}">
                            <span class="glyphicon glyphicon-edit"></span>
                        </a>
                    </td>
                    <td>
                        <a href="{{ route('leidingslokaal.documents.confirm', $document->id) }}">
                            <span class="glyphicon glyphicon-remove"></span>
                        </a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
    <h4>Brieven</h4>
    <table class="table table-hover">
        <thead>
            <tr>
                <th>Titel</th>
                <th>extra info</th>
                <th>Datum</th>
                <th>Geüpload door</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
            @foreach($brieven as $document)
                <tr>
                    <td><a href="../documents/{{$document->document}}" target="_blank">{{ $document->title }}</a></td>
                    <td>{{ $document->info }}</td>
                    <td>{{ $document->updated_at }}</td>
                    <td>{{ $document->posted_by }}</td>
                    <td>
                        <a href="{{ route('leidingslokaal.documents.edit', $document->id) }}">
                            <span class="glyphicon glyphicon-edit"></span>
                        </a>
                    </td>
                    <td>
                        <a href="{{ route('leidingslokaal.documents.confirm', $document->id) }}">
                            <span class="glyphicon glyphicon-remove"></span>
                        </a>
                    </td>

                </tr>
            @endforeach
        </tbody>
    </table>
    <h4>Ledenlijsten</h4>
    <table class="table table-hover">
        <thead>
            <tr>
                <th>Titel</th>
                <th>extra info</th>
                <th>Datum</th>
                <th>Geüpload door</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
            @foreach($ledenlijsten as $document)
                <tr>
                    <td><a href="../documents/{{$document->document}}" target="_blank">{{ $document->title }}</a></td>
                    <td>{{ $document->info }}</td>
                    <td>{{ $document->updated_at }}</td>
                    <td>{{ $document->posted_by }}</td>
                    <td>
                        <a href="{{ route('leidingslokaal.documents.edit', $document->id) }}">
                            <span class="glyphicon glyphicon-edit"></span>
                        </a>
                    </td>
                    <td>
                        <a href="{{ route('leidingslokaal.documents.confirm', $document->id) }}">
                            <span class="glyphicon glyphicon-remove"></span>
                        </a>
                    </td>

                </tr>
            @endforeach
        </tbody>
    </table>

    <h4>Kamp</h4>
    <table class="table table-hover">
        <thead>
            <tr>
                <th>Titel</th>
                <th>extra info</th>
                <th>Datum</th>
                <th>Geüpload door</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
            @foreach($kampen as $document)
                <tr>
                    <td><a href="../documents/{{$document->document}}" target="_blank">{{ $document->title }}</a></td>
                    <td>{{ $document->info }}</td>
                    <td>{{ $document->updated_at }}</td>
                    <td>{{ $document->posted_by }}</td>
                    <td>
                        <a href="{{ route('leidingslokaal.documents.edit', $document->id) }}">
                            <span class="glyphicon glyphicon-edit"></span>
                        </a>
                    </td>
                    <td>
                        <a href="{{ route('leidingslokaal.documents.confirm', $document->id) }}">
                            <span class="glyphicon glyphicon-remove"></span>
                        </a>
                    </td>

                </tr>
            @endforeach
        </tbody>
    </table>

    <h4>Info</h4>
    <table class="table table-hover">
        <thead>
            <tr>
                <th>Titel</th>
                <th>extra info</th>
                <th>Datum</th>
                <th>Geüpload door</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
            @foreach($infos as $document)
                <tr>
                    <td><a href="../documents/{{$document->document}}" target="_blank">{{ $document->title }}</a></td>
                    <td>{{ $document->info }}</td>
                    <td>{{ $document->updated_at }}</td>
                    <td>{{ $document->posted_by }}</td>
                    <td>
                        <a href="{{ route('leidingslokaal.documents.edit', $document->id) }}">
                            <span class="glyphicon glyphicon-edit"></span>
                        </a>
                    </td>
                    <td>
                        <a href="{{ route('leidingslokaal.documents.confirm', $document->id) }}">
                            <span class="glyphicon glyphicon-remove"></span>
                        </a>
                    </td>

                </tr>
            @endforeach
        </tbody>
    </table>

    <h4>Random</h4>
    <table class="table table-hover">
        <thead>
            <tr>
                <th>Titel</th>
                <th>extra info</th>
                <th>Datum</th>
                <th>Geüpload door</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
            @foreach($resten as $document)
                <tr>
                    <td><a href="../documents/{{$document->document}}" target="_blank">{{ $document->title }}</a></td>
                    <td>{{ $document->info }}</td>
                    <td>{{ $document->updated_at }}</td>
                    <td>{{ $document->posted_by }}</td>
                    <td>
                        <a href="{{ route('leidingslokaal.documents.edit', $document->id) }}">
                            <span class="glyphicon glyphicon-edit"></span>
                        </a>
                    </td>
                    <td>
                        <a href="{{ route('leidingslokaal.documents.confirm', $document->id) }}">
                            <span class="glyphicon glyphicon-remove"></span>
                        </a>
                    </td>

                </tr>
            @endforeach
        </tbody>
    </table>

@endsection