package rxjs;
/**
	A unit of work to be executed in a `scheduler`. An action is typically
	created from within a {@link SchedulerLike} and an RxJS user does not need to concern
	themselves about creating and manipulating an Action.
	
	```ts
	class Action<T> extends Subscription {
	   new (scheduler: Scheduler, work: (state?: T) => void);
	   schedule(state?: T, delay: number = 0): Subscription;
	}
	```
**/
@jsInaccessible extern class Action<T> extends rxjs.Subscription {
	function new<T>(scheduler:rxjs.Scheduler, work:ts.AnyOf2<() -> Void, (state:T) -> Void>);
	/**
		Schedules this action on its parent {@link SchedulerLike} for execution. May be passed
		some context object, `state`. May happen at some point in the future,
		according to the `delay` parameter, if specified.
	**/
	function schedule(?state:T, ?delay:Float):rxjs.Subscription;
}