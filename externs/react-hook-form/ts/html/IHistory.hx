package ts.html;
/**
	Allows manipulation of the browser session history, that is the pages visited in the tab or frame that the current page is loaded in.
**/
typedef IHistory = {
	final length : Float;
	var scrollRestoration : ScrollRestoration;
	final state : Dynamic;
	function back():Void;
	function forward():Void;
	function go(?delta:Float):Void;
	function pushState(data:Dynamic, title:String, ?url:String):Void;
	function replaceState(data:Dynamic, title:String, ?url:String):Void;
};