package react;
typedef RefAttributes<T> = {
	@:optional
	var ref : ts.AnyOf2<(instance:Null<T>) -> Void, RefObject<T>>;
	@:optional
	var key : ts.AnyOf2<String, Float>;
};