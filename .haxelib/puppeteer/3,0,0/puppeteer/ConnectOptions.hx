package puppeteer;

typedef ConnectOptions = {
	/**
		A browser url to connect to, in format `http://${host}:${port}`.
		Use interchangeably with browserWSEndpoint to let Puppeteer fetch it from metadata endpoint.
	**/
	@:optional
	var browserURL : String;
	/**
		A browser websocket endpoint to connect to.
	**/
	@:optional
	var browserWSEndpoint : String;
	/**
		**Experimental** Specify a custom transport object for Puppeteer to use.
	**/
	@:optional
	var transport : ConnectionTransport;
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
};