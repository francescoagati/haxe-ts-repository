package baconjs;
/**
	an "unsubscribe" function returned by [subscribe](classes/Observable.html#subscribe) et al. You can cancel your subscription by calling this function.
**/
typedef Unsub = () -> Void;