package rxjs;
/**
	An error thrown when an Observable or a sequence was queried but has no
	elements.
**/
@:jsRequire("rxjs", "EmptyError") extern class EmptyError {
	function new();
	var name : String;
	var message : String;
	@:optional
	var stack : String;
}