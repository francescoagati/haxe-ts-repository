package react;
typedef FunctionComponentFactory<P> = ts.AnyOf2<() -> FunctionComponentElement<P>, (props:Dynamic) -> FunctionComponentElement<P>>;