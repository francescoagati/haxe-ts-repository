package puppeteer;

typedef ChromeArgOptions = {
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
};