package puppeteer;

/**
	The navigation options.
**/
typedef NavigationOptions = {
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