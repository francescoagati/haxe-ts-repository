package rxjs;
/**
	An error thrown when one or more errors have occurred during the
	`unsubscribe` of a {@link Subscription}.
**/
@:jsRequire("rxjs", "UnsubscriptionError") extern class UnsubscriptionError {
	function new(errors:Array<Dynamic>);
	final errors : Array<Dynamic>;
	var name : String;
	var message : String;
	@:optional
	var stack : String;
}