package rxjs;
typedef SubscribableOrPromise<T> = ts.AnyOf4<Subscribable<T>, Subscribable<Any>, ts.lib.PromiseLike<T>, InteropObservable<T>>;