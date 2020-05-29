package puppeteer;

/**
	The Worker class represents a WebWorker.
	The events workercreated and workerdestroyed are emitted on the page object to signal the worker lifecycle.
**/
typedef Worker = {
	function executionContext():js.lib.Promise<ExecutionContext>;
	function url():String;
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