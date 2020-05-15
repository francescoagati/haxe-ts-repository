package react_use;
typedef AsyncState<T> = ts.AnyOf3<{
	var loading : Bool;
	@:optional
	var error : Any;
	@:optional
	var value : Any;
}, {
	var loading : Bool;
	var error : ts.lib.Error;
	@:optional
	var value : Any;
}, {
	var loading : Bool;
	@:optional
	var error : Any;
	var value : T;
}>;