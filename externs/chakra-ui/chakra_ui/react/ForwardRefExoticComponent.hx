package chakra_ui.react;
typedef ForwardRefExoticComponent<P> = {
	/**
		**NOTE**: Exotic components are not callable.
	**/
	@:selfCall
	function call(props:P):Null<chakra_ui.react.ReactElement<Dynamic, ts.AnyOf3<String, (props:Dynamic) -> Dynamic, { }>>>;
	@:optional
	var defaultProps : { };
	@:optional
	var propTypes : { };
	@:optional
	var displayName : String;
	@:native("$$typeof")
	final DollarDollarTypeof : js.lib.Symbol;
};