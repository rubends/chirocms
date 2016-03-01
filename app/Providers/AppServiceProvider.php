<?php

namespace App\Providers;

use App\View\Composers;
use App\View\ThemeViewFinder;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {


        // Add composers to some views
        $this->app['view']->composer(['layouts.auth', 'layouts.backend', 'page'], Composers\AddStatusMessage::class);
        $this->app['view']->composer('layouts.backend', Composers\AddAdminUser::class);
        $this->app['view']->composer('layouts.frontend', Composers\InjectPages::class);


        // set our custom view finder
        //$this->app['view']->setFinder($this->app['theme.finder']);
        
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        // add new singleton to app for custom viewfinder
        // $this->app->singleton('theme.finder', function($app) {
        //     // create new view finder
        //     $finder = new ThemeViewFinder($app['files'],$app['config']['view.paths']);

        //     $config = $app['config']['cms.theme']; // grab config

        //     $finder->setBasePath($app['path.public'].'/'.$config['folder']); // set theme basepath to the public dir + folder config
        //     $finder->setActiveTheme($config['active']);

        //     return $finder;
        // });
        
        $paths = \Config::get('view.paths');
        array_unshift($paths, realpath(public_path('themes/default/views')));
        \Config::set('view.paths', $paths);
    }
}
