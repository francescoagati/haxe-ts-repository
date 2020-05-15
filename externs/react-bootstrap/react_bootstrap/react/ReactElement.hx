package react_bootstrap.react;
typedef ReactElement<P, T> = {
	var type : T;
	var props : P;
	var key : Null<ts.AnyOf2<String, Float>>;
};