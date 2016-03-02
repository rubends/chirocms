@extends('layouts.backend')

@section('title', $album->exists ? 'Editing '.$album->title : 'Create New Album')

@section('content')
    {!! Form::model($album, [
        'method' => $album->exists ? 'put' : 'post',
        'route' => $album->exists ? ['backend.albums.update', $album->id] : ['backend.albums.store']
    ]) !!}

    <div class="row">
        <div class="col-md-12">
            <ul class="nav nav-tabs locale">
                @include('partials.locale')
            </ul>
            <div class="alert alert-info" role="alert">
                <p><strong>Tip:</strong> Flags indicate fields available in different languages. Fill in all information first, then save and switch to a different language to change the localisation fields.</p>
                <p><strong>Warning:</strong> When changing languages, all unchanged changes will be lost.</p>
                <p><strong>Warning:</strong> Do not change the language on the front-end when editing albums. This will interfere with the album editor.</p>
            </div>
        </div>
    </div>

    <div class="form-group">
        <img class="flag" src="{{ theme('images/flags/' . session('app.language_locale') . '.png') }}">
        {!! Form::label('title') !!}
        {!! Form::text('title', null, ['class' => 'form-control']) !!}
    </div>

    <div class="form-group">
        <img class="flag" src="{{ theme('images/flags/' . session('app.language_locale') . '.png') }}">
        {!! Form::label('description') !!}
        {!! Form::textarea('description', null, ['class' => 'form-control']) !!}
    </div>

    <div class="form-group">
        {!! Form::label('images') !!}<br/>
        <button type="button" class="btn btn-default" id="open-file-browser">
            <span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span> Add photo
        </button>
        <input type="hidden" name="imagesJSON" id="hidden-image-list" value='{!! $album->imagesJSON !!}' />
        {{--!! Form::hidden('imagesJSON', null, ['class' => 'form-control', 'id' => 'hidden-image-list']) !!--}}
        Click to delete an image.
        <div class="row" id="album_images">
            
        </div>
    </div>


    {!! Form::submit($album->exists ? 'Save album' : 'Save New Album', ['class' => 'btn btn-primary']) !!}
    <a href="{{ route('backend.albums.index') }}" class="">or go back to all albums.</a>

    {!! Form::close() !!}

    <script>
        CKEDITOR.replace( 'description', {
            filebrowserImageBrowseUrl: '/laravel-filemanager?type=Images',
            filebrowserImageUploadUrl: '/laravel-filemanager/upload?type=Images&_token={{csrf_token()}}',
            filebrowserBrowseUrl: '/laravel-filemanager?type=Files',
            filebrowserUploadUrl: '/laravel-filemanager/upload?type=Files&_token={{csrf_token()}}'
        } );

        function addImage(url) {
            $col = $('<div/>')
                .addClass('col-xs-3')
                .appendTo('#album_images');
            $col.click(function(e){
                e.preventDefault();
                $(this).remove();
            });
            $thumb = $("<div/>").addClass('thumbnail')
                .appendTo($col);
            $('<img/>').attr('src', url)
                .attr('alt', 'chirosintjob')
                .appendTo($thumb);
        }

        $('form').submit(function() {
            var imageList = new Array();
            $('#album_images img').each(function(){
                imageList.push($(this).attr('src'));
            });
            $('#hidden-image-list').val(JSON.stringify(imageList));
            //return false;
        });

        $('#open-file-browser').click(function(e) {
            e.preventDefault();
            window.open('/laravel-filemanager?type=Images&addImageFunction=true','','width=800,height=600,toolbar=0,menubar=0,location=0,status=1,scrollbars=1,resizable=1,left=0,top=0');
        });

        var images;
        if(images = JSON.parse($('#hidden-image-list').val())) {
            $.each(images, function(index, value) {
                addImage(value.filename);
            });
        }
    </script>
@endsection