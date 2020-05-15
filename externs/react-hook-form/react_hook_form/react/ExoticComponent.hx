package react_hook_form.react;
typedef ExoticComponent<P> = {
	/**
		**NOTE**: Exotic components are not callable.
	**/
	@:selfCall
	function call(props:P):Null<react_hook_form.react.ReactElement<Dynamic, ts.AnyOf3<String, (props:Dynamic) -> Dynamic, { }>>>;
	@:native("$$typeof")
	final DollarDollarTypeof : js.lib.Symbol;
};