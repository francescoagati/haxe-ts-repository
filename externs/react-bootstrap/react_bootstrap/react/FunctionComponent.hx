package react_bootstrap.react;
typedef FunctionComponent<P> = {
	@:selfCall
	function call(props:react_bootstrap.react.PropsWithChildren<P>, ?context:Dynamic):Null<react_bootstrap.react.ReactElement<Dynamic, Dynamic>>;
	@:optional
	var propTypes : { };
	@:optional
	var contextTypes : { };
	@:optional
	var defaultProps : { };
	@:optional
	var displayName : String;
};