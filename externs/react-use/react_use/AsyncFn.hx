package react_use;
typedef AsyncFn<Result, Args> = ts.Tuple2<react_use.AsyncState<Result>, (args:haxe.extern.Rest<Any>) -> ts.lib.Promise<Result>>;