var elixir = require('laravel-elixir');

elixir.config.assetsPath = 'public/themes/default/assets';
elixir.config.publicPath = elixir.config.assetsPath;

elixir.config.css.sass.pluginOptions.includePaths = [
	'node_modules/bootstrap-sass/assets/stylesheets',
];

elixir(function(mix) {
	mix.copy('node_modules/bootstrap-sass/assets/fonts', elixir.config.publicPath+'/fonts');

	mix.copy('node_modules/bootstrap-sass/assets/javascripts/bootstrap.min.js', elixir.config.publicPath+'/js/bootstrap.js');
	mix.copy('node_modules/jquery/dist/jquery.min.js', elixir.config.publicPath+'/js/jquery.js');
	mix.copy('node_modules/moment/min/moment.min.js', elixir.config.publicPath+'/js/moment.js');
	mix.copy('node_modules/eonasdan-bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js', elixir.config.publicPath+'/js/datepicker.js');
	mix.copy('node_modules/eonasdan-bootstrap-datetimepicker/src/sass/_bootstrap-datetimepicker.scss', elixir.config.publicPath+'/sass/datepicker.scss');

	
    //mix.copy('vendor/ckeditor/ckeditor', elixir.config.publicPath+'/js/ckeditor');

    mix.scripts([
    	'jquery.js', 'bootstrap.js', 'moment.js', 'datepicker.js', 'frontend.js'
    ]);

    mix.sass('backend.scss');
    mix.sass('frontend.scss');
});
