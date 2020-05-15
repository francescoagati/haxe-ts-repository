package rxjs;
typedef SubscriptionLike = {
	function unsubscribe():Void;
	final closed : Bool;
};