package react;
typedef ComponentElement<P, T> = {
	@:optional
	var ref : ts.AnyOf3<String, (instance:Null<T>) -> Void, RefObject<T>>;
	var type : ComponentClass<P, Dynamic>;
	var props : P;
	var key : Null<ts.AnyOf2<String, Float>>;
};