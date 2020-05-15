package node_fetch_plus;
@jsInaccessible extern class Response extends node_fetch_plus.Body {
	function new(?body:ts.AnyOf5<String, ts.lib.ArrayBuffer, ts.lib.ArrayBufferView, global.nodejs.ReadableStream, node_fetch_plus.url.URLSearchParams>, ?init:node_fetch_plus.ResponseInit);
	function clone():node_fetch_plus.Response;
	var headers : node_fetch_plus.Headers;
	var ok : Bool;
	var size : Float;
	var status : Float;
	var statusText : String;
	var timeout : Float;
	var type : node_fetch_plus.ResponseType;
	var url : String;
	static function error():node_fetch_plus.Response;
	static function redirect(url:String, status:Float):node_fetch_plus.Response;
}