<section id="main">
    <div class="container template-content">
    
        <h1>{{$page->title}}</h1>

        {!! $page->content !!}

        {!! Form::open([
            'method' => 'post',
            'route' => 'contact.submit'
        ]) !!}

        <div class="form-group">
            {!! Form::label('Naam') !!}
            {!! Form::text('name', null, ['class' => 'form-control']) !!}
        </div>

        <div class="form-group">
            {!! Form::label('email') !!}
            {!! Form::text('email', null, ['class' => 'form-control']) !!}
        </div>

        <div class="form-group">
            {!! Form::label('Bericht') !!}
            {!! Form::textarea('message', null, ['class' => 'form-control']) !!}
        </div>

        {!! Form::submit('Verzenden', ['class' => 'btn btn-primary']) !!}

        {!! Form::close() !!}

    </div>
</section>
<footer>
    <div class="container">
        <p>
            Copyright &copy; 2016 Chiro Sint-Job - All rights reserved
            <div class="cmslinks"><a href="../public/auth/login">Login</a></div>
        </p>
    </div>
</footer>