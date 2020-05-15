package rxjs;
/**
	SCHEDULER INTERFACES
**/
typedef SchedulerLike = {
	function now():Float;
	function schedule<T>(work:ts.AnyOf2<() -> Void, (state:T) -> Void>, ?delay:Float, ?state:T):Subscription;
};