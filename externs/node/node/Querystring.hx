package node;
@:jsRequire("querystring") @valueModuleOnly extern class Querystring {
	static function stringify(?obj:node.querystring.ParsedUrlQueryInput, ?sep:String, ?eq:String, ?options:node.querystring.StringifyOptions):String;
	static function parse(str:String, ?sep:String, ?eq:String, ?options:node.querystring.ParseOptions):node.querystring.ParsedUrlQuery;
	static function escape(str:String):String;
	static function unescape(str:String):String;
	/**
		The querystring.encode() function is an alias for querystring.stringify().
	**/
	static var encode : ts.AnyOf5<() -> String, (obj:node.querystring.ParsedUrlQueryInput) -> String, (obj:node.querystring.ParsedUrlQueryInput, sep:String) -> String, (obj:node.querystring.ParsedUrlQueryInput, sep:String, eq:String) -> String, (obj:node.querystring.ParsedUrlQueryInput, sep:String, eq:String, options:node.querystring.StringifyOptions) -> String>;
	/**
		The querystring.decode() function is an alias for querystring.parse().
	**/
	static var decode : ts.AnyOf4<(str:String) -> node.querystring.ParsedUrlQuery, (str:String, sep:String) -> node.querystring.ParsedUrlQuery, (str:String, sep:String, eq:String) -> node.querystring.ParsedUrlQuery, (str:String, sep:String, eq:String, options:node.querystring.ParseOptions) -> node.querystring.ParsedUrlQuery>;
}