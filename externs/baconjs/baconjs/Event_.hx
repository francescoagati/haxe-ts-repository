package baconjs;
/**
	Base class for all events passed through [EventStreams](eventstream.html) and [Properties](property.html).
**/
@:jsRequire("baconjs", "Event") extern class Event_<V> {
	var id : Float;
	var isEvent : Bool;
	var _isEvent : Bool;
	var isEnd : Bool;
	var isInitial : Bool;
	var isNext : Bool;
	var isError : Bool;
	var hasValue : Bool;
	function filter(f:(value:V) -> Bool):Bool;
	function inspect():String;
	function log():Dynamic;
	function toNext():Event_<V>;
	function fmap<V2>(f:(value:V) -> V2):Event_<V2>;
}