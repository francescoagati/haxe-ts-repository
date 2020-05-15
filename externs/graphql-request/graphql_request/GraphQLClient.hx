package graphql_request;
@:jsRequire("graphql-request", "GraphQLClient") extern class GraphQLClient {
	function new(url:String, ?options:Options);
	@:noCompletion
	var url : Dynamic;
	@:noCompletion
	var options : Dynamic;
	function rawRequest<T>(query:String, ?variables:Variables):ts.lib.Promise<{
		@:optional
		var data : T;
		@:optional
		var extensions : Dynamic;
		var headers : ts.html.Headers;
		var status : Float;
		@:optional
		var errors : Array<GraphQLError>;
	}>;
	function request<T>(query:String, ?variables:Variables):ts.lib.Promise<T>;
	function setHeaders(headers:Headers):GraphQLClient;
	function setHeader(key:String, value:String):GraphQLClient;
}