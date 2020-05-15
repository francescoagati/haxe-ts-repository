package rxjs;
/**
	An error thrown when duetime elapses.
**/
@:jsRequire("rxjs", "TimeoutError") extern class TimeoutError {
	function new();
	var name : String;
	var message : String;
	@:optional
	var stack : String;
}