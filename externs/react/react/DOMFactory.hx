package react;
typedef DOMFactory<P, T> = ts.AnyOf2<() -> DOMElement<P, T>, (props:Dynamic) -> DOMElement<P, T>>;