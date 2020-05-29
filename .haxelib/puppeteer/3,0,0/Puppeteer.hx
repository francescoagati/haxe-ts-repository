@:jsRequire("puppeteer") @valueModuleOnly extern class Puppeteer {
	/**
		Attaches Puppeteer to an existing Chromium instance
	**/
	static function connect(?options:puppeteer.ConnectOptions):js.lib.Promise<puppeteer.Browser>;
	/**
		The default flags that Chromium will be launched with
	**/
	static function defaultArgs(?options:puppeteer.ChromeArgOptions):Array<String>;
	/**
		Path where Puppeteer expects to find bundled Chromium
	**/
	static function executablePath():String;
	/**
		The method launches a browser instance with given arguments. The browser will be closed when the parent node.js process is closed.
	**/
	static function launch(?options:puppeteer.LaunchOptions):js.lib.Promise<puppeteer.Browser>;
	/**
		This methods attaches Puppeteer to an existing Chromium instance.
	**/
	static function createBrowserFetcher(?options:puppeteer.FetcherOptions):puppeteer.BrowserFetcher;
	static final devices : { };
}