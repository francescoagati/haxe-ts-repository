package react_use;
typedef HookState<S> = ts.AnyOf2<S, react_use.StateSetter<S>>;