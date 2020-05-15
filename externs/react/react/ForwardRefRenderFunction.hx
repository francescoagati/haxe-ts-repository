package react;
typedef ForwardRefRenderFunction<T, P> = {
	@:selfCall
	function call(props:PropsWithChildren<P>, ref:Null<ts.AnyOf2<(instance:Null<T>) -> Void, MutableRefObject<Null<T>>>>):Null<ReactElement<Dynamic, ts.AnyOf3<String, (props:Dynamic) -> Dynamic, { }>>>;
	@:optional
	var displayName : String;
	/**
		defaultProps are not supported on render functions
	**/
	@:optional
	var defaultProps : Any;
	/**
		propTypes are not supported on render functions
	**/
	@:optional
	var propTypes : Any;
};