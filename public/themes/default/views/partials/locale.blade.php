@foreach(config('translatable.locales') as $lang)
	<li class="{{ session('app.language_locale') == $lang ? 'active' : '' }}">
		<a href="{{ url($lang . '/' . Request::path()) }}" >{{ $lang }}</a>
	</li>
@endforeach