package rxjs;
/**
	Implements the {@link Observer} interface and extends the
	{@link Subscription} class. While the {@link Observer} is the public API for
	consuming the values of an {@link Observable}, all Observers get converted to
	a Subscriber, in order to provide Subscription-like capabilities such as
	`unsubscribe`. Subscriber is a common type in RxJS, and crucial for
	implementing operators, but it is rarely used as a public API.
**/
@:jsRequire("rxjs", "Subscriber") extern class Subscriber<T> extends Subscription {
	function new<T>(?destinationOrNext:ts.AnyOf4<NextObserver<Dynamic>, ErrorObserver<Dynamic>, CompletionObserver<Dynamic>, (value:T) -> Void>, ?error:ts.AnyOf2<() -> Void, (e:Dynamic) -> Void>, ?complete:() -> Void);
	var syncErrorValue : Dynamic;
	var syncErrorThrown : Bool;
	var syncErrorThrowable : Bool;
	@:noCompletion
	var isStopped : Bool;
	@:noCompletion
	var destination : ts.AnyOf4<Subscriber<Dynamic>, NextObserver<Dynamic>, ErrorObserver<Dynamic>, CompletionObserver<Dynamic>>;
	/**
		The {@link Observer} callback to receive notifications of type `next` from
		the Observable, with a value. The Observable may call this method 0 or more
		times.
	**/
	function next(?value:T):Void;
	/**
		The {@link Observer} callback to receive notifications of type `error` from
		the Observable, with an attached `Error`. Notifies the Observer that
		the Observable has experienced an error condition.
	**/
	function error(?err:Dynamic):Void;
	/**
		The {@link Observer} callback to receive a valueless notification of type
		`complete` from the Observable. Notifies the Observer that the Observable
		has finished sending push-based notifications.
	**/
	function complete():Void;
	@:noCompletion
	function _next(value:T):Void;
	@:noCompletion
	function _error(err:Dynamic):Void;
	@:noCompletion
	function _complete():Void;
	function _unsubscribeAndRecycle():Subscriber<T>;
	/**
		A static factory for a Subscriber, given a (potentially partial) definition
		of an Observer.
	**/
	static function create<T>(?next:ts.AnyOf2<() -> Void, (x:T) -> Void>, ?error:ts.AnyOf2<() -> Void, (e:Dynamic) -> Void>, ?complete:() -> Void):Subscriber<T>;
}