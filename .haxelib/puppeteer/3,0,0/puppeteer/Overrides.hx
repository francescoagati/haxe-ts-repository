package puppeteer;

typedef Overrides = {
	@:optional
	var url : String;
	@:optional
	var method : HttpMethod;
	@:optional
	var postData : String;
	@:optional
	var headers : { };
};