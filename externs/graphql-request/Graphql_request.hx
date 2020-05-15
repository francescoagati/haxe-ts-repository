@:jsRequire("graphql-request") @valueModuleOnly extern class Graphql_request {
	static function rawRequest<T>(url:String, query:String, ?variables:graphql_request.Variables):ts.lib.Promise<{
		@:optional
		var data : T;
		@:optional
		var extensions : Dynamic;
		var headers : ts.html.Headers;
		var status : Float;
		@:optional
		var errors : Array<graphql_request.GraphQLError>;
	}>;
	static function request<T>(url:String, query:String, ?variables:graphql_request.Variables):ts.lib.Promise<T>;
	@:native("default")
	static function default_<T>(url:String, query:String, ?variables:graphql_request.Variables):ts.lib.Promise<T>;
}