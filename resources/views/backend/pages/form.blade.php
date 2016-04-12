@extends('layouts.backend')

@section('title', $page->exists ? 'Editing '.$page->title : 'Create New Page')

@section('content')
    {!! Form::model($page, [
        'method' => $page->exists ? 'put' : 'post',
        'route' => $page->exists ? ['backend.pages.update', $page->id] : ['backend.pages.store']
    ]) !!}

    <div class="row">
        <div class="col-md-12">
            <ul class="nav nav-tabs locale">
                @include('partials.locale')
            </ul>
            <div class="alert alert-info" role="alert">
                <p><strong>Tip:</strong> Flags indicate field available in different languages. Fill in all information first, then save and switch to a different language to change the localisation fields.</p>
                <p><strong>Warning:</strong> When changing languages, all unchanged changes will be lost.</p>
                <p><strong>Warning:</strong> Do not change the language on the front-end when editing pages. This will interfere with the page editor.</p>
            </div>
        </div>
    </div>

    <div class="form-group">
        <img class="flag" src="{{ theme('images/flags/' . session('app.language_locale') . '.png') }}">
        {!! Form::label('title') !!}
        {!! Form::text('title', null, ['class' => 'form-control']) !!}
    </div>

    <div class="form-group">
        {!! Form::label('uri', 'URI') !!}
        {!! Form::text('uri', null, ['class' => 'form-control']) !!}
    </div>

    <div class="form-group">
        {!! Form::label('name') !!}
        {!! Form::text('name', null, ['class' => 'form-control']) !!}

        <p class="help-block">
            This name is used to generate links to the page. In doubt leave empty.
        </p>
    </div>

    <div class="form-group row">
        <div class="col-md-12">
            {!! Form::label('template') !!}
        </div>
        <div class="col-md-4">
            {!! Form::select('template', $templates, null, ['class' => 'form-control']) !!}
        </div>
    </div>

    <div class="form-group row">
        <div class="col-md-12">
            {!! Form::label('order') !!}
        </div>
        <div class="col-md-2">
            {!! Form::select('order', [
                '' => '',
                'before' => 'Before',
                'after' => 'After',
                'childOf' => 'Child Of'
            ], null, ['class' => 'form-control']) !!}
        </div>
        <div class="col-md-5">
            {!! Form::select('orderPage', [
                '' => ''
            ] + $orderPages->lists('paddedTitle', 'id')->toArray(), null, ['class' => 'form-control']) !!}
        </div>
    </div>

    <div class="form-group">
        <img class="flag" src="{{ theme('images/flags/' . session('app.language_locale') . '.png') }}">
        {!! Form::label('content') !!}
        {!! Form::textarea('content', null, ['class' => 'form-control']) !!}
    </div>

    <div class="checkbox">
        <label>
            {!! Form::checkbox('hidden') !!}
            Hide page from navigation
            <span class="help-block">
                Checking this will hide the page from the navigation menu. Can only be applied to pages without children.
            </span>
        </label>
    </div>


    {!! Form::submit($page->exists ? 'Save Page' : 'Create New Page', ['class' => 'btn btn-primary']) !!}
    <a href="{{ route('backend.pages.index') }}" class="">or go back to all pages.</a>

    {!! Form::close() !!}

    <script>
        CKEDITOR.replace( 'content', {
            filebrowserImageBrowseUrl: '/laravel-filemanager?type=Images',
            filebrowserImageUploadUrl: '/laravel-filemanager/upload?type=Images&_token={{csrf_token()}}',
            filebrowserBrowseUrl: '/laravel-filemanager?type=Files',
            filebrowserUploadUrl: '/laravel-filemanager/upload?type=Files&_token={{csrf_token()}}',
            allowedContent: true
        } );
    </script>
@endsection