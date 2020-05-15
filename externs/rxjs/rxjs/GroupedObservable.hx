package rxjs;
/**
	An Observable representing values belonging to the same group represented by
	a common key. The values emitted by a GroupedObservable come from the source
	Observable. The common key is available as the field `key` on a
	GroupedObservable instance.
**/
@:jsRequire("rxjs", "GroupedObservable") extern class GroupedObservable<K, T> extends Observable<T> {
	function new<K, T>(key:K, groupSubject:Subject<T>, ?refCountSubscription:RefCountSubscription);
	var key : K;
	@:noCompletion
	var groupSubject : Dynamic;
	@:optional
	@:noCompletion
	var refCountSubscription : Dynamic;
	function _subscribe(subscriber:Subscriber<T>):Subscription;
}