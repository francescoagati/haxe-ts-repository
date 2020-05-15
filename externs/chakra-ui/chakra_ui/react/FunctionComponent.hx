package chakra_ui.react;
typedef FunctionComponent<P> = {
	@:selfCall
	function call(props:chakra_ui.react.PropsWithChildren<P>, ?context:Dynamic):Null<chakra_ui.react.ReactElement<Dynamic, Dynamic>>;
	@:optional
	var propTypes : { };
	@:optional
	var contextTypes : { };
	@:optional
	var defaultProps : { };
	@:optional
	var displayName : String;
};