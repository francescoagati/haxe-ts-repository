package baconjs;
@jsInaccessible extern class Source<In, Out> {
	function new<In, Out>(obs:baconjs.Observable<In>, sync:Bool);
	var _isSource : Bool;
	var obs : baconjs.Observable<In>;
	var sync : Bool;
	var flatten : Bool;
	var ended : Bool;
	function subscribe(sink:baconjs.EventSink<In>):baconjs.Unsub;
	function toString():String;
	function markEnded():Void;
	function consume():Null<baconjs.Event<Out>>;
	function mayHave(count:Float):Bool;
	function hasAtLeast(count:Float):Bool;
	function push(event:baconjs.Event<In>):Void;
}