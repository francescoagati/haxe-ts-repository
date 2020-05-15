package graphql_request;
@:jsRequire("graphql-request", "ClientError") extern class ClientError extends ts.lib.Error {
	function new(response:GraphQLResponse, request:GraphQLRequestContext);
	var response : GraphQLResponse;
	var request : GraphQLRequestContext;
	@:noCompletion
	static function extractMessage(response:Dynamic):Dynamic;
}