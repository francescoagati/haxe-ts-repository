package constate.react;
typedef ProviderExoticComponent<P> = {
	/**
		**NOTE**: Exotic components are not callable.
	**/
	@:selfCall
	function call(props:P):Null<constate.react.ReactElement<Dynamic, ts.AnyOf3<String, (props:Dynamic) -> Dynamic, { }>>>;
	@:optional
	var propTypes : { };
	@:native("$$typeof")
	final DollarDollarTypeof : js.lib.Symbol;
};