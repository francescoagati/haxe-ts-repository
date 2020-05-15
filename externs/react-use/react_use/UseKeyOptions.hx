package react_use;
typedef UseKeyOptions = {
	@:optional
	var event : String;
	@:optional
	var target : ts.AnyOf2<react_use.ListenerType1, react_use.ListenerType2>;
	@:optional
	var options : Dynamic;
};