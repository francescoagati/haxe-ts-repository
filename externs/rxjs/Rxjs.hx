@:jsRequire("rxjs") @valueModuleOnly extern class Rxjs {
	/**
		Symbol.observable or a string "@@observable". Used for interop
	**/
	static var observable : ts.AnyOf2<String, js.lib.Symbol>;
	/**
		Asap Scheduler
		
		<span class="informal">Perform task as fast as it can be performed asynchronously</span>
		
		`asap` scheduler behaves the same as {@link asyncScheduler} scheduler when you use it to delay task
		in time. If however you set delay to `0`, `asap` will wait for current synchronously executing
		code to end and then it will try to execute given task as fast as possible.
		
		`asap` scheduler will do its best to minimize time between end of currently executing code
		and start of scheduled task. This makes it best candidate for performing so called "deferring".
		Traditionally this was achieved by calling `setTimeout(deferredTask, 0)`, but that technique involves
		some (although minimal) unwanted delay.
		
		Note that using `asap` scheduler does not necessarily mean that your task will be first to process
		after currently executing code. In particular, if some task was also scheduled with `asap` before,
		that task will execute first. That being said, if you need to schedule task asynchronously, but
		as soon as possible, `asap` scheduler is your best bet.
		
		## Example
		Compare async and asap scheduler<
		```ts
		import { asapScheduler, asyncScheduler } from 'rxjs';
		
		asyncScheduler.schedule(() => console.log('async')); // scheduling 'async' first...
		asapScheduler.schedule(() => console.log('asap'));
		
		// Logs:
		// "asap"
		// "async"
		// ... but 'asap' goes first!
		```
	**/
	static var asapScheduler : rxjs.AsapScheduler;
	/**
		Async Scheduler
		
		<span class="informal">Schedule task as if you used setTimeout(task, duration)</span>
		
		`async` scheduler schedules tasks asynchronously, by putting them on the JavaScript
		event loop queue. It is best used to delay tasks in time or to schedule tasks repeating
		in intervals.
		
		If you just want to "defer" task, that is to perform it right after currently
		executing synchronous code ends (commonly achieved by `setTimeout(deferredTask, 0)`),
		better choice will be the {@link asapScheduler} scheduler.
		
		## Examples
		Use async scheduler to delay task
		```ts
		import { asyncScheduler } from 'rxjs';
		
		const task = () => console.log('it works!');
		
		asyncScheduler.schedule(task, 2000);
		
		// After 2 seconds logs:
		// "it works!"
		```
		
		Use async scheduler to repeat task in intervals
		```ts
		import { asyncScheduler } from 'rxjs';
		
		function task(state) {
		   console.log(state);
		   this.schedule(state + 1, 1000); // `this` references currently executing Action,
		                                   // which we reschedule with new state and delay
		}
		
		asyncScheduler.schedule(task, 3000, 0);
		
		// Logs:
		// 0 after 3s
		// 1 after 4s
		// 2 after 5s
		// 3 after 6s
		```
	**/
	static var asyncScheduler : rxjs.AsyncScheduler;
	/**
		Queue Scheduler
		
		<span class="informal">Put every next task on a queue, instead of executing it immediately</span>
		
		`queue` scheduler, when used with delay, behaves the same as {@link asyncScheduler} scheduler.
		
		When used without delay, it schedules given task synchronously - executes it right when
		it is scheduled. However when called recursively, that is when inside the scheduled task,
		another task is scheduled with queue scheduler, instead of executing immediately as well,
		that task will be put on a queue and wait for current one to finish.
		
		This means that when you execute task with `queue` scheduler, you are sure it will end
		before any other task scheduled with that scheduler will start.
		
		## Examples
		Schedule recursively first, then do something
		```ts
		import { queueScheduler } from 'rxjs';
		
		queueScheduler.schedule(() => {
		   queueScheduler.schedule(() => console.log('second')); // will not happen now, but will be put on a queue
		
		   console.log('first');
		});
		
		// Logs:
		// "first"
		// "second"
		```
		
		Reschedule itself recursively
		```ts
		import { queueScheduler } from 'rxjs';
		
		queueScheduler.schedule(function(state) {
		   if (state !== 0) {
		     console.log('before', state);
		     this.schedule(state - 1); // `this` references currently executing Action,
		                               // which we reschedule with new state
		     console.log('after', state);
		   }
		}, 0, 3);
		
		// In scheduler that runs recursively, you would expect:
		// "before", 3
		// "before", 2
		// "before", 1
		// "after", 1
		// "after", 2
		// "after", 3
		
		// But with queue it logs:
		// "before", 3
		// "after", 3
		// "before", 2
		// "after", 2
		// "before", 1
		// "after", 1
		```
	**/
	static var queueScheduler : rxjs.QueueScheduler;
	/**
		Animation Frame Scheduler
		
		<span class="informal">Perform task when `window.requestAnimationFrame` would fire</span>
		
		When `animationFrame` scheduler is used with delay, it will fall back to {@link asyncScheduler} scheduler
		behaviour.
		
		Without delay, `animationFrame` scheduler can be used to create smooth browser animations.
		It makes sure scheduled task will happen just before next browser content repaint,
		thus performing animations as efficiently as possible.
		
		## Example
		Schedule div height animation
		```ts
		// html: <div style="background: #0ff;"></div>
		import { animationFrameScheduler } from 'rxjs';
		
		const div = document.querySelector('div');
		
		animationFrameScheduler.schedule(function(height) {
		   div.style.height = height + "px";
		
		   this.schedule(height + 1);  // `this` references currently executing Action,
		                               // which we reschedule with new state
		}, 0, 0);
		
		// You will see a div element growing in height
		```
	**/
	static var animationFrameScheduler : rxjs.AnimationFrameScheduler;
	@:overload(function<T, A>(fn1:rxjs.UnaryFunction<T, A>):rxjs.UnaryFunction<T, A> { })
	@:overload(function<T, A, B>(fn1:rxjs.UnaryFunction<T, A>, fn2:rxjs.UnaryFunction<A, B>):rxjs.UnaryFunction<T, B> { })
	@:overload(function<T, A, B, C>(fn1:rxjs.UnaryFunction<T, A>, fn2:rxjs.UnaryFunction<A, B>, fn3:rxjs.UnaryFunction<B, C>):rxjs.UnaryFunction<T, C> { })
	@:overload(function<T, A, B, C, D>(fn1:rxjs.UnaryFunction<T, A>, fn2:rxjs.UnaryFunction<A, B>, fn3:rxjs.UnaryFunction<B, C>, fn4:rxjs.UnaryFunction<C, D>):rxjs.UnaryFunction<T, D> { })
	@:overload(function<T, A, B, C, D, E>(fn1:rxjs.UnaryFunction<T, A>, fn2:rxjs.UnaryFunction<A, B>, fn3:rxjs.UnaryFunction<B, C>, fn4:rxjs.UnaryFunction<C, D>, fn5:rxjs.UnaryFunction<D, E>):rxjs.UnaryFunction<T, E> { })
	@:overload(function<T, A, B, C, D, E, F>(fn1:rxjs.UnaryFunction<T, A>, fn2:rxjs.UnaryFunction<A, B>, fn3:rxjs.UnaryFunction<B, C>, fn4:rxjs.UnaryFunction<C, D>, fn5:rxjs.UnaryFunction<D, E>, fn6:rxjs.UnaryFunction<E, F>):rxjs.UnaryFunction<T, F> { })
	@:overload(function<T, A, B, C, D, E, F, G>(fn1:rxjs.UnaryFunction<T, A>, fn2:rxjs.UnaryFunction<A, B>, fn3:rxjs.UnaryFunction<B, C>, fn4:rxjs.UnaryFunction<C, D>, fn5:rxjs.UnaryFunction<D, E>, fn6:rxjs.UnaryFunction<E, F>, fn7:rxjs.UnaryFunction<F, G>):rxjs.UnaryFunction<T, G> { })
	@:overload(function<T, A, B, C, D, E, F, G, H>(fn1:rxjs.UnaryFunction<T, A>, fn2:rxjs.UnaryFunction<A, B>, fn3:rxjs.UnaryFunction<B, C>, fn4:rxjs.UnaryFunction<C, D>, fn5:rxjs.UnaryFunction<D, E>, fn6:rxjs.UnaryFunction<E, F>, fn7:rxjs.UnaryFunction<F, G>, fn8:rxjs.UnaryFunction<G, H>):rxjs.UnaryFunction<T, H> { })
	@:overload(function<T, A, B, C, D, E, F, G, H, I>(fn1:rxjs.UnaryFunction<T, A>, fn2:rxjs.UnaryFunction<A, B>, fn3:rxjs.UnaryFunction<B, C>, fn4:rxjs.UnaryFunction<C, D>, fn5:rxjs.UnaryFunction<D, E>, fn6:rxjs.UnaryFunction<E, F>, fn7:rxjs.UnaryFunction<F, G>, fn8:rxjs.UnaryFunction<G, H>, fn9:rxjs.UnaryFunction<H, I>):rxjs.UnaryFunction<T, I> { })
	@:overload(function<T, A, B, C, D, E, F, G, H, I>(fn1:rxjs.UnaryFunction<T, A>, fn2:rxjs.UnaryFunction<A, B>, fn3:rxjs.UnaryFunction<B, C>, fn4:rxjs.UnaryFunction<C, D>, fn5:rxjs.UnaryFunction<D, E>, fn6:rxjs.UnaryFunction<E, F>, fn7:rxjs.UnaryFunction<F, G>, fn8:rxjs.UnaryFunction<G, H>, fn9:rxjs.UnaryFunction<H, I>, fns:haxe.extern.Rest<rxjs.UnaryFunction<Dynamic, Dynamic>>):rxjs.UnaryFunction<T, { }> { })
	static function pipe<T>():rxjs.UnaryFunction<T, T>;
	static function noop():Void;
	static function identity<T>(x:T):T;
	/**
		Tests to see if the object is an RxJS {@link Observable}
	**/
	static function isObservable<T>(obj:Dynamic):Bool;
	@:overload(function<R1, R2, R3, R4>(callbackFunc:(callback:(res1:R1, res2:R2, res3:R3, res4:R4, args:haxe.extern.Rest<Dynamic>) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):() -> rxjs.Observable<Array<Dynamic>> { })
	@:overload(function<R1, R2, R3>(callbackFunc:(callback:(res1:R1, res2:R2, res3:R3) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):() -> rxjs.Observable<ts.Tuple3<R1, R2, R3>> { })
	@:overload(function<R1, R2>(callbackFunc:(callback:(res1:R1, res2:R2) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):() -> rxjs.Observable<ts.Tuple2<R1, R2>> { })
	@:overload(function<R1>(callbackFunc:(callback:(res1:R1) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):() -> rxjs.Observable<R1> { })
	@:overload(function(callbackFunc:(callback:() -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):() -> rxjs.Observable<Void> { })
	@:overload(function<A1, R1, R2, R3, R4>(callbackFunc:(arg1:A1, callback:(res1:R1, res2:R2, res3:R3, res4:R4, args:haxe.extern.Rest<Dynamic>) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1) -> rxjs.Observable<Array<Dynamic>> { })
	@:overload(function<A1, R1, R2, R3>(callbackFunc:(arg1:A1, callback:(res1:R1, res2:R2, res3:R3) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1) -> rxjs.Observable<ts.Tuple3<R1, R2, R3>> { })
	@:overload(function<A1, R1, R2>(callbackFunc:(arg1:A1, callback:(res1:R1, res2:R2) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1) -> rxjs.Observable<ts.Tuple2<R1, R2>> { })
	@:overload(function<A1, R1>(callbackFunc:(arg1:A1, callback:(res1:R1) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1) -> rxjs.Observable<R1> { })
	@:overload(function<A1>(callbackFunc:(arg1:A1, callback:() -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1) -> rxjs.Observable<Void> { })
	@:overload(function<A1, A2, R1, R2, R3, R4>(callbackFunc:(arg1:A1, arg2:A2, callback:(res1:R1, res2:R2, res3:R3, res4:R4, args:haxe.extern.Rest<Dynamic>) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1, arg2:A2) -> rxjs.Observable<Array<Dynamic>> { })
	@:overload(function<A1, A2, R1, R2, R3>(callbackFunc:(arg1:A1, arg2:A2, callback:(res1:R1, res2:R2, res3:R3) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1, arg2:A2) -> rxjs.Observable<ts.Tuple3<R1, R2, R3>> { })
	@:overload(function<A1, A2, R1, R2>(callbackFunc:(arg1:A1, arg2:A2, callback:(res1:R1, res2:R2) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1, arg2:A2) -> rxjs.Observable<ts.Tuple2<R1, R2>> { })
	@:overload(function<A1, A2, R1>(callbackFunc:(arg1:A1, arg2:A2, callback:(res1:R1) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1, arg2:A2) -> rxjs.Observable<R1> { })
	@:overload(function<A1, A2>(callbackFunc:(arg1:A1, arg2:A2, callback:() -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1, arg2:A2) -> rxjs.Observable<Void> { })
	@:overload(function<A1, A2, A3, R1, R2, R3, R4>(callbackFunc:(arg1:A1, arg2:A2, arg3:A3, callback:(res1:R1, res2:R2, res3:R3, res4:R4, args:haxe.extern.Rest<Dynamic>) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1, arg2:A2, arg3:A3) -> rxjs.Observable<Array<Dynamic>> { })
	@:overload(function<A1, A2, A3, R1, R2, R3>(callbackFunc:(arg1:A1, arg2:A2, arg3:A3, callback:(res1:R1, res2:R2, res3:R3) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1, arg2:A2, arg3:A3) -> rxjs.Observable<ts.Tuple3<R1, R2, R3>> { })
	@:overload(function<A1, A2, A3, R1, R2>(callbackFunc:(arg1:A1, arg2:A2, arg3:A3, callback:(res1:R1, res2:R2) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1, arg2:A2, arg3:A3) -> rxjs.Observable<ts.Tuple2<R1, R2>> { })
	@:overload(function<A1, A2, A3, R1>(callbackFunc:(arg1:A1, arg2:A2, arg3:A3, callback:(res1:R1) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1, arg2:A2, arg3:A3) -> rxjs.Observable<R1> { })
	@:overload(function<A1, A2, A3>(callbackFunc:(arg1:A1, arg2:A2, arg3:A3, callback:() -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1, arg2:A2, arg3:A3) -> rxjs.Observable<Void> { })
	@:overload(function<A1, A2, A3, A4, R1, R2, R3, R4>(callbackFunc:(arg1:A1, arg2:A2, arg3:A3, arg4:A4, callback:(res1:R1, res2:R2, res3:R3, res4:R4, args:haxe.extern.Rest<Dynamic>) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1, arg2:A2, arg3:A3, arg4:A4) -> rxjs.Observable<Array<Dynamic>> { })
	@:overload(function<A1, A2, A3, A4, R1, R2, R3>(callbackFunc:(arg1:A1, arg2:A2, arg3:A3, arg4:A4, callback:(res1:R1, res2:R2, res3:R3) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1, arg2:A2, arg3:A3, arg4:A4) -> rxjs.Observable<ts.Tuple3<R1, R2, R3>> { })
	@:overload(function<A1, A2, A3, A4, R1, R2>(callbackFunc:(arg1:A1, arg2:A2, arg3:A3, arg4:A4, callback:(res1:R1, res2:R2) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1, arg2:A2, arg3:A3, arg4:A4) -> rxjs.Observable<ts.Tuple2<R1, R2>> { })
	@:overload(function<A1, A2, A3, A4, R1>(callbackFunc:(arg1:A1, arg2:A2, arg3:A3, arg4:A4, callback:(res1:R1) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1, arg2:A2, arg3:A3, arg4:A4) -> rxjs.Observable<R1> { })
	@:overload(function<A1, A2, A3, A4>(callbackFunc:(arg1:A1, arg2:A2, arg3:A3, arg4:A4, callback:() -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1, arg2:A2, arg3:A3, arg4:A4) -> rxjs.Observable<Void> { })
	@:overload(function<A1, A2, A3, A4, A5, R1, R2, R3, R4>(callbackFunc:(arg1:A1, arg2:A2, arg3:A3, arg4:A4, arg5:A5, callback:(res1:R1, res2:R2, res3:R3, res4:R4, args:haxe.extern.Rest<Dynamic>) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1, arg2:A2, arg3:A3, arg4:A4, arg5:A5) -> rxjs.Observable<Array<Dynamic>> { })
	@:overload(function<A1, A2, A3, A4, A5, R1, R2, R3>(callbackFunc:(arg1:A1, arg2:A2, arg3:A3, arg4:A4, arg5:A5, callback:(res1:R1, res2:R2, res3:R3) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1, arg2:A2, arg3:A3, arg4:A4, arg5:A5) -> rxjs.Observable<ts.Tuple3<R1, R2, R3>> { })
	@:overload(function<A1, A2, A3, A4, A5, R1, R2>(callbackFunc:(arg1:A1, arg2:A2, arg3:A3, arg4:A4, arg5:A5, callback:(res1:R1, res2:R2) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1, arg2:A2, arg3:A3, arg4:A4, arg5:A5) -> rxjs.Observable<ts.Tuple2<R1, R2>> { })
	@:overload(function<A1, A2, A3, A4, A5, R1>(callbackFunc:(arg1:A1, arg2:A2, arg3:A3, arg4:A4, arg5:A5, callback:(res1:R1) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1, arg2:A2, arg3:A3, arg4:A4, arg5:A5) -> rxjs.Observable<R1> { })
	@:overload(function<A1, A2, A3, A4, A5>(callbackFunc:(arg1:A1, arg2:A2, arg3:A3, arg4:A4, arg5:A5, callback:() -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1, arg2:A2, arg3:A3, arg4:A4, arg5:A5) -> rxjs.Observable<Void> { })
	@:overload(function<A, R>(callbackFunc:(args:haxe.extern.Rest<ts.AnyOf2<A, (result:R) -> Dynamic>>) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(args:haxe.extern.Rest<A>) -> rxjs.Observable<R> { })
	@:overload(function<A, R>(callbackFunc:(args:haxe.extern.Rest<ts.AnyOf2<A, (results:haxe.extern.Rest<R>) -> Dynamic>>) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(args:haxe.extern.Rest<A>) -> rxjs.Observable<Array<R>> { })
	@:overload(function(callbackFunc:ts.lib.Function, ?scheduler:rxjs.SchedulerLike):(args:haxe.extern.Rest<Dynamic>) -> rxjs.Observable<Dynamic> { })
	static function bindCallback(callbackFunc:ts.lib.Function, resultSelector:ts.lib.Function, ?scheduler:rxjs.SchedulerLike):(args:haxe.extern.Rest<Dynamic>) -> rxjs.Observable<Dynamic>;
	@:overload(function<R1, R2, R3, R4>(callbackFunc:(callback:(err:Dynamic, res1:R1, res2:R2, res3:R3, res4:R4, args:haxe.extern.Rest<Dynamic>) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(args:haxe.extern.Rest<Dynamic>) -> rxjs.Observable<Array<Dynamic>> { })
	@:overload(function<R1, R2, R3>(callbackFunc:(callback:(err:Dynamic, res1:R1, res2:R2, res3:R3) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):() -> rxjs.Observable<ts.Tuple3<R1, R2, R3>> { })
	@:overload(function<R1, R2>(callbackFunc:(callback:(err:Dynamic, res1:R1, res2:R2) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):() -> rxjs.Observable<ts.Tuple2<R1, R2>> { })
	@:overload(function<R1>(callbackFunc:(callback:(err:Dynamic, res1:R1) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):() -> rxjs.Observable<R1> { })
	@:overload(function(callbackFunc:(callback:(err:Dynamic) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):() -> rxjs.Observable<Void> { })
	@:overload(function<A1, R1, R2, R3, R4>(callbackFunc:(arg1:A1, callback:(err:Dynamic, res1:R1, res2:R2, res3:R3, res4:R4, args:haxe.extern.Rest<Dynamic>) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(args:haxe.extern.Rest<Dynamic>) -> rxjs.Observable<Array<Dynamic>> { })
	@:overload(function<A1, R1, R2, R3>(callbackFunc:(arg1:A1, callback:(err:Dynamic, res1:R1, res2:R2, res3:R3) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1) -> rxjs.Observable<ts.Tuple3<R1, R2, R3>> { })
	@:overload(function<A1, R1, R2>(callbackFunc:(arg1:A1, callback:(err:Dynamic, res1:R1, res2:R2) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1) -> rxjs.Observable<ts.Tuple2<R1, R2>> { })
	@:overload(function<A1, R1>(callbackFunc:(arg1:A1, callback:(err:Dynamic, res1:R1) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1) -> rxjs.Observable<R1> { })
	@:overload(function<A1>(callbackFunc:(arg1:A1, callback:(err:Dynamic) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1) -> rxjs.Observable<Void> { })
	@:overload(function<A1, A2, R1, R2, R3, R4>(callbackFunc:(arg1:A1, arg2:A2, callback:(err:Dynamic, res1:R1, res2:R2, res3:R3, res4:R4, args:haxe.extern.Rest<Dynamic>) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(args:haxe.extern.Rest<Dynamic>) -> rxjs.Observable<Array<Dynamic>> { })
	@:overload(function<A1, A2, R1, R2, R3>(callbackFunc:(arg1:A1, arg2:A2, callback:(err:Dynamic, res1:R1, res2:R2, res3:R3) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1, arg2:A2) -> rxjs.Observable<ts.Tuple3<R1, R2, R3>> { })
	@:overload(function<A1, A2, R1, R2>(callbackFunc:(arg1:A1, arg2:A2, callback:(err:Dynamic, res1:R1, res2:R2) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1, arg2:A2) -> rxjs.Observable<ts.Tuple2<R1, R2>> { })
	@:overload(function<A1, A2, R1>(callbackFunc:(arg1:A1, arg2:A2, callback:(err:Dynamic, res1:R1) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1, arg2:A2) -> rxjs.Observable<R1> { })
	@:overload(function<A1, A2>(callbackFunc:(arg1:A1, arg2:A2, callback:(err:Dynamic) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1, arg2:A2) -> rxjs.Observable<Void> { })
	@:overload(function<A1, A2, A3, R1, R2, R3, R4>(callbackFunc:(arg1:A1, arg2:A2, arg3:A3, callback:(err:Dynamic, res1:R1, res2:R2, res3:R3, res4:R4, args:haxe.extern.Rest<Dynamic>) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(args:haxe.extern.Rest<Dynamic>) -> rxjs.Observable<Array<Dynamic>> { })
	@:overload(function<A1, A2, A3, R1, R2, R3>(callbackFunc:(arg1:A1, arg2:A2, arg3:A3, callback:(err:Dynamic, res1:R1, res2:R2, res3:R3) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1, arg2:A2, arg3:A3) -> rxjs.Observable<ts.Tuple3<R1, R2, R3>> { })
	@:overload(function<A1, A2, A3, R1, R2>(callbackFunc:(arg1:A1, arg2:A2, arg3:A3, callback:(err:Dynamic, res1:R1, res2:R2) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1, arg2:A2, arg3:A3) -> rxjs.Observable<ts.Tuple2<R1, R2>> { })
	@:overload(function<A1, A2, A3, R1>(callbackFunc:(arg1:A1, arg2:A2, arg3:A3, callback:(err:Dynamic, res1:R1) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1, arg2:A2, arg3:A3) -> rxjs.Observable<R1> { })
	@:overload(function<A1, A2, A3>(callbackFunc:(arg1:A1, arg2:A2, arg3:A3, callback:(err:Dynamic) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1, arg2:A2, arg3:A3) -> rxjs.Observable<Void> { })
	@:overload(function<A1, A2, A3, A4, R1, R2, R3, R4>(callbackFunc:(arg1:A1, arg2:A2, arg3:A3, arg4:A4, callback:(err:Dynamic, res1:R1, res2:R2, res3:R3, res4:R4, args:haxe.extern.Rest<Dynamic>) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(args:haxe.extern.Rest<Dynamic>) -> rxjs.Observable<Array<Dynamic>> { })
	@:overload(function<A1, A2, A3, A4, R1, R2, R3>(callbackFunc:(arg1:A1, arg2:A2, arg3:A3, arg4:A4, callback:(err:Dynamic, res1:R1, res2:R2, res3:R3) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1, arg2:A2, arg3:A3, arg4:A4) -> rxjs.Observable<ts.Tuple3<R1, R2, R3>> { })
	@:overload(function<A1, A2, A3, A4, R1, R2>(callbackFunc:(arg1:A1, arg2:A2, arg3:A3, arg4:A4, callback:(err:Dynamic, res1:R1, res2:R2) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1, arg2:A2, arg3:A3, arg4:A4) -> rxjs.Observable<ts.Tuple2<R1, R2>> { })
	@:overload(function<A1, A2, A3, A4, R1>(callbackFunc:(arg1:A1, arg2:A2, arg3:A3, arg4:A4, callback:(err:Dynamic, res1:R1) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1, arg2:A2, arg3:A3, arg4:A4) -> rxjs.Observable<R1> { })
	@:overload(function<A1, A2, A3, A4>(callbackFunc:(arg1:A1, arg2:A2, arg3:A3, arg4:A4, callback:(err:Dynamic) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1, arg2:A2, arg3:A3, arg4:A4) -> rxjs.Observable<Void> { })
	@:overload(function<A1, A2, A3, A4, A5, R1, R2, R3, R4>(callbackFunc:(arg1:A1, arg2:A2, arg3:A3, arg4:A4, arg5:A5, callback:(err:Dynamic, res1:R1, res2:R2, res3:R3, res4:R4, args:haxe.extern.Rest<Dynamic>) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(args:haxe.extern.Rest<Dynamic>) -> rxjs.Observable<Array<Dynamic>> { })
	@:overload(function<A1, A2, A3, A4, A5, R1, R2, R3>(callbackFunc:(arg1:A1, arg2:A2, arg3:A3, arg4:A4, arg5:A5, callback:(err:Dynamic, res1:R1, res2:R2, res3:R3) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1, arg2:A2, arg3:A3, arg4:A4, arg5:A5) -> rxjs.Observable<ts.Tuple3<R1, R2, R3>> { })
	@:overload(function<A1, A2, A3, A4, A5, R1, R2>(callbackFunc:(arg1:A1, arg2:A2, arg3:A3, arg4:A4, arg5:A5, callback:(err:Dynamic, res1:R1, res2:R2) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1, arg2:A2, arg3:A3, arg4:A4, arg5:A5) -> rxjs.Observable<ts.Tuple2<R1, R2>> { })
	@:overload(function<A1, A2, A3, A4, A5, R1>(callbackFunc:(arg1:A1, arg2:A2, arg3:A3, arg4:A4, arg5:A5, callback:(err:Dynamic, res1:R1) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1, arg2:A2, arg3:A3, arg4:A4, arg5:A5) -> rxjs.Observable<R1> { })
	@:overload(function<A1, A2, A3, A4, A5>(callbackFunc:(arg1:A1, arg2:A2, arg3:A3, arg4:A4, arg5:A5, callback:(err:Dynamic) -> Dynamic) -> Dynamic, ?scheduler:rxjs.SchedulerLike):(arg1:A1, arg2:A2, arg3:A3, arg4:A4, arg5:A5) -> rxjs.Observable<Void> { })
	@:overload(function(callbackFunc:ts.lib.Function, ?scheduler:rxjs.SchedulerLike):(args:haxe.extern.Rest<Dynamic>) -> rxjs.Observable<Array<Dynamic>> { })
	static function bindNodeCallback(callbackFunc:ts.lib.Function, resultSelector:ts.lib.Function, ?scheduler:rxjs.SchedulerLike):(args:haxe.extern.Rest<Dynamic>) -> rxjs.Observable<Dynamic>;
	@:overload(function<O1, O2, R>(sources:ts.Tuple2<O1, O2>, resultSelector:(v1:rxjs.ObservedValueOf<O1>, v2:rxjs.ObservedValueOf<O2>) -> R, ?scheduler:rxjs.SchedulerLike):rxjs.Observable<R> { })
	@:overload(function<O1, O2, O3, R>(sources:ts.Tuple3<O1, O2, O3>, resultSelector:(v1:rxjs.ObservedValueOf<O1>, v2:rxjs.ObservedValueOf<O2>, v3:rxjs.ObservedValueOf<O3>) -> R, ?scheduler:rxjs.SchedulerLike):rxjs.Observable<R> { })
	@:overload(function<O1, O2, O3, O4, R>(sources:ts.Tuple4<O1, O2, O3, O4>, resultSelector:(v1:rxjs.ObservedValueOf<O1>, v2:rxjs.ObservedValueOf<O2>, v3:rxjs.ObservedValueOf<O3>, v4:rxjs.ObservedValueOf<O4>) -> R, ?scheduler:rxjs.SchedulerLike):rxjs.Observable<R> { })
	@:overload(function<O1, O2, O3, O4, O5, R>(sources:ts.Tuple5<O1, O2, O3, O4, O5>, resultSelector:(v1:rxjs.ObservedValueOf<O1>, v2:rxjs.ObservedValueOf<O2>, v3:rxjs.ObservedValueOf<O3>, v4:rxjs.ObservedValueOf<O4>, v5:rxjs.ObservedValueOf<O5>) -> R, ?scheduler:rxjs.SchedulerLike):rxjs.Observable<R> { })
	@:overload(function<O1, O2, O3, O4, O5, O6, R>(sources:ts.Tuple6<O1, O2, O3, O4, O5, O6>, resultSelector:(v1:rxjs.ObservedValueOf<O1>, v2:rxjs.ObservedValueOf<O2>, v3:rxjs.ObservedValueOf<O3>, v4:rxjs.ObservedValueOf<O4>, v5:rxjs.ObservedValueOf<O5>, v6:rxjs.ObservedValueOf<O6>) -> R, ?scheduler:rxjs.SchedulerLike):rxjs.Observable<R> { })
	@:overload(function<O, R>(sources:Array<O>, resultSelector:(args:haxe.extern.Rest<rxjs.ObservedValueOf<O>>) -> R, ?scheduler:rxjs.SchedulerLike):rxjs.Observable<R> { })
	@:overload(function<O1, R>(v1:O1, resultSelector:(v1:rxjs.ObservedValueOf<O1>) -> R, ?scheduler:rxjs.SchedulerLike):rxjs.Observable<R> { })
	@:overload(function<O1, O2, R>(v1:O1, v2:O2, resultSelector:(v1:rxjs.ObservedValueOf<O1>, v2:rxjs.ObservedValueOf<O2>) -> R, ?scheduler:rxjs.SchedulerLike):rxjs.Observable<R> { })
	@:overload(function<O1, O2, O3, R>(v1:O1, v2:O2, v3:O3, resultSelector:(v1:rxjs.ObservedValueOf<O1>, v2:rxjs.ObservedValueOf<O2>, v3:rxjs.ObservedValueOf<O3>) -> R, ?scheduler:rxjs.SchedulerLike):rxjs.Observable<R> { })
	@:overload(function<O1, O2, O3, O4, R>(v1:O1, v2:O2, v3:O3, v4:O4, resultSelector:(v1:rxjs.ObservedValueOf<O1>, v2:rxjs.ObservedValueOf<O2>, v3:rxjs.ObservedValueOf<O3>, v4:rxjs.ObservedValueOf<O4>) -> R, ?scheduler:rxjs.SchedulerLike):rxjs.Observable<R> { })
	@:overload(function<O1, O2, O3, O4, O5, R>(v1:O1, v2:O2, v3:O3, v4:O4, v5:O5, resultSelector:(v1:rxjs.ObservedValueOf<O1>, v2:rxjs.ObservedValueOf<O2>, v3:rxjs.ObservedValueOf<O3>, v4:rxjs.ObservedValueOf<O4>, v5:rxjs.ObservedValueOf<O5>) -> R, ?scheduler:rxjs.SchedulerLike):rxjs.Observable<R> { })
	@:overload(function<O1, O2, O3, O4, O5, O6, R>(v1:O1, v2:O2, v3:O3, v4:O4, v5:O5, v6:O6, resultSelector:(v1:rxjs.ObservedValueOf<O1>, v2:rxjs.ObservedValueOf<O2>, v3:rxjs.ObservedValueOf<O3>, v4:rxjs.ObservedValueOf<O4>, v5:rxjs.ObservedValueOf<O5>, v6:rxjs.ObservedValueOf<O6>) -> R, ?scheduler:rxjs.SchedulerLike):rxjs.Observable<R> { })
	@:overload(function<O1>(sources:ts.Tuple1<O1>, scheduler:rxjs.SchedulerLike):rxjs.Observable<ts.Tuple1<rxjs.ObservedValueOf<O1>>> { })
	@:overload(function<O1, O2>(sources:ts.Tuple2<O1, O2>, scheduler:rxjs.SchedulerLike):rxjs.Observable<ts.Tuple2<rxjs.ObservedValueOf<O1>, rxjs.ObservedValueOf<O2>>> { })
	@:overload(function<O1, O2, O3>(sources:ts.Tuple3<O1, O2, O3>, scheduler:rxjs.SchedulerLike):rxjs.Observable<ts.Tuple3<rxjs.ObservedValueOf<O1>, rxjs.ObservedValueOf<O2>, rxjs.ObservedValueOf<O3>>> { })
	@:overload(function<O1, O2, O3, O4>(sources:ts.Tuple4<O1, O2, O3, O4>, scheduler:rxjs.SchedulerLike):rxjs.Observable<ts.Tuple4<rxjs.ObservedValueOf<O1>, rxjs.ObservedValueOf<O2>, rxjs.ObservedValueOf<O3>, rxjs.ObservedValueOf<O4>>> { })
	@:overload(function<O1, O2, O3, O4, O5>(sources:ts.Tuple5<O1, O2, O3, O4, O5>, scheduler:rxjs.SchedulerLike):rxjs.Observable<ts.Tuple5<rxjs.ObservedValueOf<O1>, rxjs.ObservedValueOf<O2>, rxjs.ObservedValueOf<O3>, rxjs.ObservedValueOf<O4>, rxjs.ObservedValueOf<O5>>> { })
	@:overload(function<O1, O2, O3, O4, O5, O6>(sources:ts.Tuple6<O1, O2, O3, O4, O5, O6>, scheduler:rxjs.SchedulerLike):rxjs.Observable<ts.Tuple6<rxjs.ObservedValueOf<O1>, rxjs.ObservedValueOf<O2>, rxjs.ObservedValueOf<O3>, rxjs.ObservedValueOf<O4>, rxjs.ObservedValueOf<O5>, rxjs.ObservedValueOf<O6>>> { })
	@:overload(function<O>(sources:Array<O>, scheduler:rxjs.SchedulerLike):rxjs.Observable<Array<rxjs.ObservedValueOf<O>>> { })
	@:overload(function<O1>(sources:ts.Tuple1<O1>):rxjs.Observable<ts.Tuple1<rxjs.ObservedValueOf<O1>>> { })
	@:overload(function<O1, O2>(sources:ts.Tuple2<O1, O2>):rxjs.Observable<ts.Tuple2<rxjs.ObservedValueOf<O1>, rxjs.ObservedValueOf<O2>>> { })
	@:overload(function<O1, O2, O3>(sources:ts.Tuple3<O1, O2, O3>):rxjs.Observable<ts.Tuple3<rxjs.ObservedValueOf<O1>, rxjs.ObservedValueOf<O2>, rxjs.ObservedValueOf<O3>>> { })
	@:overload(function<O1, O2, O3, O4>(sources:ts.Tuple4<O1, O2, O3, O4>):rxjs.Observable<ts.Tuple4<rxjs.ObservedValueOf<O1>, rxjs.ObservedValueOf<O2>, rxjs.ObservedValueOf<O3>, rxjs.ObservedValueOf<O4>>> { })
	@:overload(function<O1, O2, O3, O4, O5>(sources:ts.Tuple5<O1, O2, O3, O4, O5>):rxjs.Observable<ts.Tuple5<rxjs.ObservedValueOf<O1>, rxjs.ObservedValueOf<O2>, rxjs.ObservedValueOf<O3>, rxjs.ObservedValueOf<O4>, rxjs.ObservedValueOf<O5>>> { })
	@:overload(function<O1, O2, O3, O4, O5, O6>(sources:ts.Tuple6<O1, O2, O3, O4, O5, O6>):rxjs.Observable<ts.Tuple6<rxjs.ObservedValueOf<O1>, rxjs.ObservedValueOf<O2>, rxjs.ObservedValueOf<O3>, rxjs.ObservedValueOf<O4>, rxjs.ObservedValueOf<O5>, rxjs.ObservedValueOf<O6>>> { })
	@:overload(function<O>(sources:Array<O>):rxjs.Observable<Array<rxjs.ObservedValueOf<O>>> { })
	@:overload(function<O1>(v1:O1, ?scheduler:rxjs.SchedulerLike):rxjs.Observable<ts.Tuple1<rxjs.ObservedValueOf<O1>>> { })
	@:overload(function<O1, O2>(v1:O1, v2:O2, ?scheduler:rxjs.SchedulerLike):rxjs.Observable<ts.Tuple2<rxjs.ObservedValueOf<O1>, rxjs.ObservedValueOf<O2>>> { })
	@:overload(function<O1, O2, O3>(v1:O1, v2:O2, v3:O3, ?scheduler:rxjs.SchedulerLike):rxjs.Observable<ts.Tuple3<rxjs.ObservedValueOf<O1>, rxjs.ObservedValueOf<O2>, rxjs.ObservedValueOf<O3>>> { })
	@:overload(function<O1, O2, O3, O4>(v1:O1, v2:O2, v3:O3, v4:O4, ?scheduler:rxjs.SchedulerLike):rxjs.Observable<ts.Tuple4<rxjs.ObservedValueOf<O1>, rxjs.ObservedValueOf<O2>, rxjs.ObservedValueOf<O3>, rxjs.ObservedValueOf<O4>>> { })
	@:overload(function<O1, O2, O3, O4, O5>(v1:O1, v2:O2, v3:O3, v4:O4, v5:O5, ?scheduler:rxjs.SchedulerLike):rxjs.Observable<ts.Tuple5<rxjs.ObservedValueOf<O1>, rxjs.ObservedValueOf<O2>, rxjs.ObservedValueOf<O3>, rxjs.ObservedValueOf<O4>, rxjs.ObservedValueOf<O5>>> { })
	@:overload(function<O1, O2, O3, O4, O5, O6>(v1:O1, v2:O2, v3:O3, v4:O4, v5:O5, v6:O6, ?scheduler:rxjs.SchedulerLike):rxjs.Observable<ts.Tuple6<rxjs.ObservedValueOf<O1>, rxjs.ObservedValueOf<O2>, rxjs.ObservedValueOf<O3>, rxjs.ObservedValueOf<O4>, rxjs.ObservedValueOf<O5>, rxjs.ObservedValueOf<O6>>> { })
	@:overload(function<O>(observables:haxe.extern.Rest<O>):rxjs.Observable<Array<Dynamic>> { })
	@:overload(function<O, R>(observables:haxe.extern.Rest<ts.AnyOf7<rxjs.Subscribable<Any>, rxjs.Subscribable<Dynamic>, ts.lib.PromiseLike<Dynamic>, rxjs.InteropObservable<Dynamic>, ts.lib.ArrayLike<Dynamic>, ts.lib.Iterable<Dynamic>, (values:haxe.extern.Rest<Dynamic>) -> R>>):rxjs.Observable<R> { })
	@:overload(function<O, R>(array:Array<O>, resultSelector:(values:haxe.extern.Rest<rxjs.ObservedValueOf<O>>) -> R, ?scheduler:rxjs.SchedulerLike):rxjs.Observable<R> { })
	@:overload(function<O>(observables:haxe.extern.Rest<ts.AnyOf2<rxjs.SchedulerLike, O>>):rxjs.Observable<Array<Dynamic>> { })
	@:overload(function<O, R>(observables:haxe.extern.Rest<ts.AnyOf3<rxjs.SchedulerLike, O, (values:haxe.extern.Rest<rxjs.ObservedValueOf<O>>) -> R>>):rxjs.Observable<R> { })
	@:overload(function<R>(observables:haxe.extern.Rest<ts.AnyOf8<rxjs.SchedulerLike, rxjs.Subscribable<Any>, rxjs.Subscribable<Dynamic>, ts.lib.PromiseLike<Dynamic>, rxjs.InteropObservable<Dynamic>, ts.lib.ArrayLike<Dynamic>, ts.lib.Iterable<Dynamic>, (values:haxe.extern.Rest<Dynamic>) -> R>>):rxjs.Observable<R> { })
	static function combineLatest<O1, R>(sources:ts.Tuple1<O1>, resultSelector:(v1:rxjs.ObservedValueOf<O1>) -> R, ?scheduler:rxjs.SchedulerLike):rxjs.Observable<R>;
	@:overload(function<O1, O2>(v1:O1, v2:O2, scheduler:rxjs.SchedulerLike):rxjs.Observable<ts.AnyOf2<rxjs.ObservedValueOf<O1>, rxjs.ObservedValueOf<O2>>> { })
	@:overload(function<O1, O2, O3>(v1:O1, v2:O2, v3:O3, scheduler:rxjs.SchedulerLike):rxjs.Observable<ts.AnyOf3<rxjs.ObservedValueOf<O1>, rxjs.ObservedValueOf<O2>, rxjs.ObservedValueOf<O3>>> { })
	@:overload(function<O1, O2, O3, O4>(v1:O1, v2:O2, v3:O3, v4:O4, scheduler:rxjs.SchedulerLike):rxjs.Observable<ts.AnyOf4<rxjs.ObservedValueOf<O1>, rxjs.ObservedValueOf<O2>, rxjs.ObservedValueOf<O3>, rxjs.ObservedValueOf<O4>>> { })
	@:overload(function<O1, O2, O3, O4, O5>(v1:O1, v2:O2, v3:O3, v4:O4, v5:O5, scheduler:rxjs.SchedulerLike):rxjs.Observable<ts.AnyOf5<rxjs.ObservedValueOf<O1>, rxjs.ObservedValueOf<O2>, rxjs.ObservedValueOf<O3>, rxjs.ObservedValueOf<O4>, rxjs.ObservedValueOf<O5>>> { })
	@:overload(function<O1, O2, O3, O4, O5, O6>(v1:O1, v2:O2, v3:O3, v4:O4, v5:O5, v6:O6, scheduler:rxjs.SchedulerLike):rxjs.Observable<ts.AnyOf6<rxjs.ObservedValueOf<O1>, rxjs.ObservedValueOf<O2>, rxjs.ObservedValueOf<O3>, rxjs.ObservedValueOf<O4>, rxjs.ObservedValueOf<O5>, rxjs.ObservedValueOf<O6>>> { })
	@:overload(function<O1>(v1:O1):rxjs.Observable<rxjs.ObservedValueOf<O1>> { })
	@:overload(function<O1, O2>(v1:O1, v2:O2):rxjs.Observable<ts.AnyOf2<rxjs.ObservedValueOf<O1>, rxjs.ObservedValueOf<O2>>> { })
	@:overload(function<O1, O2, O3>(v1:O1, v2:O2, v3:O3):rxjs.Observable<ts.AnyOf3<rxjs.ObservedValueOf<O1>, rxjs.ObservedValueOf<O2>, rxjs.ObservedValueOf<O3>>> { })
	@:overload(function<O1, O2, O3, O4>(v1:O1, v2:O2, v3:O3, v4:O4):rxjs.Observable<ts.AnyOf4<rxjs.ObservedValueOf<O1>, rxjs.ObservedValueOf<O2>, rxjs.ObservedValueOf<O3>, rxjs.ObservedValueOf<O4>>> { })
	@:overload(function<O1, O2, O3, O4, O5>(v1:O1, v2:O2, v3:O3, v4:O4, v5:O5):rxjs.Observable<ts.AnyOf5<rxjs.ObservedValueOf<O1>, rxjs.ObservedValueOf<O2>, rxjs.ObservedValueOf<O3>, rxjs.ObservedValueOf<O4>, rxjs.ObservedValueOf<O5>>> { })
	@:overload(function<O1, O2, O3, O4, O5, O6>(v1:O1, v2:O2, v3:O3, v4:O4, v5:O5, v6:O6):rxjs.Observable<ts.AnyOf6<rxjs.ObservedValueOf<O1>, rxjs.ObservedValueOf<O2>, rxjs.ObservedValueOf<O3>, rxjs.ObservedValueOf<O4>, rxjs.ObservedValueOf<O5>, rxjs.ObservedValueOf<O6>>> { })
	@:overload(function<O>(observables:haxe.extern.Rest<O>):rxjs.Observable<rxjs.ObservedValueOf<O>> { })
	@:overload(function<O>(observables:haxe.extern.Rest<ts.AnyOf2<rxjs.SchedulerLike, O>>):rxjs.Observable<rxjs.ObservedValueOf<O>> { })
	@:overload(function<R>(observables:haxe.extern.Rest<rxjs.ObservableInput<Dynamic>>):rxjs.Observable<R> { })
	@:overload(function<R>(observables:haxe.extern.Rest<ts.AnyOf7<rxjs.SchedulerLike, rxjs.Subscribable<Any>, rxjs.Subscribable<Dynamic>, ts.lib.PromiseLike<Dynamic>, rxjs.InteropObservable<Dynamic>, ts.lib.ArrayLike<Dynamic>, ts.lib.Iterable<Dynamic>>>):rxjs.Observable<R> { })
	static function concat<O1>(v1:O1, scheduler:rxjs.SchedulerLike):rxjs.Observable<rxjs.ObservedValueOf<O1>>;
	/**
		Creates an Observable that, on subscribe, calls an Observable factory to
		make an Observable for each new Observer.
		
		<span class="informal">Creates the Observable lazily, that is, only when it
		is subscribed.
		</span>
		
		![](defer.png)
		
		`defer` allows you to create the Observable only when the Observer
		subscribes, and create a fresh Observable for each Observer. It waits until
		an Observer subscribes to it, and then it generates an Observable,
		typically with an Observable factory function. It does this afresh for each
		subscriber, so although each subscriber may think it is subscribing to the
		same Observable, in fact each subscriber gets its own individual
		Observable.
		
		## Example
		### Subscribe to either an Observable of clicks or an Observable of interval, at random
		```ts
		import { defer, fromEvent, interval } from 'rxjs';
		
		const clicksOrInterval = defer(function () {
		   return Math.random() > 0.5
		     ? fromEvent(document, 'click')
		     : interval(1000);
		});
		clicksOrInterval.subscribe(x => console.log(x));
		
		// Results in the following behavior:
		// If the result of Math.random() is greater than 0.5 it will listen
		// for clicks anywhere on the "document"; when document is clicked it
		// will log a MouseEvent object to the console. If the result is less
		// than 0.5 it will emit ascending numbers, one every second(1000ms).
		```
	**/
	static function defer<R>(observableFactory:() -> R):rxjs.Observable<rxjs.ObservedValueOf<R>>;
	/**
		Creates an Observable that emits no items to the Observer and immediately
		emits a complete notification.
		
		<span class="informal">Just emits 'complete', and nothing else.
		</span>
		
		![](empty.png)
		
		This static operator is useful for creating a simple Observable that only
		emits the complete notification. It can be used for composing with other
		Observables, such as in a {@link mergeMap}.
		
		## Examples
		### Emit the number 7, then complete
		```ts
		import { empty } from 'rxjs';
		import { startWith } from 'rxjs/operators';
		
		const result = empty().pipe(startWith(7));
		result.subscribe(x => console.log(x));
		```
		
		### Map and flatten only odd numbers to the sequence 'a', 'b', 'c'
		```ts
		import { empty, interval, of } from 'rxjs';
		import { mergeMap } from 'rxjs/operators';
		
		const interval$ = interval(1000);
		const result = interval$.pipe(
		   mergeMap(x => x % 2 === 1 ? of('a', 'b', 'c') : empty()),
		);
		result.subscribe(x => console.log(x));
		
		// Results in the following to the console:
		// x is equal to the count on the interval eg(0,1,2,3,...)
		// x will occur every 1000ms
		// if x % 2 is equal to 1 print abc
		// if x % 2 is not equal to 1 nothing will be output
		```
	**/
	static function empty(?scheduler:rxjs.SchedulerLike):rxjs.Observable<Any>;
	@:overload(function<T, T2>(v1:rxjs.ObservableInput<T>, v2:rxjs.ObservableInput<T2>):rxjs.Observable<ts.Tuple2<T, T2>> { })
	@:overload(function<T, T2, T3>(v1:rxjs.ObservableInput<T>, v2:rxjs.ObservableInput<T2>, v3:rxjs.ObservableInput<T3>):rxjs.Observable<ts.Tuple3<T, T2, T3>> { })
	@:overload(function<T, T2, T3, T4>(v1:rxjs.ObservableInput<T>, v2:rxjs.ObservableInput<T2>, v3:rxjs.ObservableInput<T3>, v4:rxjs.ObservableInput<T4>):rxjs.Observable<ts.Tuple4<T, T2, T3, T4>> { })
	@:overload(function<T, T2, T3, T4, T5>(v1:rxjs.ObservableInput<T>, v2:rxjs.ObservableInput<T2>, v3:rxjs.ObservableInput<T3>, v4:rxjs.ObservableInput<T4>, v5:rxjs.ObservableInput<T5>):rxjs.Observable<ts.Tuple5<T, T2, T3, T4, T5>> { })
	@:overload(function<T, T2, T3, T4, T5, T6>(v1:rxjs.ObservableInput<T>, v2:rxjs.ObservableInput<T2>, v3:rxjs.ObservableInput<T3>, v4:rxjs.ObservableInput<T4>, v5:rxjs.ObservableInput<T5>, v6:rxjs.ObservableInput<T6>):rxjs.Observable<ts.Tuple6<T, T2, T3, T4, T5, T6>> { })
	@:overload(function<A>(sources:ts.Tuple1<rxjs.ObservableInput<A>>):rxjs.Observable<ts.Tuple1<A>> { })
	@:overload(function<A, B>(sources:ts.Tuple2<rxjs.ObservableInput<A>, rxjs.ObservableInput<B>>):rxjs.Observable<ts.Tuple2<A, B>> { })
	@:overload(function<A, B, C>(sources:ts.Tuple3<rxjs.ObservableInput<A>, rxjs.ObservableInput<B>, rxjs.ObservableInput<C>>):rxjs.Observable<ts.Tuple3<A, B, C>> { })
	@:overload(function<A, B, C, D>(sources:ts.Tuple4<rxjs.ObservableInput<A>, rxjs.ObservableInput<B>, rxjs.ObservableInput<C>, rxjs.ObservableInput<D>>):rxjs.Observable<ts.Tuple4<A, B, C, D>> { })
	@:overload(function<A, B, C, D, E>(sources:ts.Tuple5<rxjs.ObservableInput<A>, rxjs.ObservableInput<B>, rxjs.ObservableInput<C>, rxjs.ObservableInput<D>, rxjs.ObservableInput<E>>):rxjs.Observable<ts.Tuple5<A, B, C, D, E>> { })
	@:overload(function<A, B, C, D, E, F>(sources:ts.Tuple6<rxjs.ObservableInput<A>, rxjs.ObservableInput<B>, rxjs.ObservableInput<C>, rxjs.ObservableInput<D>, rxjs.ObservableInput<E>, rxjs.ObservableInput<F>>):rxjs.Observable<ts.Tuple6<A, B, C, D, E, F>> { })
	@:overload(function<A>(sources:A):rxjs.Observable<Array<rxjs.ObservedValuesFromArray<A>>> { })
	@:overload(function(sourcesObject:{ }):rxjs.Observable<Any> { })
	@:overload(function<T, K>(sourcesObject:T):rxjs.Observable<Dynamic> { })
	@:overload(function(args:haxe.extern.Rest<ts.AnyOf7<ts.lib.Function, rxjs.Subscribable<Any>, rxjs.Subscribable<Dynamic>, ts.lib.PromiseLike<Dynamic>, rxjs.InteropObservable<Dynamic>, ts.lib.ArrayLike<Dynamic>, ts.lib.Iterable<Dynamic>>>):rxjs.Observable<Dynamic> { })
	@:overload(function<T>(sources:haxe.extern.Rest<rxjs.ObservableInput<T>>):rxjs.Observable<Array<T>> { })
	static function forkJoin<T>(v1:rxjs.SubscribableOrPromise<T>):rxjs.Observable<ts.Tuple1<T>>;
	@:overload(function<O>(input:O, scheduler:rxjs.SchedulerLike):rxjs.Observable<rxjs.ObservedValueOf<O>> { })
	static function from<O>(input:O):rxjs.Observable<rxjs.ObservedValueOf<O>>;
	@:overload(function<T>(target:rxjs.FromEventTarget<T>, eventName:String, resultSelector:(args:haxe.extern.Rest<Dynamic>) -> T):rxjs.Observable<T> { })
	@:overload(function<T>(target:rxjs.FromEventTarget<T>, eventName:String, options:rxjs.EventListenerOptions):rxjs.Observable<T> { })
	@:overload(function<T>(target:rxjs.FromEventTarget<T>, eventName:String, options:rxjs.EventListenerOptions, resultSelector:(args:haxe.extern.Rest<Dynamic>) -> T):rxjs.Observable<T> { })
	static function fromEvent<T>(target:rxjs.FromEventTarget<T>, eventName:String):rxjs.Observable<T>;
	@:overload(function<T>(addHandler:(handler:rxjs.NodeEventHandler) -> Dynamic, ?removeHandler:ts.AnyOf2<(handler:rxjs.NodeEventHandler) -> Void, (handler:rxjs.NodeEventHandler, signal:Dynamic) -> Void>, ?resultSelector:(args:haxe.extern.Rest<Dynamic>) -> T):rxjs.Observable<T> { })
	static function fromEventPattern<T>(addHandler:(handler:rxjs.NodeEventHandler) -> Dynamic, ?removeHandler:ts.AnyOf2<(handler:rxjs.NodeEventHandler) -> Void, (handler:rxjs.NodeEventHandler, signal:Dynamic) -> Void>):rxjs.Observable<T>;
	/**
		Generates an observable sequence by running a state-driven loop
		producing the sequence's elements, using the specified scheduler
		to send out observer messages.
		
		![](generate.png)
		
		Generates an Observable by running a state-driven loop
		that emits an element on each iteration.
		
		<span class="informal">Use it instead of nexting values in a for loop.</span>
		
		<img src="./img/generate.png" width="100%">
		
		`generate` allows you to create stream of values generated with a loop very similar to
		traditional for loop. First argument of `generate` is a beginning value. Second argument
		is a function that accepts this value and tests if some condition still holds. If it does,
		loop continues, if not, it stops. Third value is a function which takes previously defined
		value and modifies it in some way on each iteration. Note how these three parameters
		are direct equivalents of three expressions in regular for loop: first expression
		initializes some state (for example numeric index), second tests if loop can make next
		iteration (for example if index is lower than 10) and third states how defined value
		will be modified on every step (index will be incremented by one).
		
		Return value of a `generate` operator is an Observable that on each loop iteration
		emits a value. First, condition function is ran. If it returned true, Observable
		emits currently stored value (initial value at the first iteration) and then updates
		that value with iterate function. If at some point condition returned false, Observable
		completes at that moment.
		
		Optionally you can pass fourth parameter to `generate` - a result selector function which allows you
		to immediately map value that would normally be emitted by an Observable.
		
		If you find three anonymous functions in `generate` call hard to read, you can provide
		single object to the operator instead. That object has properties: `initialState`,
		`condition`, `iterate` and `resultSelector`, which should have respective values that you
		would normally pass to `generate`. `resultSelector` is still optional, but that form
		of calling `generate` allows you to omit `condition` as well. If you omit it, that means
		condition always holds, so output Observable will never complete.
		
		Both forms of `generate` can optionally accept a scheduler. In case of multi-parameter call,
		scheduler simply comes as a last argument (no matter if there is resultSelector
		function or not). In case of single-parameter call, you can provide it as a
		`scheduler` property on object passed to the operator. In both cases scheduler decides when
		next iteration of the loop will happen and therefore when next value will be emitted
		by the Observable. For example to ensure that each value is pushed to the observer
		on separate task in event loop, you could use `async` scheduler. Note that
		by default (when no scheduler is passed) values are simply emitted synchronously.
		
		Generates an observable sequence by running a state-driven loop
		producing the sequence's elements, using the specified scheduler
		to send out observer messages.
		The overload accepts options object that might contain initial state, iterate,
		condition and scheduler.
		
		![](generate.png)
		
		Generates an observable sequence by running a state-driven loop
		producing the sequence's elements, using the specified scheduler
		to send out observer messages.
		The overload accepts options object that might contain initial state, iterate,
		condition, result selector and scheduler.
		
		![](generate.png)
	**/
	@:overload(function<S>(initialState:S, condition:rxjs.ConditionFunc<S>, iterate:rxjs.IterateFunc<S>, ?scheduler:rxjs.SchedulerLike):rxjs.Observable<S> { })
	@:overload(function<S>(options:rxjs.GenerateBaseOptions<S>):rxjs.Observable<S> { })
	@:overload(function<T, S>(options:rxjs.GenerateOptions<T, S>):rxjs.Observable<T> { })
	static function generate<T, S>(initialState:S, condition:rxjs.ConditionFunc<S>, iterate:rxjs.IterateFunc<S>, resultSelector:rxjs.ResultFunc<S, T>, ?scheduler:rxjs.SchedulerLike):rxjs.Observable<T>;
	/**
		Decides at subscription time which Observable will actually be subscribed.
		
		<span class="informal">`If` statement for Observables.</span>
		
		`iif` accepts a condition function and two Observables. When
		an Observable returned by the operator is subscribed, condition function will be called.
		Based on what boolean it returns at that moment, consumer will subscribe either to
		the first Observable (if condition was true) or to the second (if condition was false). Condition
		function may also not return anything - in that case condition will be evaluated as false and
		second Observable will be subscribed.
		
		Note that Observables for both cases (true and false) are optional. If condition points to an Observable that
		was left undefined, resulting stream will simply complete immediately. That allows you to, rather
		than controlling which Observable will be subscribed, decide at runtime if consumer should have access
		to given Observable or not.
		
		If you have more complex logic that requires decision between more than two Observables, {@link defer}
		will probably be a better choice. Actually `iif` can be easily implemented with {@link defer}
		and exists only for convenience and readability reasons.
		
		
		## Examples
		### Change at runtime which Observable will be subscribed
		```ts
		import { iif, of } from 'rxjs';
		
		let subscribeToFirst;
		const firstOrSecond = iif(
		   () => subscribeToFirst,
		   of('first'),
		   of('second'),
		);
		
		subscribeToFirst = true;
		firstOrSecond.subscribe(value => console.log(value));
		
		// Logs:
		// "first"
		
		subscribeToFirst = false;
		firstOrSecond.subscribe(value => console.log(value));
		
		// Logs:
		// "second"
		
		```
		
		### Control an access to an Observable
		```ts
		let accessGranted;
		const observableIfYouHaveAccess = iif(
		   () => accessGranted,
		   of('It seems you have an access...'), // Note that only one Observable is passed to the operator.
		);
		
		accessGranted = true;
		observableIfYouHaveAccess.subscribe(
		   value => console.log(value),
		   err => {},
		   () => console.log('The end'),
		);
		
		// Logs:
		// "It seems you have an access..."
		// "The end"
		
		accessGranted = false;
		observableIfYouHaveAccess.subscribe(
		   value => console.log(value),
		   err => {},
		   () => console.log('The end'),
		);
		
		// Logs:
		// "The end"
		```
	**/
	static function iif<T, F>(condition:() -> Bool, ?trueResult:ts.AnyOf4<rxjs.Subscribable<Any>, rxjs.Subscribable<T>, ts.lib.PromiseLike<T>, rxjs.InteropObservable<T>>, ?falseResult:ts.AnyOf4<rxjs.Subscribable<Any>, rxjs.Subscribable<F>, ts.lib.PromiseLike<F>, rxjs.InteropObservable<F>>):rxjs.Observable<ts.AnyOf2<T, F>>;
	/**
		Creates an Observable that emits sequential numbers every specified
		interval of time, on a specified {@link SchedulerLike}.
		
		<span class="informal">Emits incremental numbers periodically in time.
		</span>
		
		![](interval.png)
		
		`interval` returns an Observable that emits an infinite sequence of
		ascending integers, with a constant interval of time of your choosing
		between those emissions. The first emission is not sent immediately, but
		only after the first period has passed. By default, this operator uses the
		`async` {@link SchedulerLike} to provide a notion of time, but you may pass any
		{@link SchedulerLike} to it.
		
		## Example
		Emits ascending numbers, one every second (1000ms) up to the number 3
		```ts
		import { interval } from 'rxjs';
		import { take } from 'rxjs/operators';
		
		const numbers = interval(1000);
		
		const takeFourNumbers = numbers.pipe(take(4));
		
		takeFourNumbers.subscribe(x => console.log('Next: ', x));
		
		// Logs:
		// Next: 0
		// Next: 1
		// Next: 2
		// Next: 3
		```
	**/
	static function interval(?period:Float, ?scheduler:rxjs.SchedulerLike):rxjs.Observable<Float>;
	@:overload(function<T>(v1:rxjs.ObservableInput<T>, concurrent:Float, scheduler:rxjs.SchedulerLike):rxjs.Observable<T> { })
	@:overload(function<T, T2>(v1:rxjs.ObservableInput<T>, v2:rxjs.ObservableInput<T2>, scheduler:rxjs.SchedulerLike):rxjs.Observable<ts.AnyOf2<T, T2>> { })
	@:overload(function<T, T2>(v1:rxjs.ObservableInput<T>, v2:rxjs.ObservableInput<T2>, concurrent:Float, scheduler:rxjs.SchedulerLike):rxjs.Observable<ts.AnyOf2<T, T2>> { })
	@:overload(function<T, T2, T3>(v1:rxjs.ObservableInput<T>, v2:rxjs.ObservableInput<T2>, v3:rxjs.ObservableInput<T3>, scheduler:rxjs.SchedulerLike):rxjs.Observable<ts.AnyOf3<T, T2, T3>> { })
	@:overload(function<T, T2, T3>(v1:rxjs.ObservableInput<T>, v2:rxjs.ObservableInput<T2>, v3:rxjs.ObservableInput<T3>, concurrent:Float, scheduler:rxjs.SchedulerLike):rxjs.Observable<ts.AnyOf3<T, T2, T3>> { })
	@:overload(function<T, T2, T3, T4>(v1:rxjs.ObservableInput<T>, v2:rxjs.ObservableInput<T2>, v3:rxjs.ObservableInput<T3>, v4:rxjs.ObservableInput<T4>, scheduler:rxjs.SchedulerLike):rxjs.Observable<ts.AnyOf4<T, T2, T3, T4>> { })
	@:overload(function<T, T2, T3, T4>(v1:rxjs.ObservableInput<T>, v2:rxjs.ObservableInput<T2>, v3:rxjs.ObservableInput<T3>, v4:rxjs.ObservableInput<T4>, concurrent:Float, scheduler:rxjs.SchedulerLike):rxjs.Observable<ts.AnyOf4<T, T2, T3, T4>> { })
	@:overload(function<T, T2, T3, T4, T5>(v1:rxjs.ObservableInput<T>, v2:rxjs.ObservableInput<T2>, v3:rxjs.ObservableInput<T3>, v4:rxjs.ObservableInput<T4>, v5:rxjs.ObservableInput<T5>, scheduler:rxjs.SchedulerLike):rxjs.Observable<ts.AnyOf5<T, T2, T3, T4, T5>> { })
	@:overload(function<T, T2, T3, T4, T5>(v1:rxjs.ObservableInput<T>, v2:rxjs.ObservableInput<T2>, v3:rxjs.ObservableInput<T3>, v4:rxjs.ObservableInput<T4>, v5:rxjs.ObservableInput<T5>, concurrent:Float, scheduler:rxjs.SchedulerLike):rxjs.Observable<ts.AnyOf5<T, T2, T3, T4, T5>> { })
	@:overload(function<T, T2, T3, T4, T5, T6>(v1:rxjs.ObservableInput<T>, v2:rxjs.ObservableInput<T2>, v3:rxjs.ObservableInput<T3>, v4:rxjs.ObservableInput<T4>, v5:rxjs.ObservableInput<T5>, v6:rxjs.ObservableInput<T6>, scheduler:rxjs.SchedulerLike):rxjs.Observable<ts.AnyOf6<T, T2, T3, T4, T5, T6>> { })
	@:overload(function<T, T2, T3, T4, T5, T6>(v1:rxjs.ObservableInput<T>, v2:rxjs.ObservableInput<T2>, v3:rxjs.ObservableInput<T3>, v4:rxjs.ObservableInput<T4>, v5:rxjs.ObservableInput<T5>, v6:rxjs.ObservableInput<T6>, concurrent:Float, scheduler:rxjs.SchedulerLike):rxjs.Observable<ts.AnyOf6<T, T2, T3, T4, T5, T6>> { })
	@:overload(function<T>(v1:rxjs.ObservableInput<T>):rxjs.Observable<T> { })
	@:overload(function<T>(v1:rxjs.ObservableInput<T>, ?concurrent:Float):rxjs.Observable<T> { })
	@:overload(function<T, T2>(v1:rxjs.ObservableInput<T>, v2:rxjs.ObservableInput<T2>):rxjs.Observable<ts.AnyOf2<T, T2>> { })
	@:overload(function<T, T2>(v1:rxjs.ObservableInput<T>, v2:rxjs.ObservableInput<T2>, ?concurrent:Float):rxjs.Observable<ts.AnyOf2<T, T2>> { })
	@:overload(function<T, T2, T3>(v1:rxjs.ObservableInput<T>, v2:rxjs.ObservableInput<T2>, v3:rxjs.ObservableInput<T3>):rxjs.Observable<ts.AnyOf3<T, T2, T3>> { })
	@:overload(function<T, T2, T3>(v1:rxjs.ObservableInput<T>, v2:rxjs.ObservableInput<T2>, v3:rxjs.ObservableInput<T3>, ?concurrent:Float):rxjs.Observable<ts.AnyOf3<T, T2, T3>> { })
	@:overload(function<T, T2, T3, T4>(v1:rxjs.ObservableInput<T>, v2:rxjs.ObservableInput<T2>, v3:rxjs.ObservableInput<T3>, v4:rxjs.ObservableInput<T4>):rxjs.Observable<ts.AnyOf4<T, T2, T3, T4>> { })
	@:overload(function<T, T2, T3, T4>(v1:rxjs.ObservableInput<T>, v2:rxjs.ObservableInput<T2>, v3:rxjs.ObservableInput<T3>, v4:rxjs.ObservableInput<T4>, ?concurrent:Float):rxjs.Observable<ts.AnyOf4<T, T2, T3, T4>> { })
	@:overload(function<T, T2, T3, T4, T5>(v1:rxjs.ObservableInput<T>, v2:rxjs.ObservableInput<T2>, v3:rxjs.ObservableInput<T3>, v4:rxjs.ObservableInput<T4>, v5:rxjs.ObservableInput<T5>):rxjs.Observable<ts.AnyOf5<T, T2, T3, T4, T5>> { })
	@:overload(function<T, T2, T3, T4, T5>(v1:rxjs.ObservableInput<T>, v2:rxjs.ObservableInput<T2>, v3:rxjs.ObservableInput<T3>, v4:rxjs.ObservableInput<T4>, v5:rxjs.ObservableInput<T5>, ?concurrent:Float):rxjs.Observable<ts.AnyOf5<T, T2, T3, T4, T5>> { })
	@:overload(function<T, T2, T3, T4, T5, T6>(v1:rxjs.ObservableInput<T>, v2:rxjs.ObservableInput<T2>, v3:rxjs.ObservableInput<T3>, v4:rxjs.ObservableInput<T4>, v5:rxjs.ObservableInput<T5>, v6:rxjs.ObservableInput<T6>):rxjs.Observable<ts.AnyOf6<T, T2, T3, T4, T5, T6>> { })
	@:overload(function<T, T2, T3, T4, T5, T6>(v1:rxjs.ObservableInput<T>, v2:rxjs.ObservableInput<T2>, v3:rxjs.ObservableInput<T3>, v4:rxjs.ObservableInput<T4>, v5:rxjs.ObservableInput<T5>, v6:rxjs.ObservableInput<T6>, ?concurrent:Float):rxjs.Observable<ts.AnyOf6<T, T2, T3, T4, T5, T6>> { })
	@:overload(function<T>(observables:haxe.extern.Rest<ts.AnyOf7<Float, rxjs.Subscribable<Any>, rxjs.Subscribable<T>, ts.lib.PromiseLike<T>, rxjs.InteropObservable<T>, ts.lib.ArrayLike<T>, ts.lib.Iterable<T>>>):rxjs.Observable<T> { })
	@:overload(function<T>(observables:haxe.extern.Rest<ts.AnyOf8<Float, rxjs.SchedulerLike, rxjs.Subscribable<Any>, rxjs.Subscribable<T>, ts.lib.PromiseLike<T>, rxjs.InteropObservable<T>, ts.lib.ArrayLike<T>, ts.lib.Iterable<T>>>):rxjs.Observable<T> { })
	@:overload(function<T, R>(observables:haxe.extern.Rest<ts.AnyOf7<Float, rxjs.Subscribable<Any>, rxjs.Subscribable<Dynamic>, ts.lib.PromiseLike<Dynamic>, rxjs.InteropObservable<Dynamic>, ts.lib.ArrayLike<Dynamic>, ts.lib.Iterable<Dynamic>>>):rxjs.Observable<R> { })
	@:overload(function<T, R>(observables:haxe.extern.Rest<ts.AnyOf8<Float, rxjs.SchedulerLike, rxjs.Subscribable<Any>, rxjs.Subscribable<Dynamic>, ts.lib.PromiseLike<Dynamic>, rxjs.InteropObservable<Dynamic>, ts.lib.ArrayLike<Dynamic>, ts.lib.Iterable<Dynamic>>>):rxjs.Observable<R> { })
	static function merge<T>(v1:rxjs.ObservableInput<T>, scheduler:rxjs.SchedulerLike):rxjs.Observable<T>;
	static function never():rxjs.Observable<Any>;
	@:overload(function<T, T2>(a:T, b:T2, scheduler:rxjs.SchedulerLike):rxjs.Observable<ts.AnyOf2<T, T2>> { })
	@:overload(function<T, T2, T3>(a:T, b:T2, c:T3, scheduler:rxjs.SchedulerLike):rxjs.Observable<ts.AnyOf3<T, T2, T3>> { })
	@:overload(function<T, T2, T3, T4>(a:T, b:T2, c:T3, d:T4, scheduler:rxjs.SchedulerLike):rxjs.Observable<ts.AnyOf4<T, T2, T3, T4>> { })
	@:overload(function<T, T2, T3, T4, T5>(a:T, b:T2, c:T3, d:T4, e:T5, scheduler:rxjs.SchedulerLike):rxjs.Observable<ts.AnyOf5<T, T2, T3, T4, T5>> { })
	@:overload(function<T, T2, T3, T4, T5, T6>(a:T, b:T2, c:T3, d:T4, e:T5, f:T6, scheduler:rxjs.SchedulerLike):rxjs.Observable<ts.AnyOf6<T, T2, T3, T4, T5, T6>> { })
	@:overload(function<T, T2, T3, T4, T5, T6, T7>(a:T, b:T2, c:T3, d:T4, e:T5, f:T6, g:T7, scheduler:rxjs.SchedulerLike):rxjs.Observable<ts.AnyOf7<T, T2, T3, T4, T5, T6, T7>> { })
	@:overload(function<T, T2, T3, T4, T5, T6, T7, T8>(a:T, b:T2, c:T3, d:T4, e:T5, f:T6, g:T7, h:T8, scheduler:rxjs.SchedulerLike):rxjs.Observable<ts.AnyOf8<T, T2, T3, T4, T5, T6, T7, T8>> { })
	@:overload(function<T, T2, T3, T4, T5, T6, T7, T8, T9>(a:T, b:T2, c:T3, d:T4, e:T5, f:T6, g:T7, h:T8, i:T9, scheduler:rxjs.SchedulerLike):rxjs.Observable<ts.AnyOf9<T, T2, T3, T4, T5, T6, T7, T8, T9>> { })
	@:overload(function<T>(args:haxe.extern.Rest<ts.AnyOf2<rxjs.SchedulerLike, T>>):rxjs.Observable<T> { })
	@:overload(function<T>(a:T):rxjs.Observable<T> { })
	@:overload(function<T, T2>(a:T, b:T2):rxjs.Observable<ts.AnyOf2<T, T2>> { })
	@:overload(function<T, T2, T3>(a:T, b:T2, c:T3):rxjs.Observable<ts.AnyOf3<T, T2, T3>> { })
	@:overload(function<T, T2, T3, T4>(a:T, b:T2, c:T3, d:T4):rxjs.Observable<ts.AnyOf4<T, T2, T3, T4>> { })
	@:overload(function<T, T2, T3, T4, T5>(a:T, b:T2, c:T3, d:T4, e:T5):rxjs.Observable<ts.AnyOf5<T, T2, T3, T4, T5>> { })
	@:overload(function<T, T2, T3, T4, T5, T6>(a:T, b:T2, c:T3, d:T4, e:T5, f:T6):rxjs.Observable<ts.AnyOf6<T, T2, T3, T4, T5, T6>> { })
	@:overload(function<T, T2, T3, T4, T5, T6, T7>(a:T, b:T2, c:T3, d:T4, e:T5, f:T6, g:T7):rxjs.Observable<ts.AnyOf7<T, T2, T3, T4, T5, T6, T7>> { })
	@:overload(function<T, T2, T3, T4, T5, T6, T7, T8>(a:T, b:T2, c:T3, d:T4, e:T5, f:T6, g:T7, h:T8):rxjs.Observable<ts.AnyOf8<T, T2, T3, T4, T5, T6, T7, T8>> { })
	@:overload(function<T, T2, T3, T4, T5, T6, T7, T8, T9>(a:T, b:T2, c:T3, d:T4, e:T5, f:T6, g:T7, h:T8, i:T9):rxjs.Observable<ts.AnyOf9<T, T2, T3, T4, T5, T6, T7, T8, T9>> { })
	@:overload(function<T>(args:haxe.extern.Rest<T>):rxjs.Observable<T> { })
	static function of<T>(a:T, scheduler:rxjs.SchedulerLike):rxjs.Observable<T>;
	@:overload(function<T2, T3, R>(v2:rxjs.ObservableInput<T2>, v3:rxjs.ObservableInput<T3>):rxjs.Observable<R> { })
	@:overload(function<T2, T3, T4, R>(v2:rxjs.ObservableInput<T2>, v3:rxjs.ObservableInput<T3>, v4:rxjs.ObservableInput<T4>):rxjs.Observable<R> { })
	@:overload(function<T2, T3, T4, T5, R>(v2:rxjs.ObservableInput<T2>, v3:rxjs.ObservableInput<T3>, v4:rxjs.ObservableInput<T4>, v5:rxjs.ObservableInput<T5>):rxjs.Observable<R> { })
	@:overload(function<T2, T3, T4, T5, T6, R>(v2:rxjs.ObservableInput<T2>, v3:rxjs.ObservableInput<T3>, v4:rxjs.ObservableInput<T4>, v5:rxjs.ObservableInput<T5>, v6:rxjs.ObservableInput<T6>):rxjs.Observable<R> { })
	@:overload(function<R>(observables:haxe.extern.Rest<ts.AnyOf7<rxjs.Subscribable<Any>, rxjs.Subscribable<Dynamic>, ts.lib.PromiseLike<Dynamic>, rxjs.InteropObservable<Dynamic>, ts.lib.ArrayLike<Dynamic>, ts.lib.Iterable<Dynamic>, (values:haxe.extern.Rest<Dynamic>) -> R>>):rxjs.Observable<R> { })
	@:overload(function<R>(array:Array<rxjs.ObservableInput<Dynamic>>):rxjs.Observable<R> { })
	static function onErrorResumeNext<R>(v:rxjs.ObservableInput<R>):rxjs.Observable<R>;
	/**
		Convert an object into an Observable of `[key, value]` pairs.
		
		<span class="informal">Turn entries of an object into a stream.</span>
		
		<img src="./img/pairs.png" width="100%">
		
		`pairs` takes an arbitrary object and returns an Observable that emits arrays. Each
		emitted array has exactly two elements - the first is a key from the object
		and the second is a value corresponding to that key. Keys are extracted from
		an object via `Object.keys` function, which means that they will be only
		enumerable keys that are present on an object directly - not ones inherited
		via prototype chain.
		
		By default these arrays are emitted synchronously. To change that you can
		pass a {@link SchedulerLike} as a second argument to `pairs`.
	**/
	static function pairs<T>(obj:ts.lib.Object, ?scheduler:rxjs.SchedulerLike):rxjs.Observable<ts.Tuple2<String, T>>;
	/**
		Splits the source Observable into two, one with values that satisfy a
		predicate, and another with values that don't satisfy the predicate.
		
		<span class="informal">It's like {@link filter}, but returns two Observables:
		one like the output of {@link filter}, and the other with values that did not
		pass the condition.</span>
		
		![](partition.png)
		
		`partition` outputs an array with two Observables that partition the values
		from the source Observable through the given `predicate` function. The first
		Observable in that array emits source values for which the predicate argument
		returns true. The second Observable emits source values for which the
		predicate returns false. The first behaves like {@link filter} and the second
		behaves like {@link filter} with the predicate negated.
		
		## Example
		Partition a set of numbers into odds and evens observables
		```ts
		import { of, partition } from 'rxjs';
		
		const observableValues = of(1, 2, 3, 4, 5, 6);
		const [evens$, odds$] = partition(observableValues, (value, index) => value % 2 === 0);
		
		odds$.subscribe(x => console.log('odds', x));
		evens$.subscribe(x => console.log('evens', x));
		
		// Logs:
		// odds 1
		// odds 3
		// odds 5
		// evens 2
		// evens 4
		// evens 6
		```
	**/
	static function partition<T>(source:rxjs.ObservableInput<T>, predicate:(value:T, index:Float) -> Bool, ?thisArg:Dynamic):ts.Tuple2<rxjs.Observable<T>, rxjs.Observable<T>>;
	@:overload(function<A, B>(arg:ts.Tuple2<rxjs.ObservableInput<A>, rxjs.ObservableInput<B>>):rxjs.Observable<ts.AnyOf2<A, B>> { })
	@:overload(function<A, B, C>(arg:ts.Tuple3<rxjs.ObservableInput<A>, rxjs.ObservableInput<B>, rxjs.ObservableInput<C>>):rxjs.Observable<ts.AnyOf3<A, B, C>> { })
	@:overload(function<A, B, C, D>(arg:ts.Tuple4<rxjs.ObservableInput<A>, rxjs.ObservableInput<B>, rxjs.ObservableInput<C>, rxjs.ObservableInput<D>>):rxjs.Observable<ts.AnyOf4<A, B, C, D>> { })
	@:overload(function<A, B, C, D, E>(arg:ts.Tuple5<rxjs.ObservableInput<A>, rxjs.ObservableInput<B>, rxjs.ObservableInput<C>, rxjs.ObservableInput<D>, rxjs.ObservableInput<E>>):rxjs.Observable<ts.AnyOf5<A, B, C, D, E>> { })
	@:overload(function<T>(arg:Array<rxjs.ObservableInput<T>>):rxjs.Observable<T> { })
	@:overload(function(arg:Array<rxjs.ObservableInput<Dynamic>>):rxjs.Observable<{ }> { })
	@:overload(function<A>(a:rxjs.ObservableInput<A>):rxjs.Observable<A> { })
	@:overload(function<A, B>(a:rxjs.ObservableInput<A>, b:rxjs.ObservableInput<B>):rxjs.Observable<ts.AnyOf2<A, B>> { })
	@:overload(function<A, B, C>(a:rxjs.ObservableInput<A>, b:rxjs.ObservableInput<B>, c:rxjs.ObservableInput<C>):rxjs.Observable<ts.AnyOf3<A, B, C>> { })
	@:overload(function<A, B, C, D>(a:rxjs.ObservableInput<A>, b:rxjs.ObservableInput<B>, c:rxjs.ObservableInput<C>, d:rxjs.ObservableInput<D>):rxjs.Observable<ts.AnyOf4<A, B, C, D>> { })
	@:overload(function<A, B, C, D, E>(a:rxjs.ObservableInput<A>, b:rxjs.ObservableInput<B>, c:rxjs.ObservableInput<C>, d:rxjs.ObservableInput<D>, e:rxjs.ObservableInput<E>):rxjs.Observable<ts.AnyOf5<A, B, C, D, E>> { })
	@:overload(function<T>(observables:Array<rxjs.ObservableInput<T>>):rxjs.Observable<T> { })
	@:overload(function(observables:Array<rxjs.ObservableInput<Dynamic>>):rxjs.Observable<{ }> { })
	@:overload(function<T>(observables:haxe.extern.Rest<rxjs.ObservableInput<T>>):rxjs.Observable<T> { })
	@:overload(function(observables:haxe.extern.Rest<rxjs.ObservableInput<Dynamic>>):rxjs.Observable<{ }> { })
	static function race<A>(arg:ts.Tuple1<rxjs.ObservableInput<A>>):rxjs.Observable<A>;
	/**
		Creates an Observable that emits a sequence of numbers within a specified
		range.
		
		<span class="informal">Emits a sequence of numbers in a range.</span>
		
		![](range.png)
		
		`range` operator emits a range of sequential integers, in order, where you
		select the `start` of the range and its `length`. By default, uses no
		{@link SchedulerLike} and just delivers the notifications synchronously, but may use
		an optional {@link SchedulerLike} to regulate those deliveries.
		
		## Example
		Emits the numbers 1 to 10</caption>
		```ts
		import { range } from 'rxjs';
		
		const numbers = range(1, 10);
		numbers.subscribe(x => console.log(x));
		```
	**/
	static function range(?start:Float, ?count:Float, ?scheduler:rxjs.SchedulerLike):rxjs.Observable<Float>;
	/**
		Creates an Observable that emits no items to the Observer and immediately
		emits an error notification.
		
		<span class="informal">Just emits 'error', and nothing else.
		</span>
		
		![](throw.png)
		
		This static operator is useful for creating a simple Observable that only
		emits the error notification. It can be used for composing with other
		Observables, such as in a {@link mergeMap}.
		
		## Examples
		### Emit the number 7, then emit an error
		```ts
		import { throwError, concat, of } from 'rxjs';
		
		const result = concat(of(7), throwError(new Error('oops!')));
		result.subscribe(x => console.log(x), e => console.error(e));
		
		// Logs:
		// 7
		// Error: oops!
		```
		
		---
		
		### Map and flatten numbers to the sequence 'a', 'b', 'c', but throw an error for 2
		```ts
		import { throwError, interval, of } from 'rxjs';
		import { mergeMap } from 'rxjs/operators';
		
		interval(1000).pipe(
		   mergeMap(x => x === 2
		     ? throwError('Twos are bad')
		     : of('a', 'b', 'c')
		   ),
		).subscribe(x => console.log(x), e => console.error(e));
		
		// Logs:
		// a
		// b
		// c
		// a
		// b
		// c
		// Twos are bad
		```
	**/
	static function throwError(error:Dynamic, ?scheduler:rxjs.SchedulerLike):rxjs.Observable<Any>;
	/**
		Creates an Observable that starts emitting after an `dueTime` and
		emits ever increasing numbers after each `period` of time thereafter.
		
		<span class="informal">Its like {@link index/interval}, but you can specify when
		should the emissions start.</span>
		
		![](timer.png)
		
		`timer` returns an Observable that emits an infinite sequence of ascending
		integers, with a constant interval of time, `period` of your choosing
		between those emissions. The first emission happens after the specified
		`dueTime`. The initial delay may be a `Date`. By default, this
		operator uses the {@link asyncScheduler} {@link SchedulerLike} to provide a notion of time, but you
		may pass any {@link SchedulerLike} to it. If `period` is not specified, the output
		Observable emits only one value, `0`. Otherwise, it emits an infinite
		sequence.
		
		## Examples
		### Emits ascending numbers, one every second (1000ms), starting after 3 seconds
		```ts
		import { timer } from 'rxjs';
		
		const numbers = timer(3000, 1000);
		numbers.subscribe(x => console.log(x));
		```
		
		### Emits one number after five seconds
		```ts
		import { timer } from 'rxjs';
		
		const numbers = timer(5000);
		numbers.subscribe(x => console.log(x));
		```
	**/
	static function timer(?dueTime:ts.AnyOf2<Float, ts.lib.Date_>, ?periodOrScheduler:ts.AnyOf2<Float, rxjs.SchedulerLike>, ?scheduler:rxjs.SchedulerLike):rxjs.Observable<Float>;
	/**
		Creates an Observable that uses a resource which will be disposed at the same time as the Observable.
		
		<span class="informal">Use it when you catch yourself cleaning up after an Observable.</span>
		
		`using` is a factory operator, which accepts two functions. First function returns a disposable resource.
		It can be an arbitrary object that implements `unsubscribe` method. Second function will be injected with
		that object and should return an Observable. That Observable can use resource object during its execution.
		Both functions passed to `using` will be called every time someone subscribes - neither an Observable nor
		resource object will be shared in any way between subscriptions.
		
		When Observable returned by `using` is subscribed, Observable returned from the second function will be subscribed
		as well. All its notifications (nexted values, completion and error events) will be emitted unchanged by the output
		Observable. If however someone unsubscribes from the Observable or source Observable completes or errors by itself,
		the `unsubscribe` method on resource object will be called. This can be used to do any necessary clean up, which
		otherwise would have to be handled by hand. Note that complete or error notifications are not emitted when someone
		cancels subscription to an Observable via `unsubscribe`, so `using` can be used as a hook, allowing you to make
		sure that all resources which need to exist during an Observable execution will be disposed at appropriate time.
	**/
	@:native("using")
	static function using_<T>(resourceFactory:() -> ts.AnyOf2<Void, rxjs.Unsubscribable>, observableFactory:(resource:ts.AnyOf2<Void, rxjs.Unsubscribable>) -> ts.AnyOf7<Void, rxjs.Subscribable<Any>, rxjs.Subscribable<T>, ts.lib.PromiseLike<T>, rxjs.InteropObservable<T>, ts.lib.ArrayLike<T>, ts.lib.Iterable<T>>):rxjs.Observable<T>;
	@:overload(function<O1, O2, R>(v1:O1, v2:O2, resultSelector:(v1:rxjs.ObservedValueOf<O1>, v2:rxjs.ObservedValueOf<O2>) -> R):rxjs.Observable<R> { })
	@:overload(function<O1, O2, O3, R>(v1:O1, v2:O2, v3:O3, resultSelector:(v1:rxjs.ObservedValueOf<O1>, v2:rxjs.ObservedValueOf<O2>, v3:rxjs.ObservedValueOf<O3>) -> R):rxjs.Observable<R> { })
	@:overload(function<O1, O2, O3, O4, R>(v1:O1, v2:O2, v3:O3, v4:O4, resultSelector:(v1:rxjs.ObservedValueOf<O1>, v2:rxjs.ObservedValueOf<O2>, v3:rxjs.ObservedValueOf<O3>, v4:rxjs.ObservedValueOf<O4>) -> R):rxjs.Observable<R> { })
	@:overload(function<O1, O2, O3, O4, O5, R>(v1:O1, v2:O2, v3:O3, v4:O4, v5:O5, resultSelector:(v1:rxjs.ObservedValueOf<O1>, v2:rxjs.ObservedValueOf<O2>, v3:rxjs.ObservedValueOf<O3>, v4:rxjs.ObservedValueOf<O4>, v5:rxjs.ObservedValueOf<O5>) -> R):rxjs.Observable<R> { })
	@:overload(function<O1, O2, O3, O4, O5, O6, R>(v1:O1, v2:O2, v3:O3, v4:O4, v5:O5, v6:O6, resultSelector:(v1:rxjs.ObservedValueOf<O1>, v2:rxjs.ObservedValueOf<O2>, v3:rxjs.ObservedValueOf<O3>, v4:rxjs.ObservedValueOf<O4>, v5:rxjs.ObservedValueOf<O5>, v6:rxjs.ObservedValueOf<O6>) -> R):rxjs.Observable<R> { })
	@:overload(function<O1, O2>(v1:O1, v2:O2):rxjs.Observable<ts.Tuple2<rxjs.ObservedValueOf<O1>, rxjs.ObservedValueOf<O2>>> { })
	@:overload(function<O1, O2, O3>(v1:O1, v2:O2, v3:O3):rxjs.Observable<ts.Tuple3<rxjs.ObservedValueOf<O1>, rxjs.ObservedValueOf<O2>, rxjs.ObservedValueOf<O3>>> { })
	@:overload(function<O1, O2, O3, O4>(v1:O1, v2:O2, v3:O3, v4:O4):rxjs.Observable<ts.Tuple4<rxjs.ObservedValueOf<O1>, rxjs.ObservedValueOf<O2>, rxjs.ObservedValueOf<O3>, rxjs.ObservedValueOf<O4>>> { })
	@:overload(function<O1, O2, O3, O4, O5>(v1:O1, v2:O2, v3:O3, v4:O4, v5:O5):rxjs.Observable<ts.Tuple5<rxjs.ObservedValueOf<O1>, rxjs.ObservedValueOf<O2>, rxjs.ObservedValueOf<O3>, rxjs.ObservedValueOf<O4>, rxjs.ObservedValueOf<O5>>> { })
	@:overload(function<O1, O2, O3, O4, O5, O6>(v1:O1, v2:O2, v3:O3, v4:O4, v5:O5, v6:O6):rxjs.Observable<ts.Tuple6<rxjs.ObservedValueOf<O1>, rxjs.ObservedValueOf<O2>, rxjs.ObservedValueOf<O3>, rxjs.ObservedValueOf<O4>, rxjs.ObservedValueOf<O5>, rxjs.ObservedValueOf<O6>>> { })
	@:overload(function<O>(array:Array<O>):rxjs.Observable<Array<rxjs.ObservedValueOf<O>>> { })
	@:overload(function<R>(array:Array<rxjs.ObservableInput<Dynamic>>):rxjs.Observable<R> { })
	@:overload(function<O, R>(array:Array<O>, resultSelector:(values:haxe.extern.Rest<rxjs.ObservedValueOf<O>>) -> R):rxjs.Observable<R> { })
	@:overload(function<R>(array:Array<rxjs.ObservableInput<Dynamic>>, resultSelector:(values:haxe.extern.Rest<Dynamic>) -> R):rxjs.Observable<R> { })
	@:overload(function<O>(observables:haxe.extern.Rest<O>):rxjs.Observable<Array<rxjs.ObservedValueOf<O>>> { })
	@:overload(function<O, R>(observables:haxe.extern.Rest<ts.AnyOf2<O, (values:haxe.extern.Rest<rxjs.ObservedValueOf<O>>) -> R>>):rxjs.Observable<R> { })
	@:overload(function<R>(observables:haxe.extern.Rest<ts.AnyOf7<rxjs.Subscribable<Any>, rxjs.Subscribable<Dynamic>, ts.lib.PromiseLike<Dynamic>, rxjs.InteropObservable<Dynamic>, ts.lib.ArrayLike<Dynamic>, ts.lib.Iterable<Dynamic>, (values:haxe.extern.Rest<Dynamic>) -> R>>):rxjs.Observable<R> { })
	static function zip<O1, R>(v1:O1, resultSelector:(v1:rxjs.ObservedValueOf<O1>) -> R):rxjs.Observable<R>;
	/**
		Converts from a common {@link ObservableInput} type to an observable where subscription and emissions
		are scheduled on the provided scheduler.
	**/
	static function scheduled<T>(input:rxjs.ObservableInput<T>, scheduler:rxjs.SchedulerLike):rxjs.Observable<T>;
	/**
		The same Observable instance returned by any call to {@link empty} without a
		`scheduler`. It is preferrable to use this over `empty()`.
	**/
	static var EMPTY : rxjs.Observable<Any>;
	/**
		An Observable that emits no items to the Observer and never completes.
		
		![](never.png)
		
		A simple Observable that emits neither values nor errors nor the completion
		notification. It can be used for testing purposes or for composing with other
		Observables. Please note that by never emitting a complete notification, this
		Observable keeps the subscription from being disposed automatically.
		Subscriptions need to be manually disposed.
		
		##  Example
		### Emit the number 7, then never emit anything else (not even complete)
		```ts
		import { NEVER } from 'rxjs';
		import { startWith } from 'rxjs/operators';
		
		function info() {
		   console.log('Will not be called');
		}
		const result = NEVER.pipe(startWith(7));
		result.subscribe(x => console.log(x), info, info);
		
		```
	**/
	static var NEVER : rxjs.Observable<Any>;
	/**
		The global configuration object for RxJS, used to configure things
		like what Promise contructor should used to create Promises
	**/
	static var config : {
		/**
			The promise constructor used by default for methods such as
			{@link toPromise} and {@link forEach}
		**/
		var Promise : ts.lib.PromiseConstructorLike;
		/**
			If true, turns on synchronous error rethrowing, which is a deprecated behavior
			in v6 and higher. This behavior enables bad patterns like wrapping a subscribe
			call in a try/catch block. It also enables producer interference, a nasty bug
			where a multicast can be broken for all observers by a downstream consumer with
			an unhandled error. DO NOT USE THIS FLAG UNLESS IT'S NEEDED TO BY TIME
			FOR MIGRATION REASONS.
		**/
		var useDeprecatedSynchronousErrorHandling : Bool;
	};
}