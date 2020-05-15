package rxjs;
/**
	A representation of any set of values over any amount of time. This is the most basic building block
	of RxJS.
**/
@:jsRequire("rxjs", "Observable") extern class Observable<T> {
	function new<T>(?subscribe:(subscriber:Subscriber<T>) -> TeardownLogic);
	/**
		Internal implementation detail, do not use directly.
	**/
	var _isScalar : Bool;
	var source : Observable<Dynamic>;
	@:native("operator")
	var operator_ : Operator<Dynamic, T>;
	/**
		Creates a new Observable, with this Observable as the source, and the passed
		operator defined as the new observable's operator.
	**/
	function lift<R>(operator_:Operator<T, R>):Observable<R>;
	@:overload(function(next:Null<Dynamic>, error:Null<Dynamic>, complete:() -> Void):Subscription { })
	@:overload(function(next:Null<Dynamic>, error:(error:Dynamic) -> Void, ?complete:() -> Void):Subscription { })
	@:overload(function(next:(value:T) -> Void, error:Null<Dynamic>, complete:() -> Void):Subscription { })
	@:overload(function(?next:(value:T) -> Void, ?error:(error:Dynamic) -> Void, ?complete:() -> Void):Subscription { })
	function subscribe(?observer:ts.AnyOf3<NextObserver<T>, ErrorObserver<T>, CompletionObserver<T>>):Subscription;
	function _trySubscribe(sink:Subscriber<T>):TeardownLogic;
	function forEach(next:(value:T) -> Void, ?promiseCtor:ts.lib.PromiseConstructorLike):ts.lib.Promise<Void>;
	function _subscribe(subscriber:Subscriber<Dynamic>):TeardownLogic;
	@:overload(function<A>(op1:OperatorFunction<T, A>):Observable<A> { })
	@:overload(function<A, B>(op1:OperatorFunction<T, A>, op2:OperatorFunction<A, B>):Observable<B> { })
	@:overload(function<A, B, C>(op1:OperatorFunction<T, A>, op2:OperatorFunction<A, B>, op3:OperatorFunction<B, C>):Observable<C> { })
	@:overload(function<A, B, C, D>(op1:OperatorFunction<T, A>, op2:OperatorFunction<A, B>, op3:OperatorFunction<B, C>, op4:OperatorFunction<C, D>):Observable<D> { })
	@:overload(function<A, B, C, D, E>(op1:OperatorFunction<T, A>, op2:OperatorFunction<A, B>, op3:OperatorFunction<B, C>, op4:OperatorFunction<C, D>, op5:OperatorFunction<D, E>):Observable<E> { })
	@:overload(function<A, B, C, D, E, F>(op1:OperatorFunction<T, A>, op2:OperatorFunction<A, B>, op3:OperatorFunction<B, C>, op4:OperatorFunction<C, D>, op5:OperatorFunction<D, E>, op6:OperatorFunction<E, F>):Observable<F> { })
	@:overload(function<A, B, C, D, E, F, G>(op1:OperatorFunction<T, A>, op2:OperatorFunction<A, B>, op3:OperatorFunction<B, C>, op4:OperatorFunction<C, D>, op5:OperatorFunction<D, E>, op6:OperatorFunction<E, F>, op7:OperatorFunction<F, G>):Observable<G> { })
	@:overload(function<A, B, C, D, E, F, G, H>(op1:OperatorFunction<T, A>, op2:OperatorFunction<A, B>, op3:OperatorFunction<B, C>, op4:OperatorFunction<C, D>, op5:OperatorFunction<D, E>, op6:OperatorFunction<E, F>, op7:OperatorFunction<F, G>, op8:OperatorFunction<G, H>):Observable<H> { })
	@:overload(function<A, B, C, D, E, F, G, H, I>(op1:OperatorFunction<T, A>, op2:OperatorFunction<A, B>, op3:OperatorFunction<B, C>, op4:OperatorFunction<C, D>, op5:OperatorFunction<D, E>, op6:OperatorFunction<E, F>, op7:OperatorFunction<F, G>, op8:OperatorFunction<G, H>, op9:OperatorFunction<H, I>):Observable<I> { })
	@:overload(function<A, B, C, D, E, F, G, H, I>(op1:OperatorFunction<T, A>, op2:OperatorFunction<A, B>, op3:OperatorFunction<B, C>, op4:OperatorFunction<C, D>, op5:OperatorFunction<D, E>, op6:OperatorFunction<E, F>, op7:OperatorFunction<F, G>, op8:OperatorFunction<G, H>, op9:OperatorFunction<H, I>, operations:haxe.extern.Rest<OperatorFunction<Dynamic, Dynamic>>):Observable<{ }> { })
	function pipe():Observable<T>;
	@:overload(function<T>(PromiseCtor:ts.lib.PromiseConstructor):ts.lib.Promise<T> { })
	@:overload(function<T>(PromiseCtor:ts.lib.PromiseConstructorLike):ts.lib.Promise<T> { })
	function toPromise<T>():ts.lib.Promise<T>;
	/**
		Creates a new cold Observable by calling the Observable constructor
	**/
	static var create : ts.lib.Function;
	@:native("if")
	static var if_ : ts.AnyOf3<(condition:() -> Bool) -> Observable<ts.AnyOf2<Any, Any>>, (condition:() -> Bool, trueResult:ts.AnyOf4<Subscribable<Any>, Subscribable<Any>, ts.lib.PromiseLike<Any>, InteropObservable<Any>>) -> Observable<ts.AnyOf2<Any, Any>>, (condition:() -> Bool, trueResult:ts.AnyOf4<Subscribable<Any>, Subscribable<Any>, ts.lib.PromiseLike<Any>, InteropObservable<Any>>, falseResult:ts.AnyOf4<Subscribable<Any>, Subscribable<Any>, ts.lib.PromiseLike<Any>, InteropObservable<Any>>) -> Observable<ts.AnyOf2<Any, Any>>>;
	@:native("throw")
	static var throw_ : ts.AnyOf2<(error:Dynamic) -> Observable<Any>, (error:Dynamic, scheduler:SchedulerLike) -> Observable<Any>>;
}