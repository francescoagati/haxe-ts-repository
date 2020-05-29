package puppeteer;

/**
	Navigation options for `page.goto`.
**/
typedef DirectNavigationOptions = {
	/**
		Referer header value.
		If provided it will take preference over the referer header value set by
		[page.setExtraHTTPHeaders()](#pagesetextrahttpheadersheaders).
	**/
	@:optional
	var referer : String;
	/**
		When to consider navigation succeeded.
	**/
	@:optional
	var waitUntil : ts.AnyOf2<String, Array<LoadEvent>>;
	/**
		Maximum navigation time in milliseconds, pass 0 to disable timeout.
	**/
	@:optional
	var timeout : Float;
};