package baconjs;
typedef EventSpawner<V, V2> = (e:baconjs.Event_<V>) -> ts.AnyOf3<V2, baconjs.Observable<V2>, baconjs.Event_<V2>>;