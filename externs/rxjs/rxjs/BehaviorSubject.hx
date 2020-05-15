package rxjs;
/**
	A variant of Subject that requires an initial value and emits its current
	value whenever it is subscribed to.
**/
@:jsRequire("rxjs", "BehaviorSubject") extern class BehaviorSubject<T> extends Subject<T> {
	function new<T>(_value:T);
	@:noCompletion
	var _value : Dynamic;
	final value : T;
	function getValue():T;
	function next(value:T):Void;
}