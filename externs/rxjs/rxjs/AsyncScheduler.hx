package rxjs;
@jsInaccessible extern class AsyncScheduler extends rxjs.Scheduler {
	function new(SchedulerAction:{ var EMPTY : rxjs.Subscription; }, ?now:() -> Float);
	var actions : Array<rxjs.AsyncAction<Dynamic>>;
	/**
		A flag to indicate whether the Scheduler is currently executing a batch of
		queued actions.
	**/
	var active : Bool;
	/**
		An internal ID used to track the latest asynchronous task such as those
		coming from `setTimeout`, `setInterval`, `requestAnimationFrame`, and
		others.
	**/
	var scheduled : Dynamic;
	function flush(action:rxjs.AsyncAction<Dynamic>):Void;
	@:optional
	static var delegate : rxjs.Scheduler;
}