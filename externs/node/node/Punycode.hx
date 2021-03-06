package node;
@:jsRequire("punycode") @valueModuleOnly extern class Punycode {
	static function decode(string:String):String;
	static function encode(string:String):String;
	static function toUnicode(domain:String):String;
	static function toASCII(domain:String):String;
	static var ucs2 : node.punycode.Ucs2;
	static var version : String;
}