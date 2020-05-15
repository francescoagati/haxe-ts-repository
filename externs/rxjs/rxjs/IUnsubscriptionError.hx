package rxjs;
/**
	An error thrown when one or more errors have occurred during the
	`unsubscribe` of a {@link Subscription}.
**/
typedef IUnsubscriptionError = {
	final errors : Array<Dynamic>;
	var name : String;
	var message : String;
	@:optional
	var stack : String;
};