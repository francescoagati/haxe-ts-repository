package react;
typedef ReactHTMLElement<T> = {
	var type : String;
	var ref : LegacyRef<T>;
	var props : AllHTMLAttributes<T>;
	var key : Null<ts.AnyOf2<String, Float>>;
};