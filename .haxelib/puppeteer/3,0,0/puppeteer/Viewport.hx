package puppeteer;

typedef Viewport = {
	/**
		The page width in pixels.
	**/
	var width : Float;
	/**
		The page height in pixels.
	**/
	var height : Float;
	/**
		Specify device scale factor (can be thought of as dpr).
	**/
	@:optional
	var deviceScaleFactor : Float;
	/**
		Whether the `meta viewport` tag is taken into account.
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