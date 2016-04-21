@extends('layouts.leidingslokaal')

@section('title', 'Programmaboekje')

@section('content')
<a href="{{ route('leidingslokaal.boekje.create') }}" class="btn btn-primary">Boekje updaten</a>

    <table class="table table-hover">
        <thead>
            <tr>
                <th>Boekje</th>
            </tr>
        </thead>
        <tbody>
                <tr>
                    <td>
                        <a href="../programmaboekje/wemel.pdf" target="_blank">Wemels</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="../programmaboekje/ribbel.pdf" target="_blank">Ribbels</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="../programmaboekje/speelclub.pdf" target="_blank">Speelclub</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="../programmaboekje/mazzel.pdf" target="_blank">Mazzels</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="../programmaboekje/lira.pdf" target="_blank">Lira's</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="../programmaboekje/dora.pdf" target="_blank">Dora's</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="../programmaboekje/tito.pdf" target="_blank">Tito's</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="../programmaboekje/keti.pdf" target="_blank">Keti's</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="../programmaboekje/aspi.pdf" target="_blank">Aspi's</a>
                    </td>
                </tr>
        </tbody>
    </table>

@endsection