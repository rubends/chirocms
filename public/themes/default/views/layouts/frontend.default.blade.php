<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>@yield('title') &mdash; CMS</title>

        <link rel="stylesheet" type="text/css" href="{{ theme('css/frontend.css') }}">

    </head>
    <body>
        <nav class="navbar navbar-default">
            <div class="container">
                <div class="navbar-header">
                    <a href="/" class="navbar-brand">
                        CMS titel
                    </a>
                </div>
                <ul class="nav navbar-nav">
                    @include('partials.navigation')
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    @include('partials.locale')
                </ul>
            </div>
        </nav>

        <div class="container">

            @if($errors->any())
                <div class="alert alert-danger">
                    <strong>Er is iets mis gegaan!</strong>

                    <ul>
                        @foreach($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif

            @if($status)
                <div class="alert alert-info">
                    {{ $status }}
                </div>
            @endif
            
            <div class="row">
                <div class="col-md-12">@yield('content')</div>
            </div>
        </div>
    </body>
</html>