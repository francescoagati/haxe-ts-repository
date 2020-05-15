package react;
typedef Props<T> = {
	@:optional
	var children : ReactNode;
	@:optional
	var key : ts.AnyOf2<String, Float>;
	@:optional
	var ref : ts.AnyOf3<String, (instance:Null<T>) -> Void, RefObject<T>>;
};