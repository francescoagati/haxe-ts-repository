package use_immer;
typedef Reducer<S, A> = (draftState:Draft<S>, action:A) -> ts.AnyOf2<Void, S>;