package react;
typedef FunctionComponent<P> = {
	@:selfCall
	function call(props:PropsWithChildren<P>, ?context:Dynamic):Null<ReactElement<Dynamic, Dynamic>>;
	@:optional
	var propTypes : { };
	@:optional
	var contextTypes : { };
	@:optional
	var defaultProps : { };
	@:optional
	var displayName : String;
};