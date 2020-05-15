package graphql_request;
typedef GraphQLError = {
	var message : String;
	var locations : Array<{
		var line : Float;
		var column : Float;
	}>;
	var path : Array<String>;
};