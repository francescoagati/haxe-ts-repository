package use_immer;
typedef ImmerHook<S> = ts.Tuple2<S, (f:(draft:Draft<S>) -> ts.AnyOf2<Void, S>) -> Void>;