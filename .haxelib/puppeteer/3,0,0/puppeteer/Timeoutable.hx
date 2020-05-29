package puppeteer;

typedef Timeoutable = {
	/**
		Maximum navigation time in milliseconds, pass 0 to disable timeout.
	**/
	@:optional
	var timeout : Float;
};