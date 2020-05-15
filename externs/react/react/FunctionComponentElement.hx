package react;
typedef FunctionComponentElement<P> = {
	@:optional
	var ref : Dynamic;
	var type : FunctionComponent<P>;
	var props : P;
	var key : Null<ts.AnyOf2<String, Float>>;
};