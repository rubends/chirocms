<section id="main">
    <div class="container template-content">
    
        <h1>{{$page->title}}</h1>

        {!! $page->content !!}

        <div class="embed-responsive embed-responsive-16by9">
        <iframe src="https://calendar.google.com/calendar/embed?showTitle=0&amp;showNav=0&amp;showPrint=0&amp;showCalendars=0&amp;showTz=0&amp;height=600&amp;wkst=2&amp;bgcolor=%23ffffff&amp;src=v3r63ecq39p6c2flv874redlgk%40group.calendar.google.com&amp;color=%23125A12&amp;ctz=Europe%2FBrussels" style="border-width:0" width="800" height="600" frameborder="0" scrolling="no"></iframe>
        </div>

    </div>
</section>
<footer>
    <div class="container">
        <p>
            Copyright &copy; 2016 Chiro Sint-Job - All rights reserved
        </p>
        <a href="../public/auth/login">Login</a>
    </div>
</footer>