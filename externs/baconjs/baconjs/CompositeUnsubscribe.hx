package baconjs;
@:jsRequire("baconjs", "CompositeUnsubscribe") extern class CompositeUnsubscribe {
	function new(?ss:Array<Subscription>);
	var unsubscribed : Bool;
	var subscriptions : Array<Unsub>;
	var starting : Array<Subscription>;
	function add(subscription:Subscription):Void;
	function remove(unsub:Unsub):Void;
	function unsubscribe():Void;
	function count():Float;
	function empty():Bool;
}