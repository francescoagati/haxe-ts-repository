package node_fetch_plus.url;
@:jsRequire("url", "URLSearchParams") extern class URLSearchParams {
	function new(?init:ts.AnyOf5<String, URLSearchParams, ts.lib.Iterable<ts.Tuple2<String, String>>, global.nodejs.Dict<ts.AnyOf2<String, Array<String>>>, Array<ts.Tuple2<String, String>>>);
	function append(name:String, value:String):Void;
	function delete(name:String):Void;
	function entries():ts.lib.IterableIterator<ts.Tuple2<String, String>>;
	function forEach(callback:(value:String, name:String, searchParams:URLSearchParams) -> Void):Void;
	function get(name:String):Null<String>;
	function getAll(name:String):Array<String>;
	function has(name:String):Bool;
	function keys():ts.lib.IterableIterator<String>;
	function set(name:String, value:String):Void;
	function sort():Void;
	/**
		Returns a string representation of an object.
	**/
	function toString():String;
	function values():ts.lib.IterableIterator<String>;
}