package ts.html;
typedef RequestInit = {
	/**
		A BodyInit object or null to set request's body.
	**/
	@:optional
	var body : ts.AnyOf7<String, ts.lib.ArrayBuffer, Blob, FormData, URLSearchParams, ts.lib.ArrayBufferView, ReadableStream<ts.lib.Uint8Array>>;
	/**
		A string indicating how the request will interact with the browser's cache to set request's cache.
	**/
	@:optional
	var cache : String;
	/**
		A string indicating whether credentials will be sent with the request always, never, or only when sent to a same-origin URL. Sets request's credentials.
	**/
	@:optional
	var credentials : String;
	/**
		A Headers object, an object literal, or an array of two-item arrays to set request's headers.
	**/
	@:optional
	var headers : ts.AnyOf3<Headers, Array<Array<String>>, { }>;
	/**
		A cryptographic hash of the resource to be fetched by request. Sets request's integrity.
	**/
	@:optional
	var integrity : String;
	/**
		A boolean to set request's keepalive.
	**/
	@:optional
	var keepalive : Bool;
	/**
		A string to set request's method.
	**/
	@:optional
	var method : String;
	/**
		A string to indicate whether the request will use CORS, or will be restricted to same-origin URLs. Sets request's mode.
	**/
	@:optional
	var mode : String;
	/**
		A string indicating whether request follows redirects, results in an error upon encountering a redirect, or returns the redirect (in an opaque fashion). Sets request's redirect.
	**/
	@:optional
	var redirect : String;
	/**
		A string whose value is a same-origin URL, "about:client", or the empty string, to set request's referrer.
	**/
	@:optional
	var referrer : String;
	/**
		A referrer policy to set request's referrerPolicy.
	**/
	@:optional
	var referrerPolicy : String;
	/**
		An AbortSignal to set request's signal.
	**/
	@:optional
	var signal : AbortSignal;
	/**
		Can only be null. Used to disassociate request from any Window.
	**/
	@:optional
	var window : Dynamic;
};