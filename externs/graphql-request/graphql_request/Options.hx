package graphql_request;
typedef Options = {
	@:optional
	var method : String;
	@:optional
	var headers : graphql_request.Headers;
	@:optional
	var mode : String;
	@:optional
	var credentials : String;
	@:optional
	var cache : String;
	@:optional
	var redirect : String;
	@:optional
	var referrer : String;
	@:optional
	var referrerPolicy : String;
	@:optional
	var integrity : String;
};