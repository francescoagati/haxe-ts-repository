package baconjs;
/**
	An event carrying an error. You can use [onError](observable.html#onerror) to subscribe to errors.
**/
@:jsRequire("baconjs", "Error") extern class Error extends NoValue {
	function new(error:Dynamic);
	/**
		The actual error object carried by this event
	**/
	var error : Dynamic;
	/**
		Returns a string representation of an object.
	**/
	function toString():String;
}