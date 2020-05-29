package puppeteer;

/**
	BrowserContexts provide a way to operate multiple independent browser sessions.
	When a browser is launched, it has a single BrowserContext used by default.
	The method `browser.newPage()` creates a page in the default browser context.
**/
typedef BrowserContext = {
	/**
		Adds the listener function to the end of the listeners array for the event named `eventName`.
		No checks are made to see if the listener has already been added. Multiple calls passing the same combination of
		`eventName` and listener will result in the listener being added, and called, multiple times.
	**/
	function on<K>(eventName:K, handler:(e:Dynamic, args:haxe.extern.Rest<Dynamic>) -> Void):BrowserContext;
	/**
		Adds a one time listener function for the event named `eventName`.
		The next time `eventName` is triggered, this listener is removed and then invoked.
	**/
	function once<K>(eventName:K, handler:(e:Dynamic, args:haxe.extern.Rest<Dynamic>) -> Void):BrowserContext;
	/**
		The browser this browser context belongs to.
	**/
	function browser():Browser;
	/**
		Clears all permission overrides for the browser context.
	**/
	function clearPermissionOverrides():js.lib.Promise<Void>;
	/**
		Closes the browser context. All the targets that belong to the browser context will be closed.
	**/
	function close():js.lib.Promise<Void>;
	/**
		Returns whether BrowserContext is incognito.
		The default browser context is the only non-incognito browser context.
	**/
	function isIncognito():Bool;
	/**
		Creates a new page in the browser context.
	**/
	function newPage():js.lib.Promise<Page>;
	function overridePermissions(origin:String, permissions:Array<Permission>):js.lib.Promise<Void>;
	/**
		Promise which resolves to an array of all open pages.
	**/
	function pages():js.lib.Promise<Array<Page>>;
	/**
		An array of all active targets inside the browser context.
	**/
	function targets():Array<Target>;
	function addListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):BrowserContext;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):BrowserContext;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):BrowserContext;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):BrowserContext;
	function setMaxListeners(n:Float):BrowserContext;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	function listenerCount(type:ts.AnyOf2<String, js.lib.Symbol>):Float;
	function prependListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):BrowserContext;
	function prependOnceListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):BrowserContext;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
	function waitForTarget(predicate:(target:Target) -> Bool, ?options:Timeoutable):js.lib.Promise<Target>;
};