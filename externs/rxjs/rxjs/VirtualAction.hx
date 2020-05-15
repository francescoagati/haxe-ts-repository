package rxjs;
/**
	We need this JSDoc comment for affecting ESDoc.
**/
@:jsRequire("rxjs", "VirtualAction") extern class VirtualAction<T> extends AsyncAction<T> {
	function new<T>(scheduler:VirtualTimeScheduler, work:ts.AnyOf2<() -> Void, (state:T) -> Void>, ?index:Float);
	@:noCompletion
	var index : Float;
	@:noCompletion
	var active : Bool;
	@:noCompletion
	function requestAsyncId(scheduler:VirtualTimeScheduler, ?id:Dynamic, ?delay:Float):Dynamic;
	@:noCompletion
	function recycleAsyncId(scheduler:VirtualTimeScheduler, ?id:Dynamic, ?delay:Float):Dynamic;
	static function sortActions<T>(a:VirtualAction<T>, b:VirtualAction<T>):Int;
}