package puppeteer;

/**
	Defines `$eval` and `$$eval` for Page, Frame and ElementHandle.
**/
typedef Evalable = {
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
};