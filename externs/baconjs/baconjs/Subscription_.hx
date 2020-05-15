package baconjs;
typedef Subscription_<V> = {
	var input : baconjs.Observable<V>;
	var unsub : Null<baconjs.Unsub>;
};