package graphql_request;
typedef GraphQLRequestContext = {
	var query : String;
	@:optional
	var variables : graphql_request.Variables;
};