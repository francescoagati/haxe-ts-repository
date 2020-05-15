package react;
typedef SFCFactory<P> = ts.AnyOf2<() -> FunctionComponentElement<P>, (props:Dynamic) -> FunctionComponentElement<P>>;