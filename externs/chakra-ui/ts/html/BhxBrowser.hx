package ts.html;
@:native("BhxBrowser") extern class BhxBrowser {
	function new();
	final lastError : DOMException;
	function checkMatchesGlobExpression(pattern:String, value:String):Bool;
	function checkMatchesUriExpression(pattern:String, value:String):Bool;
	function clearLastError():Void;
	function currentWindowId():Float;
	function fireExtensionApiTelemetry(functionName:String, isSucceeded:Bool, isSupported:Bool, errorString:String):Void;
	function genericFunction(functionId:Float, destination:Dynamic, ?parameters:String, ?callbackId:Float):Void;
	function genericSynchronousFunction(functionId:Float, ?parameters:String):String;
	function getExtensionId():String;
	function getThisAddress():Dynamic;
	function registerGenericFunctionCallbackHandler(callbackHandler:ts.lib.Function):Void;
	function registerGenericListenerHandler(eventHandler:ts.lib.Function):Void;
	function setLastError(parameters:String):Void;
	function webPlatformGenericFunction(destination:Dynamic, ?parameters:String, ?callbackId:Float):Void;
	static var prototype : BhxBrowser;
}