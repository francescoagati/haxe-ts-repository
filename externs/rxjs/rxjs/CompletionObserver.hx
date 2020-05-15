package rxjs;
typedef CompletionObserver<T> = {
	@:optional
	var closed : Bool;
	@:optional
	var next : (value:T) -> Void;
	@:optional
	var error : (err:Dynamic) -> Void;
	var complete : () -> Void;
};