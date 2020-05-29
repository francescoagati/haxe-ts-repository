package puppeteer;

typedef PageFnOptions = {
	@:optional
	var polling : ts.AnyOf2<Float, String>;
	/**
		Maximum navigation time in milliseconds, pass 0 to disable timeout.
	**/
	@:optional
	var timeout : Float;
};