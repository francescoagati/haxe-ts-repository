package rxjs;
/**
	An error thrown when an action is invalid because the object has been
	unsubscribed.
**/
typedef IObjectUnsubscribedError = {
	var name : String;
	var message : String;
	@:optional
	var stack : String;
};