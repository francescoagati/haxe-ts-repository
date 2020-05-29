package puppeteer;

typedef FetcherOptions = {
	/**
		A download host to be used. Defaults to `https://storage.googleapis.com`.
	**/
	@:optional
	var host : String;
	/**
		A path for the downloads folder. Defaults to `<root>/.local-chromium`, where `<root>` is puppeteer's package root.
	**/
	@:optional
	var path : String;
	/**
		Possible values are: `mac`, `win32`, `win64`, `linux`. Defaults to the current platform.
	**/
	@:optional
	var platform : Platform;
	@:optional
	var product : Product;
};