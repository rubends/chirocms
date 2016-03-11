<section id="intro-flags">
    <!-- <div class="container">
        @foreach(config('translatable.locales') as $lang)
            <a href="{{ url($lang . '/' . Request::path()) }}" id="{{ $lang }}"></a>
        @endforeach
    </div>
    -->
</section>


<section id="intro-title">
    <div class="container">
        <h1>Chiro Sint-Job</h1>
        <div class="line"></div>
        <p>@lang('general.slogan')</p>
    </div>
</section>



<!-- Content -->
<div id="content">
    <a name="home" id="home"></a>
    <div id="home-content">
        <div class="container cms-content">
            <div class="col-md-9">
                {!! $page->content !!}
            </div>
            <div class="col-md-3 sidebar">
                <h1>Sidebar</h1>
            </div>
        </div>
    </div>
    

    <footer>
        <div class="container">
            <p>@lang('general.copyright')</p>
            <a href="{{ url(route('terms')) }} ">@lang('general.tos')</a>
        </div>
    </footer>
</div>


<script>
    var isHomePage = true;
</script>