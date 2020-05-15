package rxjs;
/**
	We need this JSDoc comment for affecting ESDoc.
**/
@jsInaccessible extern class AsyncAction<T> extends rxjs.Action<T> {
	function new<T>(scheduler:rxjs.AsyncScheduler, work:ts.AnyOf2<() -> Void, (state:T) -> Void>);
	@:noCompletion
	var scheduler : rxjs.AsyncScheduler;
	@:noCompletion
	var work : ts.AnyOf2<() -> Void, (state:T) -> Void>;
	var id : Dynamic;
	var state : T;
	var delay : Float;
	@:noCompletion
	var pending : Bool;
	@:noCompletion
	function requestAsyncId(scheduler:rxjs.AsyncScheduler, ?id:Dynamic, ?delay:Float):Dynamic;
	@:noCompletion
	function recycleAsyncId(scheduler:rxjs.AsyncScheduler, id:Dynamic, ?delay:Float):Dynamic;
	/**
		Immediately executes this action and the `work` it contains.
	**/
	function execute(state:T, delay:Float):Dynamic;
	@:noCompletion
	function _execute(state:T, delay:Float):Dynamic;
	function _unsubscribe():Void;
}