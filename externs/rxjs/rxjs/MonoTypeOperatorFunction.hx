package rxjs;
typedef MonoTypeOperatorFunction<T> = {
	@:selfCall
	function call(source:Observable<T>):Observable<T>;
};