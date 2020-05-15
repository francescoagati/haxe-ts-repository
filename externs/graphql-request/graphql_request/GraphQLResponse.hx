package graphql_request;
typedef GraphQLResponse = {
	@:optional
	var data : Dynamic;
	@:optional
	var errors : Array<graphql_request.GraphQLError>;
	@:optional
	var extensions : Dynamic;
	var status : Float;
};