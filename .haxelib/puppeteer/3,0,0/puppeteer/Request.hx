package puppeteer;

/**
	Represents a page request.
**/
typedef Request = {
	/**
		Aborts request.
		To use this, request interception should be enabled with `page.setRequestInterception`.
	**/
	function abort(?errorCode:ErrorCode):js.lib.Promise<Void>;
	/**
		Continues request with optional request overrides.
		To use this, request interception should be enabled with `page.setRequestInterception`.
	**/
	@:native("continue")
	function continue_(?overrides:Overrides):js.lib.Promise<Void>;
	function failure():Null<{
		var errorText : String;
	}>;
	function frame():Null<Frame>;
	/**
		An object with HTTP headers associated with the request.
		All header names are lower-case.
	**/
	function headers():{ };
	/**
		Whether this request is driving frame's navigation.
	**/
	function isNavigationRequest():Bool;
	/**
		Returns the request's method (GET, POST, etc.)
	**/
	function method():HttpMethod;
	/**
		Contains the request's post body, if any.
	**/
	function postData():Null<String>;
	/**
		A `redirectChain` is a chain of requests initiated to fetch a resource.
		
		- If there are no redirects and the request was successful, the chain will be empty.
		- If a server responds with at least a single redirect, then the chain will contain all the requests that were redirected.
		
		`redirectChain` is shared between all the requests of the same chain.
	**/
	function redirectChain():Array<Request>;
	/**
		Contains the request's resource type as it was perceived by the rendering engine.
	**/
	function resourceType():ResourceType;
	/**
		Fulfills request with given response.
		To use this, request interception should be enabled with `page.setRequestInterception`.
	**/
	function respond(response:RespondOptions):js.lib.Promise<Void>;
	/**
		A matching `Response` object, or `null` if the response has not been received yet.
	**/
	function response():Null<Response>;
	/**
		Contains the URL of the request.
	**/
	function url():String;
};