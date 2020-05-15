package rxjs;
typedef RefCountSubscription = {
	var count : Float;
	var unsubscribe : () -> Void;
	var closed : Bool;
	var attemptedToUnsubscribe : Bool;
};