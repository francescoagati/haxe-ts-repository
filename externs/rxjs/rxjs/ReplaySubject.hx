package rxjs;
/**
	A variant of Subject that "replays" or emits old values to new subscribers.
	It buffers a set number of values and will emit those values immediately to
	any new subscribers in addition to emitting new values to existing subscribers.
**/
@:jsRequire("rxjs", "ReplaySubject") extern class ReplaySubject<T> extends Subject<T> {
	function new<T>(?bufferSize:Float, ?windowTime:Float, ?scheduler:SchedulerLike);
	@:optional
	@:noCompletion
	var scheduler : Dynamic;
	@:noCompletion
	var _events : Dynamic;
	@:noCompletion
	var _bufferSize : Dynamic;
	@:noCompletion
	var _windowTime : Dynamic;
	@:noCompletion
	var _infiniteTimeWindow : Dynamic;
	@:noCompletion
	var nextInfiniteTimeWindow : Dynamic;
	@:noCompletion
	var nextTimeWindow : Dynamic;
	function _getNow():Float;
	@:noCompletion
	var _trimBufferThenGetEvents : Dynamic;
}