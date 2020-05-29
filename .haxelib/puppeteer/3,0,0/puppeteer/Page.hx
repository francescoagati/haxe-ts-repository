package puppeteer;

/**
	Page provides methods to interact with a single tab in Chromium. One Browser instance might have multiple Page instances.
**/
typedef Page = {
	/**
		Adds the listener function to the end of the listeners array for the event named `eventName`.
		No checks are made to see if the listener has already been added. Multiple calls passing the same combination of
		`eventName` and listener will result in the listener being added, and called, multiple times.
	**/
	function on<K>(eventName:K, handler:(e:Dynamic, args:haxe.extern.Rest<Dynamic>) -> Void):Page;
	/**
		Adds a one time listener function for the event named `eventName`.
		The next time `eventName` is triggered, this listener is removed and then invoked.
	**/
	function once<K>(eventName:K, handler:(e:Dynamic, args:haxe.extern.Rest<Dynamic>) -> Void):Page;
	var accessibility : Accessibility;
	/**
		Provide credentials for http authentication.
		To disable authentication, pass `null`.
	**/
	function authenticate(credentials:Null<AuthOptions>):js.lib.Promise<Void>;
	/**
		Brings page to front (activates tab).
	**/
	function bringToFront():js.lib.Promise<Void>;
	/**
		Get the browser the page belongs to.
	**/
	function browser():Browser;
	/**
		Get the browser context that the page belongs to.
	**/
	function browserContext():BrowserContext;
	/**
		Closes the current page.
	**/
	function close(?options:PageCloseOptions):js.lib.Promise<Void>;
	/**
		Gets the cookies.
		If no URLs are specified, this method returns cookies for the current page URL.
		If URLs are specified, only cookies for those URLs are returned.
	**/
	function cookies(urls:haxe.extern.Rest<String>):js.lib.Promise<Array<Cookie>>;
	var coverage : Coverage;
	/**
		Deletes the specified cookies.
	**/
	function deleteCookie(cookies:haxe.extern.Rest<DeleteCookie>):js.lib.Promise<Void>;
	/**
		Emulates given device metrics and user agent. This method is a shortcut for `setUserAgent` and `setViewport`.
	**/
	function emulate(options:EmulateOptions):js.lib.Promise<Void>;
	/**
		Emulates the media.
	**/
	function emulateMediaType(mediaType:Null<MediaType>):js.lib.Promise<Void>;
	/**
		Given an array of media feature objects, emulates CSS media features on the page.
		Passing null resets all.
	**/
	function emulateMediaFeatures(features:Null<Array<MediaFeature>>):js.lib.Promise<Void>;
	/**
		Changes the timezone of the page.
		See ICU’s [metaZones.txt](https://cs.chromium.org/chromium/src/third_party/icu/source/data/misc/metaZones.txt?rcl=faee8bc70570192d82d2978a71e2a615788597d1) for a list of supported timezone IDs.
		Passing null disables timezone emulation.
	**/
	function emulateTimezone(tz:Null<String>):js.lib.Promise<Void>;
	/**
		Adds a function which would be invoked in one of the following scenarios: whenever the page is navigated; whenever the child frame is attached or navigated.
		The function is invoked after the document was created but before any of its scripts were run. This is useful to amend JavaScript environment, e.g. to seed Math.random.
	**/
	function evaluateOnNewDocument(fn:EvaluateFn<Dynamic>, args:haxe.extern.Rest<SerializableOrJSHandle>):js.lib.Promise<Void>;
	/**
		The method adds a function called name on the page's `window` object.
		When called, the function executes `puppeteerFunction` in node.js and returns a
		Promise which resolves to the return value of `puppeteerFunction`.
	**/
	function exposeFunction(name:String, puppeteerFunction:(args:haxe.extern.Rest<Dynamic>) -> Dynamic):js.lib.Promise<Void>;
	/**
		An array of all frames attached to the page.
	**/
	function frames():Array<Frame>;
	/**
		Navigate to the previous page in history.
	**/
	function goBack(?options:NavigationOptions):js.lib.Promise<Null<Response>>;
	/**
		Navigate to the next page in history.
	**/
	function goForward(?options:NavigationOptions):js.lib.Promise<Null<Response>>;
	/**
		Returns the virtual keyboard.
	**/
	var keyboard : Keyboard;
	/**
		Indicates that the page has been closed.
	**/
	function isClosed():Bool;
	/**
		Page is guaranteed to have a main frame which persists during navigation's.
	**/
	function mainFrame():Frame;
	/**
		Gets the page metrics.
	**/
	function metrics():js.lib.Promise<Metrics>;
	/**
		Gets the virtual mouse.
	**/
	var mouse : Mouse;
	/**
		Generates a PDF of the page with `print` css media.
		To generate a pdf with `screen` media, call `page.emulateMedia('screen')` before calling `page.pdf()`:
	**/
	function pdf(?options:PDFOptions):js.lib.Promise<global.Buffer>;
	/**
		The method iterates JavaScript heap and finds all the objects with the given prototype.
	**/
	function queryObjects(prototypeHandle:JSHandle<Dynamic>):js.lib.Promise<JSHandle<Dynamic>>;
	/**
		Reloads the current page.
	**/
	function reload(?options:NavigationOptions):js.lib.Promise<Response>;
	/**
		Captures a screenshot of the page.
	**/
	@:overload(function(?options:BinaryScreenShotOptions):js.lib.Promise<global.Buffer> { })
	@:overload(function(?options:ScreenshotOptions):js.lib.Promise<ts.AnyOf2<String, global.Buffer>> { })
	function screenshot(?options:Base64ScreenShotOptions):js.lib.Promise<String>;
	/**
		Toggles bypassing page's Content-Security-Policy.
		NOTE CSP bypassing happens at the moment of CSP initialization rather then evaluation.
		Usually this means that page.setBypassCSP should be called before navigating to the domain.
	**/
	function setBypassCSP(enabled:Bool):js.lib.Promise<Void>;
	/**
		Determines whether cache is enabled on the page.
	**/
	function setCacheEnabled(?enabled:Bool):js.lib.Promise<Void>;
	/**
		Sets the cookies on the page.
	**/
	function setCookie(cookies:haxe.extern.Rest<SetCookie>):js.lib.Promise<Void>;
	/**
		This setting will change the default maximum navigation time of 30 seconds for the following methods:
		- `page.goto`
		- `page.goBack`
		- `page.goForward`
		- `page.reload`
		- `page.waitForNavigation`
	**/
	function setDefaultNavigationTimeout(timeout:Float):Void;
	/**
		This setting will change the default maximum time for the following methods and related shortcuts:
		- `page.goBack`
		- `page.goForward`
		- `page.goto`
		- `page.reload`
		- `page.setContent`
		- `page.waitFor`
		- `page.waitForFunction`
		- `page.waitForNavigation`
		- `page.waitForRequest`
		- `page.waitForResponse`
		- `page.waitForSelector`
		- `page.waitForXPath`
		
		NOTE page.setDefaultNavigationTimeout takes priority over page.setDefaultTimeout
	**/
	function setDefaultTimeout(timeout:Float):Void;
	/**
		The extra HTTP headers will be sent with every request the page initiates.
	**/
	function setExtraHTTPHeaders(headers:{ }):js.lib.Promise<Void>;
	/**
		Sets the page's geolocation.
	**/
	function setGeolocation(options:GeoOptions):js.lib.Promise<Void>;
	/**
		Determines whether JavaScript is enabled on the page.
	**/
	function setJavaScriptEnabled(enabled:Bool):js.lib.Promise<Void>;
	/**
		Determines whether the offline mode is enabled.
	**/
	function setOfflineMode(enabled:Bool):js.lib.Promise<Void>;
	/**
		Determines whether the request interception is enabled.
	**/
	function setRequestInterception(enabled:Bool):js.lib.Promise<Void>;
	/**
		Specifies the User-Agent used in this page.
	**/
	function setUserAgent(userAgent:String):js.lib.Promise<Void>;
	/**
		Sets the viewport of the page.
	**/
	function setViewport(viewport:Viewport):js.lib.Promise<Void>;
	function target():Target;
	/**
		Returns the page's title.
	**/
	function title():js.lib.Promise<String>;
	/**
		Returns the virtual touchscreen object.
	**/
	var touchscreen : Touchscreen;
	/**
		Returns the tracing object.
	**/
	var tracing : Tracing;
	/**
		The page's URL. This is a shortcut for `page.mainFrame().url()`
	**/
	function url():String;
	/**
		Gets the page viewport.
	**/
	function viewport():Viewport;
	function waitForRequest(urlOrPredicate:ts.AnyOf2<String, (req:Request) -> Bool>, ?options:Timeoutable):js.lib.Promise<Request>;
	function waitForResponse(urlOrPredicate:ts.AnyOf2<String, (res:Response) -> Bool>, ?options:Timeoutable):js.lib.Promise<Response>;
	/**
		In non-headless Chromium, this method results in the native file picker dialog not showing up for the user.
		This method is typically coupled with an action that triggers file choosing.
		This must be called before the file chooser is launched. It will not return a currently active file chooser.
	**/
	function waitForFileChooser(?options:Timeoutable):js.lib.Promise<FileChooser>;
	/**
		This method returns all of the dedicated WebWorkers associated with the page.
	**/
	function workers():Array<Worker>;
	function addListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Page;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Page;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Page;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Page;
	function setMaxListeners(n:Float):Page;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	function listenerCount(type:ts.AnyOf2<String, js.lib.Symbol>):Float;
	function prependListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Page;
	function prependOnceListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Page;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
	/**
		The method queries frame for the selector.
		If there's no such element within the frame, the method will resolve to null.
	**/
	@:native("$")
	function Dollar(selector:String):js.lib.Promise<Null<ElementHandle<js.html.DOMElement>>>;
	/**
		The method runs document.querySelectorAll within the frame.
		If no elements match the selector, the return value resolve to [].
	**/
	@:native("$$")
	function DollarDollar(selector:String):js.lib.Promise<Array<ElementHandle<js.html.DOMElement>>>;
	/**
		The method evaluates the XPath expression.
	**/
	@:native("$x")
	function DollarX(expression:String):js.lib.Promise<Array<ElementHandle<js.html.DOMElement>>>;
	/**
		Adds a `<script>` tag into the page with the desired url or content.
	**/
	function addScriptTag(options:ScriptTagOptions):js.lib.Promise<Void>;
	/**
		Adds a `<link rel="stylesheet">` tag into the page with the desired url or a `<style type="text/css">` tag with the content.
	**/
	function addStyleTag(options:StyleTagOptions):js.lib.Promise<Void>;
	/**
		This method fetches an element with selector, scrolls it into view if needed, and
		then uses `page.mouse` to click in the center of the element. If there's no element
		matching selector, the method throws an error.
	**/
	function click(selector:String, ?options:ClickOptions):js.lib.Promise<Void>;
	/**
		Gets the full HTML contents of the page, including the doctype.
	**/
	function content():js.lib.Promise<String>;
	/**
		Navigates to a URL.
	**/
	function goto(url:String, ?options:DirectNavigationOptions):js.lib.Promise<Null<Response>>;
	/**
		This method fetches an element with selector and focuses it.
	**/
	function focus(selector:String):js.lib.Promise<Void>;
	/**
		This method fetches an element with `selector`, scrolls it into view if needed,
		and then uses page.mouse to hover over the center of the element. If there's no
		element matching `selector`, the method throws an error.
	**/
	function hover(selector:String):js.lib.Promise<Void>;
	/**
		Triggers a `change` and `input` event once all the provided options have been selected.
		If there's no `<select>` element matching selector, the method throws an error.
	**/
	function select(selector:String, values:haxe.extern.Rest<String>):js.lib.Promise<Array<String>>;
	/**
		Sets the page content.
	**/
	function setContent(html:String, ?options:NavigationOptions):js.lib.Promise<Void>;
	/**
		This method fetches an element with `selector`, scrolls it into view if needed,
		and then uses page.touchscreen to tap in the center of the element.
	**/
	function tap(selector:String):js.lib.Promise<Void>;
	/**
		Sends a `keydown`, `keypress/input`, and `keyup` event for each character in the text.
	**/
	function type(selector:String, text:String, ?options:{ var delay : Float; }):js.lib.Promise<Void>;
	/**
		Waits for a certain amount of time before resolving.
		
		Shortcut for waitForSelector and waitForXPath
		
		Shortcut for waitForFunction.
	**/
	@:overload(function(selector:String, options:WaitForSelectorOptionsHidden):js.lib.Promise<Null<ElementHandle<js.html.DOMElement>>> { })
	@:overload(function(selector:String, ?options:WaitForSelectorOptions):js.lib.Promise<ElementHandle<js.html.DOMElement>> { })
	@:overload(function(selector:EvaluateFn<Dynamic>, ?options:WaitForSelectorOptions, args:haxe.extern.Rest<SerializableOrJSHandle>):js.lib.Promise<JSHandle<Dynamic>> { })
	function waitFor(duration:Float):js.lib.Promise<Void>;
	/**
		Allows waiting for various conditions.
	**/
	function waitForFunction(fn:EvaluateFn<Dynamic>, ?options:PageFnOptions, args:haxe.extern.Rest<SerializableOrJSHandle>):js.lib.Promise<JSHandle<Dynamic>>;
	/**
		Wait for the page navigation occur.
	**/
	function waitForNavigation(?options:NavigationOptions):js.lib.Promise<Response>;
	@:overload(function(selector:String, ?options:WaitForSelectorOptionsHidden):js.lib.Promise<Null<ElementHandle<js.html.DOMElement>>> { })
	function waitForSelector(selector:String, ?options:WaitForSelectorOptions):js.lib.Promise<ElementHandle<js.html.DOMElement>>;
	function waitForXPath(xpath:String, ?options:WaitForSelectorOptions):js.lib.Promise<ElementHandle<js.html.DOMElement>>;
	/**
		This method runs `document.querySelector` within the context and passes it as the first argument to `pageFunction`.
		If there's no element matching `selector`, the method throws an error.
		
		If `pageFunction` returns a Promise, then `$eval` would wait for the promise to resolve and return its value.
		
		This method runs `document.querySelector` within the context and passes it as the first argument to `pageFunction`.
		If there's no element matching `selector`, the method throws an error.
		
		If `pageFunction` returns a Promise, then `$eval` would wait for the promise to resolve and return its value.
		
		This method runs `document.querySelector` within the context and passes it as the first argument to `pageFunction`.
		If there's no element matching `selector`, the method throws an error.
		
		If `pageFunction` returns a Promise, then `$eval` would wait for the promise to resolve and return its value.
		
		This method runs `document.querySelector` within the context and passes it as the first argument to `pageFunction`.
		If there's no element matching `selector`, the method throws an error.
		
		If `pageFunction` returns a Promise, then `$eval` would wait for the promise to resolve and return its value.
		
		This method runs `document.querySelector` within the context and passes it as the first argument to `pageFunction`.
		If there's no element matching `selector`, the method throws an error.
		
		If `pageFunction` returns a Promise, then `$eval` would wait for the promise to resolve and return its value.
	**/
	@:native("$eval")
	@:overload(function<R, X1>(selector:String, pageFunction:(element:js.html.DOMElement, x1:UnwrapElementHandle<X1>) -> ts.AnyOf2<js.lib.Promise<R>, R>, x1:X1):js.lib.Promise<WrapElementHandle<R>> { })
	@:overload(function<R, X1, X2>(selector:String, pageFunction:(element:js.html.DOMElement, x1:UnwrapElementHandle<X1>, x2:UnwrapElementHandle<X2>) -> ts.AnyOf2<js.lib.Promise<R>, R>, x1:X1, x2:X2):js.lib.Promise<WrapElementHandle<R>> { })
	@:overload(function<R, X1, X2, X3>(selector:String, pageFunction:(element:js.html.DOMElement, x1:UnwrapElementHandle<X1>, x2:UnwrapElementHandle<X2>, x3:UnwrapElementHandle<X3>) -> ts.AnyOf2<js.lib.Promise<R>, R>, x1:X1, x2:X2, x3:X3):js.lib.Promise<WrapElementHandle<R>> { })
	@:overload(function<R>(selector:String, pageFunction:(element:js.html.DOMElement, args:haxe.extern.Rest<Dynamic>) -> ts.AnyOf2<js.lib.Promise<R>, R>, args:haxe.extern.Rest<SerializableOrJSHandle>):js.lib.Promise<WrapElementHandle<R>> { })
	function DollarEval<R>(selector:String, pageFunction:(element:js.html.DOMElement) -> ts.AnyOf2<js.lib.Promise<R>, R>):js.lib.Promise<WrapElementHandle<R>>;
	/**
		This method runs `Array.from(document.querySelectorAll(selector))` within the context and passes it as the
		first argument to `pageFunction`.
		
		If `pageFunction` returns a Promise, then `$$eval` would wait for the promise to resolve and return its value.
		
		This method runs `Array.from(document.querySelectorAll(selector))` within the context and passes it as the
		first argument to `pageFunction`.
		
		If `pageFunction` returns a Promise, then `$$eval` would wait for the promise to resolve and return its value.
		
		This method runs `Array.from(document.querySelectorAll(selector))` within the context and passes it as the
		first argument to `pageFunction`.
		
		If `pageFunction` returns a Promise, then `$$eval` would wait for the promise to resolve and return its value.
		
		This method runs `Array.from(document.querySelectorAll(selector))` within the context and passes it as the
		first argument to `pageFunction`.
		
		If `pageFunction` returns a Promise, then `$$eval` would wait for the promise to resolve and return its value.
		
		This method runs `Array.from(document.querySelectorAll(selector))` within the context and passes it as the
		first argument to `pageFunction`.
		
		If `pageFunction` returns a Promise, then `$$eval` would wait for the promise to resolve and return its value.
	**/
	@:native("$$eval")
	@:overload(function<R, X1>(selector:String, pageFunction:(elements:Array<js.html.DOMElement>, x1:UnwrapElementHandle<X1>) -> ts.AnyOf2<js.lib.Promise<R>, R>, x1:X1):js.lib.Promise<WrapElementHandle<R>> { })
	@:overload(function<R, X1, X2>(selector:String, pageFunction:(elements:Array<js.html.DOMElement>, x1:UnwrapElementHandle<X1>, x2:UnwrapElementHandle<X2>) -> ts.AnyOf2<js.lib.Promise<R>, R>, x1:X1, x2:X2):js.lib.Promise<WrapElementHandle<R>> { })
	@:overload(function<R, X1, X2, X3>(selector:String, pageFunction:(elements:Array<js.html.DOMElement>, x1:UnwrapElementHandle<X1>, x2:UnwrapElementHandle<X2>, x3:UnwrapElementHandle<X3>) -> ts.AnyOf2<js.lib.Promise<R>, R>, x1:X1, x2:X2, x3:X3):js.lib.Promise<WrapElementHandle<R>> { })
	@:overload(function<R>(selector:String, pageFunction:(elements:Array<js.html.DOMElement>, args:haxe.extern.Rest<Dynamic>) -> ts.AnyOf2<js.lib.Promise<R>, R>, args:haxe.extern.Rest<SerializableOrJSHandle>):js.lib.Promise<WrapElementHandle<R>> { })
	function DollarDollarEval<R>(selector:String, pageFunction:(elements:Array<js.html.DOMElement>) -> ts.AnyOf2<js.lib.Promise<R>, R>):js.lib.Promise<WrapElementHandle<R>>;
	/**
		Evaluates a function in the browser context.
		If the function, passed to the frame.evaluate, returns a Promise, then frame.evaluate would wait for the promise to resolve and return its value.
		If the function passed into frame.evaluate returns a non-Serializable value, then frame.evaluate resolves to undefined.
	**/
	function evaluate<T>(pageFunction:T, args:haxe.extern.Rest<SerializableOrJSHandle>):js.lib.Promise<Dynamic>;
	/**
		The only difference between `evaluate` and `evaluateHandle` is that `evaluateHandle` returns in-page object (`JSHandle`).
		If the function, passed to the `evaluateHandle`, returns a `Promise`, then `evaluateHandle` would wait for the
		promise to resolve and return its value.
	**/
	function evaluateHandle(pageFunction:ts.AnyOf2<String, (arg1:Dynamic, args:haxe.extern.Rest<Dynamic>) -> Dynamic>, args:haxe.extern.Rest<SerializableOrJSHandle>):js.lib.Promise<JSHandle<Dynamic>>;
};