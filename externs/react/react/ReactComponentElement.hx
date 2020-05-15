package react;
typedef ReactComponentElement<T, P> = {
	var type : ts.lib.Exclude<T, Float>;
	var props : P;
	var key : Null<ts.AnyOf2<String, Float>>;
};