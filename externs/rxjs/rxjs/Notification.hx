package rxjs;
/**
	Represents a push-based event or value that an {@link Observable} can emit.
	This class is particularly useful for operators that manage notifications,
	like {@link materialize}, {@link dematerialize}, {@link observeOn}, and
	others. Besides wrapping the actual delivered value, it also annotates it
	with metadata of, for instance, what type of push message it is (`next`,
	`error`, or `complete`).
**/
@:jsRequire("rxjs", "Notification") extern class Notification<T> {
	function new<T>(kind:String, ?value:T, ?error:Dynamic);
	var kind : String;
	@:optional
	var value : T;
	@:optional
	var error : Dynamic;
	var hasValue : Bool;
	/**
		Delivers to the given `observer` the value wrapped by this Notification.
	**/
	function observe(observer:PartialObserver<T>):Dynamic;
	/**
		Given some {@link Observer} callbacks, deliver the value represented by the
		current Notification to the correctly corresponding callback.
	**/
	@:native("do")
	function do_(next:(value:T) -> Void, ?error:(err:Dynamic) -> Void, ?complete:() -> Void):Dynamic;
	/**
		Takes an Observer or its individual callback functions, and calls `observe`
		or `do` methods accordingly.
	**/
	function accept(nextOrObserver:ts.AnyOf4<NextObserver<T>, ErrorObserver<T>, CompletionObserver<T>, (value:T) -> Void>, ?error:(err:Dynamic) -> Void, ?complete:() -> Void):Dynamic;
	/**
		Returns a simple Observable that just delivers the notification represented
		by this Notification instance.
	**/
	function toObservable():Observable<T>;
	@:noCompletion
	static var completeNotification : Dynamic;
	@:noCompletion
	static var undefinedValueNotification : Dynamic;
	/**
		A shortcut to create a Notification instance of the type `next` from a
		given value.
	**/
	static function createNext<T>(value:T):Notification<T>;
	/**
		A shortcut to create a Notification instance of the type `error` from a
		given error.
	**/
	static function createError<T>(?err:Dynamic):Notification<T>;
	/**
		A shortcut to create a Notification instance of the type `complete`.
	**/
	static function createComplete():Notification<Dynamic>;
}