package puppeteer;

/**
	Response class represents responses which are received by page.
**/
typedef Response = {
	/**
		Promise which resolves to a buffer with response body.
	**/
	function buffer():js.lib.Promise<global.Buffer>;
	/**
		A Frame that initiated this response, or null if navigating to error pages.
	**/
	function frame():Null<Frame>;
	/**
		True if the response was served from either the browser's disk cache or memory cache.
	**/
	function fromCache():Bool;
	/**
		True if the response was served by a service worker.
	**/
	function fromServiceWorker():Bool;
	/**
		An object with HTTP headers associated with the response. All header names are lower-case.
	**/
	function headers():{ };
	/**
		Promise which resolves to a JSON representation of response body.
	**/
	function json():js.lib.Promise<Any>;
	/**
		Contains a boolean stating whether the response was successful (status in the range 200-299) or not.
	**/
	function ok():Bool;
	/**
		Returns remote connection info
	**/
	function remoteAddress():RemoteInfo;
	/**
		Returns an object with security details associated with the response.
	**/
	function securityDetails():Null<SecurityDetails>;
	/**
		A matching Request object.
	**/
	function request():Request;
	/**
		Contains the status code of the response (e.g., 200 for a success).
	**/
	function status():Float;
	/**
		Contains the status text of the response (e.g. usually an "OK" for a success).
	**/
	function statusText():String;
	/**
		Promise which resolves to a text representation of response body.
	**/
	function text():js.lib.Promise<String>;
	/**
		Contains the URL of the response.
	**/
	function url():String;
};