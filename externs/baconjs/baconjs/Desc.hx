package baconjs;
@:jsRequire("baconjs", "Desc") extern class Desc {
	function new(context:Dynamic, method:String, ?args:Array<Dynamic>);
	var context : Dynamic;
	@:optional
	var method : String;
	var args : Array<Dynamic>;
	@:optional
	var cachedDeps : Array<Observable<Dynamic>>;
	var _isDesc : Bool;
	function deps():Array<Observable<Dynamic>>;
	function toString():String;
}