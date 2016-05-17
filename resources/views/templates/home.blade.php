<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/nl_BE/sdk.js#xfbml=1&version=v2.5&appId=42929609037";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
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
            <div class="col-md-9 mainbar">
                {!! $page->content !!}
            </div>
            <div class="col-md-3 hidden-sm hidden-xs sidebar">
                <div class="embed-responsive embed-responsive-4by3">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m0!3m2!1snl!2sus!4v1459532284887!6m8!1m7!1smf79wB_U-zR-ntITcngH2w!2m2!1d51.2917435!2d4.5789607!3f208.09761995190945!4f-11.05989575263834!5f0.7820865974627469" width="600" height="700" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
                <div class="">
                    <div class="fb-page" data-href="https://www.facebook.com/ChiroSintJob/" data-tabs="timeline" data-small-header="true" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><div class="fb-xfbml-parse-ignore"><blockquote cite="https://www.facebook.com/ChiroSintJob/"><a href="https://www.facebook.com/ChiroSintJob/">Chiro Sint Job</a></blockquote></div></div>
                </div>
                <!-- <h1>CONTACT</h1>
                <h2><a href="mailto:info@chirosintjob.be?Subject=Contact%site" target="_top">info@chirosintjob.be</a></h2>
                <h2>VB's</h2>
                <p>Jan en Birgit Verduyn-Eulaers</p>
                <h3>0479 50 29 65</h3>
                <h3>0486 35 65 88</h3>
                <h2>Hoofdleiding</h2>
                <p>Roeland Ruelens</p>
                <h3>0478 09 28 80</h3>
                <p>Hanne Holsters</p>
                <h3>0476 84 89 76</h3>

                <h1>Agenda</h1>
                <div class="embed-responsive embed-responsive-4by3">
                    <iframe src="https://calendar.google.com/calendar/embed?showTitle=0&amp;showNav=0&amp;showPrint=0&amp;showTabs=0&amp;showCalendars=0&amp;showTz=0&amp;mode=AGENDA&amp;height=200&amp;wkst=1&amp;bgcolor=%23ffffff&amp;src=v3r63ecq39p6c2flv874redlgk%40group.calendar.google.com&amp;color=%23125A12&amp;ctz=Europe%2FBrussels" style="border-width:0" width="250" height="300" frameborder="0" scrolling="no"></iframe>
                </div>
                -->

            </div>
        </div>
    </div>
    

    <footer>
        <div class="container">
            <p>@lang('general.copyright') 
                <div class="cmslinks"><a href="../public/auth/login">Login</a></div>
            </p>
        </div>
    </footer>
</div>


<script>
    var isHomePage = true;
</script>