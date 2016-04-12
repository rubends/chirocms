<?php



Route::group(['middleware' => ['web']], function () {


	/**
	 * Authentication routes
	 */
	Route::controller('auth/password', 'Auth\PasswordController', [
		'getEmail' => 'auth.password.email',
		'getReset' => 'auth.password.reset'
	]);

	Route::controller('auth', 'Auth\AuthController', [
		'getLogin' => 'auth.login', // map getlogin method to auth.login route name
		'getLogout' => 'auth.logout',
	]);

	/**
	 * Backend routes
	 */
	Route::get('backend/dashboard', [
		'as' => 'backend.dashboard',
		'uses' => 'Backend\DashboardController@index'
	]);

	Route::resource('backend/users', 'Backend\UsersController', ['except' => ['show']]);
	Route::get('backend/users/{users}/confirm', [
		'as' => 'backend.users.confirm',
		'uses' => 'Backend\UsersController@confirm'
	]);

	Route::resource('backend/pages', 'Backend\PagesController', ['except' => ['show']]);
	Route::get('backend/pages/{pages}/confirm', [
		'as' => 'backend.pages.confirm', 
		'uses' => 'Backend\PagesController@confirm'
	]);

	Route::resource('backend/blog', 'Backend\BlogController', ['except' => ['show']]);
	Route::get('backend/blog/{blog}/confirm', [
		'as' => 'backend.blog.confirm',
		'uses' => 'Backend\BlogController@confirm'
	]);

	Route::resource('backend/albums', 'Backend\AlbumsController', ['except' => ['show']]);
	Route::get('backend/albums/{album}/confirm', [
		'as' => 'backend.albums.confirm',
		'uses' => 'Backend\AlbumsController@confirm'
	]);

	/**
	 * Frontend default routes
	 */
	Route::post('contact/submit', [
		'as' => 'contact.submit', 
		'uses' => 'ContactController@submit'
	]);

	Route::post('booking/submit', [
		'as' => 'booking.submit', 
		'uses' => 'VerhuurController@submit'
	]);
	


});