package rxjs;
@:jsRequire("rxjs", "ConnectableObservable") extern class ConnectableObservable<T> extends Observable<T> {
	function new<T>(source:Observable<T>, subjectFactory:() -> Subject<T>);
	@:noCompletion
	var subjectFactory : () -> Subject<T>;
	@:noCompletion
	var _subject : Subject<T>;
	@:noCompletion
	var _refCount : Float;
	@:noCompletion
	var _connection : Subscription;
	var _isComplete : Bool;
	function _subscribe(subscriber:Subscriber<T>):Subscription;
	@:noCompletion
	function getSubject():Subject<T>;
	function connect():Subscription;
	function refCount():Observable<T>;
}