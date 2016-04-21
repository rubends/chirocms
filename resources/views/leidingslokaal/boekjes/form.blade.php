@extends('layouts.leidingslokaal')

@section('title', 'Boekje updaten')

@section('content')
    {!! Form::open(array('route'=>['leidingslokaal.boekje.store'],'method'=>'POST', 'files'=>true)) !!}

    <div class="form-group">
        {!! Form::label('groep') !!}
        {!! Form::select('groep', array('wemel' => 'Wemels', 'ribbel' => 'Ribbels', 'speelclub' => 'Speelclub', 'mazzel' => 'Mazzels', 'lira' => 'Lira', 'dora' => 'Dora', 'tito' => 'Tito', 'keti' => 'Keti', 'aspi' => 'Aspi'), null, ['class' => 'form-control']) !!}
    </div>

    <div class="form-group">
        {!! Form::label('boekje') !!}
        {!! Form::file('boekje', ['class' => 'form-control']) !!}
    </div>
    {!! Form::submit('Boekje updaten', ['class' => 'btn btn-primary']) !!}
    <a href="{{ route('leidingslokaal.boekje.index') }}" class="">of ga terug naar boekjes.</a>

    {!! Form::close() !!}
@endsection