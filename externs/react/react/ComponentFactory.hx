package react;
typedef ComponentFactory<P, T> = ts.AnyOf2<() -> CElement<P, T>, (props:Dynamic) -> CElement<P, T>>;