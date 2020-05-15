package constate.react;
typedef FunctionComponent<P> = {
	@:selfCall
	function call(props:constate.react.PropsWithChildren<P>, ?context:Dynamic):Null<constate.react.ReactElement<Dynamic, Dynamic>>;
	@:optional
	var propTypes : { };
	@:optional
	var contextTypes : { };
	@:optional
	var defaultProps : { };
	@:optional
	var displayName : String;
};