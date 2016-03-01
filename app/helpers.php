<?php


if(! function_exists('theme')) {
	function theme ($path) {
		$theme = app('config')->get('cms.theme');

		return url('themes/' . $theme . '/assets/' . $path);
	}
}