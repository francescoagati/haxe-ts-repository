package puppeteer;

/**
	Options for `Request.respond` method
**/
typedef RespondOptions = {
	/**
		Specifies the response status code.
	**/
	@:optional
	var status : Float;
	/**
		Specifies the response headers.
	**/
	@:optional
	var headers : { };
	/**
		Specifies the Content-Type response header.
	**/
	@:optional
	var contentType : String;
	/**
		Specifies the response body.
	**/
	@:optional
	var body : ts.AnyOf2<String, global.Buffer>;
};