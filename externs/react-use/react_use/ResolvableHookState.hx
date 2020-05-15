package react_use;
typedef ResolvableHookState<S> = ts.AnyOf3<S, react_use.StateSetter<S>, react_use.InitialStateSetter<S>>;