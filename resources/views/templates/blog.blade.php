<section id="main">
    <div class="container blogcontent">

        {!! $page->content !!}

        @foreach($posts as $post)
            <article>
                <h2><a href="{{ route('blog.post', [$post->id, $post->slug]) }}">{{ $post->title }}</a></h2>
                <p>
                    Posted by {{ $post->author->name }} on {{ $post->published_date }}
                </p>
                {!! $post->excerpt ?: $post->body !!}
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


<div class="row">
	<div class="col-md-12">
		{!! $page->content !!}
	</div>
</div>



{!! $posts->render() !!}