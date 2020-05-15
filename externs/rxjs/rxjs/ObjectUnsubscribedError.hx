package rxjs;
/**
	An error thrown when an action is invalid because the object has been
	unsubscribed.
**/
@:jsRequire("rxjs", "ObjectUnsubscribedError") extern class ObjectUnsubscribedError {
	function new();
	var name : String;
	var message : String;
	@:optional
	var stack : String;
}