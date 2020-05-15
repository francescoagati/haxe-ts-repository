package rxjs;
typedef Observer<T> = {
	@:optional
	var closed : Bool;
	var next : (value:T) -> Void;
	var error : (err:Dynamic) -> Void;
	var complete : () -> Void;
};