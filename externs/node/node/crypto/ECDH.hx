package node.crypto;
@:jsRequire("crypto", "ECDH") extern class ECDH {
	function new();
	@:overload(function(encoding:HexBase64Latin1Encoding, ?format:String):String { })
	function generateKeys():global.Buffer;
	@:overload(function(other_public_key:String, input_encoding:HexBase64Latin1Encoding):global.Buffer { })
	@:overload(function(other_public_key:global.nodejs.ArrayBufferView, output_encoding:HexBase64Latin1Encoding):String { })
	@:overload(function(other_public_key:String, input_encoding:HexBase64Latin1Encoding, output_encoding:HexBase64Latin1Encoding):String { })
	function computeSecret(other_public_key:global.nodejs.ArrayBufferView):global.Buffer;
	@:overload(function(encoding:HexBase64Latin1Encoding):String { })
	function getPrivateKey():global.Buffer;
	@:overload(function(encoding:HexBase64Latin1Encoding, ?format:String):String { })
	function getPublicKey():global.Buffer;
	@:overload(function(private_key:String, encoding:HexBase64Latin1Encoding):Void { })
	function setPrivateKey(private_key:global.nodejs.ArrayBufferView):Void;
	static function convertKey(key:ts.AnyOf11<String, ts.lib.Uint8Array, ts.lib.Uint8ClampedArray, ts.lib.Uint16Array, ts.lib.Uint32Array, ts.lib.Int8Array, ts.lib.Int16Array, ts.lib.Int32Array, ts.lib.Float32Array, ts.lib.Float64Array, ts.lib.DataView>, curve:String, ?inputEncoding:String, ?outputEncoding:String, ?format:String):ts.AnyOf2<String, global.Buffer>;
}