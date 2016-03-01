<?php 

namespace App\View;

use Illuminate\View\FileViewFinder;

class ThemeViewFinder extends FileViewFinder {
	
	protected $activeTheme;

	protected $basePath;

	public function setBasePath($path) {
		$this->basePath = $path;
	}

	public function setActiveTheme($theme) {
		$this->activeTheme = $theme;

		// add current theme dir to this->paths from FileViewfinder for cascading
		array_unshift($this->paths, $this->basePath.'/'.$theme.'/views');
	}
}