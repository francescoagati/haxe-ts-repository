package node.crypto;
typedef RsaPrivateKey = {
	var key : KeyLike;
	@:optional
	var passphrase : String;
	@:optional
	var oaepHash : String;
	@:optional
	var oaepLabel : ts.AnyOf9<ts.lib.Uint8Array, ts.lib.Uint8ClampedArray, ts.lib.Uint16Array, ts.lib.Uint32Array, ts.lib.Int8Array, ts.lib.Int16Array, ts.lib.Int32Array, ts.lib.Float32Array, ts.lib.Float64Array>;
	@:optional
	var padding : Float;
};