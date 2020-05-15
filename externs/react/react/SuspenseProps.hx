package react;
typedef SuspenseProps = {
	@:optional
	var children : ReactNode;
	/**
		A fallback react tree to show when a Suspense child (like React.lazy) suspends
	**/
	var fallback : Null<ts.AnyOf7<String, Float, Bool, { }, ReactElement<Dynamic, ts.AnyOf3<String, (props:Dynamic) -> Null<ReactElement<Dynamic, Dynamic>>, { }>>, ReactNodeArray_, ReactPortal>>;
	/**
		Tells React whether to “skip” revealing this boundary during the initial load.
		This API will likely be removed in a future release.
	**/
	@:optional
	var unstable_avoidThisFallback : Bool;
};