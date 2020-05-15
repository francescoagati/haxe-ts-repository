package rxjs;
typedef ObservableInput<T> = ts.AnyOf6<Subscribable<Any>, Subscribable<T>, ts.lib.PromiseLike<T>, InteropObservable<T>, ts.lib.ArrayLike<T>, ts.lib.Iterable<T>>;