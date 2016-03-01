<!DOCTYPE html>
<html class="fs-bg" lang="en">
<head>
    <title>@yield('title') &#124; Welcome2Altea</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="{{ theme('css/frontend.css') }}">
</head>
<body>

    <!-- Navigation -->
    <nav class="navbar navbar-fixed-top" id="navbar-main">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div id="navbar" class="collapse navbar-collapse">
                <ul>
                    @include('partials.navigation')
                </ul>
            </div>
    </nav>  


    @yield('content')


    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
    <script src="{{ theme('js/all.js') }}"></script>

</body>
</html>