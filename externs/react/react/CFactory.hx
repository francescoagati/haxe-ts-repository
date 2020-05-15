package react;
typedef CFactory<P, T> = ts.AnyOf2<() -> CElement<P, T>, (props:Dynamic) -> CElement<P, T>>;