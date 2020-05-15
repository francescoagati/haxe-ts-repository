package rxjs;
typedef ErrorObserver<T> = {
	@:optional
	var closed : Bool;
	@:optional
	var next : (value:T) -> Void;
	var error : (err:Dynamic) -> Void;
	@:optional
	var complete : () -> Void;
};