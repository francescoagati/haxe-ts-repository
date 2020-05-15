package node_fetch_plus;
@jsInaccessible extern class Body {
	function new(?body:Dynamic, ?opts:{ @:optional var size : Float; @:optional var timeout : Float; });
	function arrayBuffer():ts.lib.Promise<ts.lib.ArrayBuffer>;
	function blob():ts.lib.Promise<global.Buffer>;
	var body : global.nodejs.ReadableStream;
	var bodyUsed : Bool;
	function buffer():ts.lib.Promise<global.Buffer>;
	function json():ts.lib.Promise<Dynamic>;
	function text():ts.lib.Promise<String>;
	function textConverted():ts.lib.Promise<String>;
}