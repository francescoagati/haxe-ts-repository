package rxjs;
/**
	An error thrown when an element was queried at a certain index of an
	Observable, but no such index or position exists in that sequence.
**/
@:jsRequire("rxjs", "ArgumentOutOfRangeError") extern class ArgumentOutOfRangeError {
	function new();
	var name : String;
	var message : String;
	@:optional
	var stack : String;
}