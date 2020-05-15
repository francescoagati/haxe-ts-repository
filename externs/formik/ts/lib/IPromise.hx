package ts.lib;
/**
	Represents the completion of an asynchronous operation
**/
typedef IPromise<T> = {
	/**
		Attaches callbacks for the resolution and/or rejection of the Promise.
	**/
	function then<TResult1, TResult2>(?onfulfilled:(value:T) -> ts.AnyOf2<TResult1, PromiseLike<TResult1>>, ?onrejected:(reason:Dynamic) -> ts.AnyOf2<TResult2, PromiseLike<TResult2>>):Promise<ts.AnyOf2<TResult1, TResult2>>;
	/**
		Attaches a callback for only the rejection of the Promise.
	**/
	@:native("catch")
	function catch_<TResult>(?onrejected:(reason:Dynamic) -> ts.AnyOf2<TResult, PromiseLike<TResult>>):Promise<ts.AnyOf2<T, TResult>>;
};