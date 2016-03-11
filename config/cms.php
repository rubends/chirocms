<?php 


return [

	'theme' => 'default',

	'templates' => [

		'home' => App\Templates\HomeTemplate::class,
		'blog' => App\Templates\BlogTemplate::class,
		'blog.post' => App\Templates\BlogPostTemplate::class,
		'verhuurform' => App\Templates\VerhuurFormTemplate::class,
		'contactform' => App\Templates\ContactFormTemplate::class,
		'photoalbums' => App\Templates\PhotoAlbumsTemplate::class,
		'calender' => App\Templates\CalenderTemplate::class,
		'programma' => App\Templates\ProgrammaTemplate::class

	],

	'email' => 'info@chirosintjob.com'

];