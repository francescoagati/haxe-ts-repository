package baconjs;
/**
	Base class for all [Events](event.html) carrying a value.
	
	Can be distinguished from other events using [hasValue](../globals.html#hasvalue)
**/
@:jsRequire("baconjs", "Value") extern class Value<V> extends Event_<V> {
	function new<V>(value:V);
	var value : V;
	function fmap<V2>(f:(value:V) -> V2):Value<V2>;
	/**
		Returns a string representation of an object.
	**/
	function toString():String;
	function apply<V2>(value:V2):Value<V2>;
}