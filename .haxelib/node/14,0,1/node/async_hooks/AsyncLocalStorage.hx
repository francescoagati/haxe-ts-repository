package node.async_hooks;

/**
	When having multiple instances of `AsyncLocalStorage`, they are independent
	from each other. It is safe to instantiate this class multiple times.
**/
@:jsRequire("async_hooks", "AsyncLocalStorage") extern class AsyncLocalStorage<T> {
	function new();
	/**
		This method disables the instance of `AsyncLocalStorage`. All subsequent calls
		to `asyncLocalStorage.getStore()` will return `undefined` until
		`asyncLocalStorage.run()` or `asyncLocalStorage.runSyncAndReturn()`
		is called again.
		
		When calling `asyncLocalStorage.disable()`, all current contexts linked to the
		instance will be exited.
		
		Calling `asyncLocalStorage.disable()` is required before the
		`asyncLocalStorage` can be garbage collected. This does not apply to stores
		provided by the `asyncLocalStorage`, as those objects are garbage collected
		along with the corresponding async resources.
		
		This method is to be used when the `asyncLocalStorage` is not in use anymore
		in the current process.
	**/
	function disable():Void;
	/**
		This method returns the current store.
		If this method is called outside of an asynchronous context initialized by
		calling `asyncLocalStorage.run` or `asyncLocalStorage.runAndReturn`, it will
		return `undefined`.
	**/
	function getStore():Null<T>;
	/**
		Calling `asyncLocalStorage.run(callback)` will create a new asynchronous
		context.
		Within the callback function and the asynchronous operations from the callback,
		`asyncLocalStorage.getStore()` will return an instance of `Map` known as
		"the store". This store will be persistent through the following
		asynchronous calls.
		
		The callback will be ran asynchronously. Optionally, arguments can be passed
		to the function. They will be passed to the callback function.
		
		If an error is thrown by the callback function, it will not be caught by
		a `try/catch` block as the callback is ran in a new asynchronous resource.
		Also, the stacktrace will be impacted by the asynchronous call.
	**/
	function run(store:T, callback:(args:haxe.extern.Rest<Dynamic>) -> Void, args:haxe.extern.Rest<Dynamic>):Void;
	/**
		Calling `asyncLocalStorage.exit(callback)` will create a new asynchronous
		context.
		Within the callback function and the asynchronous operations from the callback,
		`asyncLocalStorage.getStore()` will return `undefined`.
		
		The callback will be ran asynchronously. Optionally, arguments can be passed
		to the function. They will be passed to the callback function.
		
		If an error is thrown by the callback function, it will not be caught by
		a `try/catch` block as the callback is ran in a new asynchronous resource.
		Also, the stacktrace will be impacted by the asynchronous call.
	**/
	function exit(callback:(args:haxe.extern.Rest<Dynamic>) -> Void, args:haxe.extern.Rest<Dynamic>):Void;
	/**
		Calling `asyncLocalStorage.enterWith(store)` will transition into the context
		for the remainder of the current synchronous execution and will persist
		through any following asynchronous calls.
	**/
	function enterWith(store:T):Void;
	static var prototype : AsyncLocalStorage<Dynamic>;
}