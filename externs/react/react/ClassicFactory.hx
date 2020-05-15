package react;
typedef ClassicFactory<P> = ts.AnyOf2<() -> CElement<P, ClassicComponent<P, Dynamic>>, (props:Dynamic) -> CElement<P, ClassicComponent<P, Dynamic>>>;