package rxjs;
/**
	An error thrown when an element was queried at a certain index of an
	Observable, but no such index or position exists in that sequence.
**/
typedef IArgumentOutOfRangeError = {
	var name : String;
	var message : String;
	@:optional
	var stack : String;
};