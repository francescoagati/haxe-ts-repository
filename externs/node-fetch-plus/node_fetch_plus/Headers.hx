package node_fetch_plus;
@jsInaccessible extern class Headers {
	function new(?init:ts.AnyOf2<node_fetch_plus.Headers, { }>);
	function forEach(callback:(value:String, name:String) -> Void):Void;
	function append(name:String, value:String):Void;
	function delete(name:String):Void;
	function get(name:String):Null<String>;
	function getAll(name:String):Array<String>;
	function has(name:String):Bool;
	function raw():{ };
	function set(name:String, value:String):Void;
	function entries():ts.lib.Iterator<ts.Tuple2<String, String>, Dynamic, Null<Any>>;
	function keys():ts.lib.Iterator<String, Dynamic, Null<Any>>;
	function values():ts.lib.Iterator<ts.Tuple1<String>, Dynamic, Null<Any>>;
}