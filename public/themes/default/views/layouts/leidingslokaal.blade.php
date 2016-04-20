<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>@yield('title') &#124; digitaal leidingslokaal</title>

        <link rel="stylesheet" href="{{ theme('css/backend.css') }}">
        <script src="{{ theme('js/all.js') }}"></script>
        <script src="{{ theme('js/ckeditor/ckeditor.js') }}"></script>
    </head>
    <body>
        <nav class="navbar navbar-static-top navbar-inverse">
            <div class="container">
                <div class="navbar-header"><a href="/" class="navbar-brand">SITE</a></div>
                <ul class="nav navbar-nav">
                    <li><a href="{{ route('leidingslokaal.verslagen.index') }}">LK verslagen</a></li>
                    <li><a href="{--{ route('') }--}">Documenten</a></li>
                    <li><a href="{--{ route('') }--}">Boekje</a></li>
                    <li><a href="{--{ route('') }--}">Contactgegevens</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><span class="navbar-text">Hallo, {{ $admin->name }}</span></li>
                    <li><a href="{{ route('auth.logout') }}">Logout</a></li>
                </ul>
            </div>
        </nav>

        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h3>@yield('title')</h3>

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

                    @yield('content')
                </div>
            </div>
        </div>
    </body>
</html>