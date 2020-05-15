package node.string_decoder;
@:jsRequire("string_decoder", "StringDecoder") extern class StringDecoder {
	function new(?encoding:String);
	function write(buffer:global.Buffer):String;
	function end(?buffer:global.Buffer):String;
}