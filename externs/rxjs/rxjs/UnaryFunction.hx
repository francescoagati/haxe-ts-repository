package rxjs;
/**
	OPERATOR INTERFACES
**/
typedef UnaryFunction<T, R> = {
	@:selfCall
	function call(source:T):R;
};