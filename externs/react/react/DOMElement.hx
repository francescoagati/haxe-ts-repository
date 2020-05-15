package react;
typedef DOMElement<P, T> = {
	var ref : LegacyRef<T>;
	var type : String;
	var props : P;
	var key : Null<ts.AnyOf2<String, Float>>;
};