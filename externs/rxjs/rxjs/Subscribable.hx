package rxjs;
/**
	OBSERVABLE INTERFACES
**/
typedef Subscribable<T> = {
	@:overload(function(next:Null<Dynamic>, error:Null<Dynamic>, complete:() -> Void):Unsubscribable { })
	@:overload(function(next:Null<Dynamic>, error:(error:Dynamic) -> Void, ?complete:() -> Void):Unsubscribable { })
	@:overload(function(next:(value:T) -> Void, error:Null<Dynamic>, complete:() -> Void):Unsubscribable { })
	@:overload(function(?next:(value:T) -> Void, ?error:(error:Dynamic) -> Void, ?complete:() -> Void):Unsubscribable { })
	function subscribe(?observer:ts.AnyOf3<NextObserver<T>, ErrorObserver<T>, CompletionObserver<T>>):Unsubscribable;
};