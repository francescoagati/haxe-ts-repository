package ts.lib;
typedef ErrorConstructor = {
	@:selfCall
	function call(?message:String):Error;
	final prototype : Error;
	/**
		Create .stack property on a target object
	**/
	function captureStackTrace(targetObject:Dynamic, ?constructorOpt:Function):Void;
	/**
		Optional override for formatting stack traces
	**/
	@:optional
	var prepareStackTrace : (err:Error, stackTraces:Array<global.nodejs.CallSite>) -> Dynamic;
	var stackTraceLimit : Float;
};