package node_fetch_plus;
typedef RequestInit = {
	@:optional
	var body : ts.AnyOf5<String, ts.lib.ArrayBuffer, ts.lib.ArrayBufferView, global.nodejs.ReadableStream, node_fetch_plus.url.URLSearchParams>;
	@:optional
	var headers : ts.AnyOf3<node_fetch_plus.Headers, Array<String>, { }>;
	@:optional
	var method : String;
	@:optional
	var redirect : String;
	@:optional
	var agent : node_fetch_plus.http.Agent;
	@:optional
	var compress : Bool;
	@:optional
	var follow : Float;
	@:optional
	var size : Float;
	@:optional
	var timeout : Float;
};