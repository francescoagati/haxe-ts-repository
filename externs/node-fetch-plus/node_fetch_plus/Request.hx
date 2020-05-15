package node_fetch_plus;
@jsInaccessible extern class Request extends node_fetch_plus.Body {
	function new(input:ts.AnyOf3<String, node_fetch_plus.Request, { var href : String; }>, ?init:node_fetch_plus.RequestInit);
	function clone():node_fetch_plus.Request;
	var context : node_fetch_plus.RequestContext;
	var headers : node_fetch_plus.Headers;
	var method : String;
	var redirect : node_fetch_plus.RequestRedirect;
	var referrer : String;
	var url : String;
	@:optional
	var agent : node_fetch_plus.http.Agent;
	var compress : Bool;
	var counter : Float;
	var follow : Float;
	var hostname : String;
	@:optional
	var port : Float;
	var protocol : String;
	var size : Float;
	var timeout : Float;
}