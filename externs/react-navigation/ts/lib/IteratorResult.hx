package ts.lib;
typedef IteratorResult<T, TReturn> = ts.AnyOf2<IteratorYieldResult<T>, IteratorReturnResult<TReturn>>;