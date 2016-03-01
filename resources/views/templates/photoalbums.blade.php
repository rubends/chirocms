<section id="main">
    <div class="container">
    
        <h1>{{$page->title}}</h1>

        <div id="photo-overlay">
          <img src="http://www.lorempixel.com/300/220/cats" alt="pretty kitty">
        </div>
        
        @foreach($albums as $album)
            <article>
                <h2>{{ $album->title }}</h2>
                {!! $album->description !!}
                <section id="photos">
                    @foreach ($album->photos as $photo)
                        <img src="{{$photo->filename}}" alt="Welcome2Altea" />
                    @endforeach
                </section>
            </article>
        @endforeach
        

    </div>
</section>
<footer>
    <div class="container">
        <p>
            Copyright &copy; 2016 Chiro Sint-Job - All rights reserved
        </p>
        <a href="{{ url(route('terms')) }}">Terms and Conditions</a>
    </div>
</footer>