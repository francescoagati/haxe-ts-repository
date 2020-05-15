package rxjs;
/**
	A variant of Subject that only emits a value when it completes. It will emit
	its latest value to all its observers on completion.
**/
@:jsRequire("rxjs", "AsyncSubject") extern class AsyncSubject<T> extends Subject<T> {
	@:noCompletion
	var value : Dynamic;
	@:noCompletion
	var hasNext : Dynamic;
	@:noCompletion
	var hasCompleted : Dynamic;
	function _subscribe(subscriber:Subscriber<Dynamic>):Subscription;
	function next(value:T):Void;
	function error(error:Dynamic):Void;
}