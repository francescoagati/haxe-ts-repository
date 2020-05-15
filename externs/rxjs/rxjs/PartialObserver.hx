package rxjs;
typedef PartialObserver<T> = ts.AnyOf3<NextObserver<T>, ErrorObserver<T>, CompletionObserver<T>>;