package puppeteer;

typedef DeleteCookie = {
	/**
		The cookie name.
	**/
	var name : String;
	@:optional
	var url : String;
	@:optional
	var domain : String;
	@:optional
	var path : String;
};