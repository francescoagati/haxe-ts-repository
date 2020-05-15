package ts.lib;
@:native("Error") extern class Error {
	function new(?message:String);
	var name : String;
	var message : String;
	@:optional
	var stack : String;
	@:selfCall
	static function call(?message:String):Error;
	static final prototype : Error;
	/**
		Create .stack property on a target object
	**/
	static function captureStackTrace(targetObject:Dynamic, ?constructorOpt:Function):Void;
	/**
		Optional override for formatting stack traces
	**/
	@:optional
	static var prepareStackTrace : (err:Error, stackTraces:Array<global.nodejs.CallSite>) -> Dynamic;
	static var stackTraceLimit : Float;
}