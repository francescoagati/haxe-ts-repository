package puppeteer;

typedef LaunchOptions = {
	/**
		Which browser to launch.
		At this time, this is either `chrome` or `firefox`. See also `PUPPETEER_PRODUCT`.
	**/
	@:optional
	var product : Product;
	/**
		Path to a Chromium executable to run instead of bundled Chromium. If
		executablePath is a relative path, then it is resolved relative to current
		working directory.
	**/
	@:optional
	var executablePath : String;
	/**
		Do not use `puppeteer.defaultArgs()` for launching Chromium.
	**/
	@:optional
	var ignoreDefaultArgs : ts.AnyOf2<Bool, Array<String>>;
	/**
		Close chrome process on Ctrl-C.
	**/
	@:optional
	var handleSIGINT : Bool;
	/**
		Close chrome process on SIGTERM.
	**/
	@:optional
	var handleSIGTERM : Bool;
	/**
		Close chrome process on SIGHUP.
	**/
	@:optional
	var handleSIGHUP : Bool;
	/**
		Whether to pipe browser process stdout and stderr into process.stdout and
		process.stderr.
	**/
	@:optional
	var dumpio : Bool;
	/**
		Specify environment variables that will be visible to Chromium.
	**/
	@:optional
	var env : { };
	/**
		Connects to the browser over a pipe instead of a WebSocket.
	**/
	@:optional
	var pipe : Bool;
	/**
		Whether to run browser in headless mode.
	**/
	@:optional
	var headless : Bool;
	/**
		Additional arguments to pass to the browser instance.
		The list of Chromium flags can be found here.
	**/
	@:optional
	var args : Array<String>;
	/**
		Path to a User Data Directory.
	**/
	@:optional
	var userDataDir : String;
	/**
		Whether to auto-open a DevTools panel for each tab.
		If this option is true, the headless option will be set false.
	**/
	@:optional
	var devtools : Bool;
	/**
		Whether to ignore HTTPS errors during navigation.
	**/
	@:optional
	var ignoreHTTPSErrors : Bool;
	/**
		Sets a consistent viewport for each page. Defaults to an 800x600 viewport. null disables the default viewport.
	**/
	@:optional
	var defaultViewport : {
		/**
			page width in pixels.
		**/
		@:optional
		var width : Float;
		/**
			page height in pixels.
		**/
		@:optional
		var height : Float;
		/**
			Specify device scale factor (can be thought of as dpr).
		**/
		@:optional
		var deviceScaleFactor : Float;
		/**
			Whether the meta viewport tag is taken into account.
		**/
		@:optional
		var isMobile : Bool;
		/**
			Specifies if viewport supports touch events.
		**/
		@:optional
		var hasTouch : Bool;
		/**
			Specifies if viewport is in landscape mode.
		**/
		@:optional
		var isLandscape : Bool;
	};
	/**
		Slows down Puppeteer operations by the specified amount of milliseconds.
		Useful so that you can see what is going on.
	**/
	@:optional
	var slowMo : Float;
	/**
		Maximum navigation time in milliseconds, pass 0 to disable timeout.
	**/
	@:optional
	var timeout : Float;
};