<?php 


return [

	'theme' => 'default',

	'templates' => [

		'home' => App\Templates\HomeTemplate::class,
		'blog' => App\Templates\BlogTemplate::class,
		'blog.post' => App\Templates\BlogPostTemplate::class,
		'bookingform' => App\Templates\BookingFormTemplate::class,
		'contactform' => App\Templates\ContactFormTemplate::class,
		'photoalbums' => App\Templates\PhotoAlbumsTemplate::class,
		'calender' => App\Templates\CalenderTemplate::class

	],

	'email' => 'info@welcome2altea.com'

];