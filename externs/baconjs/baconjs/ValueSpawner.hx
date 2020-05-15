package baconjs;
typedef ValueSpawner<V, V2> = (value:V) -> ts.AnyOf3<V2, baconjs.Observable<V2>, baconjs.Event_<V2>>;