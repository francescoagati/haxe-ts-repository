package baconjs;
/**
	An event carrying the initial value of a [Property](classes/property.html). This event can be emitted by a property
	immediately when subscribing to it.
	
	Can be distinguished from other events using [isInitial](../globals.html#isinitial)
**/
@:jsRequire("baconjs", "Initial") extern class Initial<V> extends Value<V> {
	function new<V>(value:V);
	function apply<V2>(value:V2):Initial<V2>;
	var _isInitial : Bool;
	function toNext():Next<V>;
}