package baconjs;
/**
	Indicates a new value in an [EventStream](eventstream.html) or a [Property](property.html).
	
	Can be distinguished from other events using [isNext](../globals.html#isnext)
**/
@:jsRequire("baconjs", "Next") extern class Next<V> extends Value<V> {
	function new<V>(value:V);
	function apply<V2>(value:V2):Next<V2>;
	var _isNext : Bool;
}