package puppeteer;

/**
	A Browser is created when Puppeteer connects to a Chromium instance, either through puppeteer.launch or puppeteer.connect.
**/
typedef Browser = {
	/**
		Adds the listener function to the end of the listeners array for the event named `eventName`.
		No checks are made to see if the listener has already been added. Multiple calls passing the same combination of
		`eventName` and listener will result in the listener being added, and called, multiple times.
	**/
	function on<K>(eventName:K, handler:(e:Dynamic, args:haxe.extern.Rest<Dynamic>) -> Void):Browser;
	/**
		Adds a one time listener function for the event named `eventName`.
		The next time `eventName` is triggered, this listener is removed and then invoked.
	**/
	function once<K>(eventName:K, handler:(e:Dynamic, args:haxe.extern.Rest<Dynamic>) -> Void):Browser;
	/**
		Returns an array of all open browser contexts.
		In a newly created browser, this will return a single instance of BrowserContext.
	**/
	function browserContexts():Array<BrowserContext>;
	/**
		Closes browser with all the pages (if any were opened).
		The browser object itself is considered to be disposed and can not be used anymore.
	**/
	function close():js.lib.Promise<Void>;
	/**
		Creates a new incognito browser context.
		This won't share cookies/cache with other browser contexts.
	**/
	function createIncognitoBrowserContext():js.lib.Promise<BrowserContext>;
	/**
		Disconnects Puppeteer from the browser, but leaves the Chromium process running.
		After calling `disconnect`, the browser object is considered disposed and cannot be used anymore.
	**/
	function disconnect():Void;
	/**
		Indicates that the browser is connected.
	**/
	function isConnected():Bool;
	/**
		Returns the default browser context.
		The default browser context can not be closed.
	**/
	function defaultBrowserContext():BrowserContext;
	/**
		Promise which resolves to a new Page object.
	**/
	function newPage():js.lib.Promise<Page>;
	/**
		Promise which resolves to an array of all open pages.
	**/
	function pages():js.lib.Promise<Array<Page>>;
	/**
		Spawned browser process. Returns `null` if the browser instance was created with `puppeteer.connect` method
	**/
	function process():node.child_process.ChildProcess;
	/**
		A target associated with the browser.
	**/
	function target():Target;
	/**
		Promise which resolves to an array of all active targets.
	**/
	function targets():js.lib.Promise<Array<Target>>;
	/**
		Promise which resolves to the browser's original user agent.
		**NOTE** Pages can override browser user agent with `page.setUserAgent`.
	**/
	function userAgent():js.lib.Promise<String>;
	/**
		For headless Chromium, this is similar to HeadlessChrome/61.0.3153.0. For non-headless, this is similar to Chrome/61.0.3153.0.
	**/
	function version():js.lib.Promise<String>;
	/**
		Browser websocket endpoint which can be used as an argument to puppeteer.connect. The format is ws://${host}:${port}/devtools/browser/<id>
	**/
	function wsEndpoint():String;
	function addListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Browser;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Browser;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Browser;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Browser;
	function setMaxListeners(n:Float):Browser;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	function listenerCount(type:ts.AnyOf2<String, js.lib.Symbol>):Float;
	function prependListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Browser;
	function prependOnceListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Browser;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
	function waitForTarget(predicate:(target:Target) -> Bool, ?options:Timeoutable):js.lib.Promise<Target>;
};