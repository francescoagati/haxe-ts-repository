package rxjs;
typedef Operator<T, R> = {
	function call(subscriber:Subscriber<R>, source:Dynamic):TeardownLogic;
};