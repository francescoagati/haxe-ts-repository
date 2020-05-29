package puppeteer;

typedef Frame = {
	function childFrames():Array<Frame>;
	/**
		Execution context associated with this frame.
	**/
	function executionContext():ExecutionContext;
	/**
		Returns `true` if the frame has been detached, or `false` otherwise.
	**/
	function isDetached():Bool;
	/**
		Returns frame's name attribute as specified in the tag.
	**/
	function name():String;
	/**
		Returns parent frame, if any. Detached frames and main frames return null.
	**/
	function parentFrame():Null<Frame>;
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
		Returns page's title.
	**/
	function title():js.lib.Promise<String>;
	/**
		Sends a `keydown`, `keypress/input`, and `keyup` event for each character in the text.
	**/
	function type(selector:String, text:String, ?options:{ var delay : Float; }):js.lib.Promise<Void>;
	/**
		Returns frame's url.
	**/
	function url():String;
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