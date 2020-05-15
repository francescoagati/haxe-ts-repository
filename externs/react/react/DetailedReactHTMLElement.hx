package react;
typedef DetailedReactHTMLElement<P, T> = {
	var type : String;
	var ref : LegacyRef<T>;
	var props : P;
	var key : Null<ts.AnyOf2<String, Float>>;
};