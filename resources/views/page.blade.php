@extends('layouts.frontend')

@section('content')

	@if($errors->any() || $status)
		<div class="error-status">
			<div class="container">
			    @include('partials.status')
			    @include('partials.error')
			</div>
		</div>
	@endif

    @if($page->view)

        {!! $page->view->render() !!}

    @else

	    <section id="main">
	        <div class="container cms-content">

				<h1>{{ $page->title }}</h1>

	            {!! $page->content !!}

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

    @endif



@endsection

@section('title', $page->title)