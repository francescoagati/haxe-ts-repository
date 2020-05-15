package node.crypto;
@:jsRequire("crypto", "Certificate") extern class Certificate {
	function new();
	function exportChallenge(spkac:ts.AnyOf11<String, ts.lib.Uint8Array, ts.lib.Uint8ClampedArray, ts.lib.Uint16Array, ts.lib.Uint32Array, ts.lib.Int8Array, ts.lib.Int16Array, ts.lib.Int32Array, ts.lib.Float32Array, ts.lib.Float64Array, ts.lib.DataView>):global.Buffer;
	function exportPublicKey(spkac:ts.AnyOf11<String, ts.lib.Uint8Array, ts.lib.Uint8ClampedArray, ts.lib.Uint16Array, ts.lib.Uint32Array, ts.lib.Int8Array, ts.lib.Int16Array, ts.lib.Int32Array, ts.lib.Float32Array, ts.lib.Float64Array, ts.lib.DataView>):global.Buffer;
	function verifySpkac(spkac:global.nodejs.ArrayBufferView):Bool;
	@:selfCall
	static function call():Certificate;
}