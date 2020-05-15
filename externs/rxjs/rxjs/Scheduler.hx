package rxjs;
/**
	An execution context and a data structure to order tasks and schedule their
	execution. Provides a notion of (potentially virtual) time, through the
	`now()` getter method.
	
	Each unit of work in a Scheduler is called an `Action`.
	
	```ts
	class Scheduler {
	   now(): number;
	   schedule(work, delay?, state?): Subscription;
	}
	```
**/
@:jsRequire("rxjs", "Scheduler") extern class Scheduler {
	function new(SchedulerAction:{ var EMPTY : Subscription; }, ?now:() -> Float);
	@:noCompletion
	var SchedulerAction : Dynamic;
	/**
		A getter method that returns a number representing the current time
		(at the time this function was called) according to the scheduler's own
		internal clock.
	**/
	var now : () -> Float;
	/**
		Schedules a function, `work`, for execution. May happen at some point in
		the future, according to the `delay` parameter, if specified. May be passed
		some context object, `state`, which will be passed to the `work` function.
		
		The given arguments will be processed an stored as an Action object in a
		queue of actions.
	**/
	function schedule<T>(work:ts.AnyOf2<() -> Void, (state:T) -> Void>, ?delay:Float, ?state:T):Subscription;
	/**
		Note: the extra arrow function wrapper is to make testing by overriding
		Date.now easier.
	**/
	@:native("now")
	static var now_ : () -> Float;
}