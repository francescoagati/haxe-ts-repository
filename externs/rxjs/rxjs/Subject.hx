package rxjs;
/**
	A Subject is a special type of Observable that allows values to be
	multicasted to many Observers. Subjects are like EventEmitters.
	
	Every Subject is an Observable and an Observer. You can subscribe to a
	Subject, and you can call next to feed values as well as error and complete.
**/
@:jsRequire("rxjs", "Subject") extern class Subject<T> extends Observable<T> {
	function new<T>();
	var observers : Array<Observer<T>>;
	var closed : Bool;
	var isStopped : Bool;
	var hasError : Bool;
	var thrownError : Dynamic;
	function next(?value:T):Void;
	function error(err:Dynamic):Void;
	function complete():Void;
	function unsubscribe():Void;
	function _trySubscribe(subscriber:Subscriber<T>):TeardownLogic;
	function _subscribe(subscriber:Subscriber<T>):Subscription;
	/**
		Creates a new Observable with this Subject as the source. You can do this
		to create customize Observer-side logic of the Subject and conceal it from
		code that uses the Observable.
	**/
	function asObservable():Observable<T>;
	static var create : ts.lib.Function;
}