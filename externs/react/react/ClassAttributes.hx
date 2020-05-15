package react;
typedef ClassAttributes<T> = {
	@:optional
	var ref : ts.AnyOf3<String, (instance:Null<T>) -> Void, RefObject<T>>;
	@:optional
	var key : ts.AnyOf2<String, Float>;
};