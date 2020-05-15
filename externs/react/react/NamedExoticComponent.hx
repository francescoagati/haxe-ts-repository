package react;
typedef NamedExoticComponent<P> = {
	/**
		**NOTE**: Exotic components are not callable.
	**/
	@:selfCall
	function call(props:P):Null<ReactElement<Dynamic, ts.AnyOf3<String, (props:Dynamic) -> Dynamic, { }>>>;
	@:optional
	var displayName : String;
	@:native("$$typeof")
	final DollarDollarTypeof : js.lib.Symbol;
};