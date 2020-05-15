package rxjs;
/**
	OBSERVER INTERFACES
**/
typedef NextObserver<T> = {
	@:optional
	var closed : Bool;
	var next : (value:T) -> Void;
	@:optional
	var error : (err:Dynamic) -> Void;
	@:optional
	var complete : () -> Void;
};