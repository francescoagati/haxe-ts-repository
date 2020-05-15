package rxjs;
typedef OperatorFunction<T, R> = {
	@:selfCall
	function call(source:Observable<T>):Observable<R>;
};