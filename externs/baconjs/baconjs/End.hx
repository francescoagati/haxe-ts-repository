package baconjs;
/**
	An event that indicates the end of an [EventStream](classes/eventstream.html) or a [Property](classes/property.html).
	No more events can be emitted after this one.
	
	Can be distinguished from other events using [isEnd](../globals.html#isend)
**/
@:jsRequire("baconjs", "End") extern class End extends NoValue {
	/**
		Returns a string representation of an object.
	**/
	function toString():String;
}