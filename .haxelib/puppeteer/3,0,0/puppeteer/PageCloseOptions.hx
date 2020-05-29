package puppeteer;

typedef PageCloseOptions = {
	/**
		Whether to run the before unload page handlers.
	**/
	@:optional
	var runBeforeUnload : Bool;
};