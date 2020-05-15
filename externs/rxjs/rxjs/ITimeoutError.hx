package rxjs;
/**
	An error thrown when duetime elapses.
**/
typedef ITimeoutError = {
	var name : String;
	var message : String;
	@:optional
	var stack : String;
};