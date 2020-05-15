package ts.html;
/**
	This Web Crypto API interface provides a number of low-level cryptographic functions. It is accessed via the Crypto.subtle properties available in a window context (via Window.crypto).
**/
@:native("SubtleCrypto") extern class SubtleCrypto {
	function new();
	function decrypt(algorithm:ts.AnyOf7<String, RsaOaepParams, AesCtrParams, AesCbcParams, AesCmacParams, AesGcmParams, AesCfbParams>, key:CryptoKey, data:ts.AnyOf11<ts.lib.ArrayBuffer, ts.lib.Float32Array, ts.lib.Float64Array, ts.lib.Uint8Array, ts.lib.Int8Array, ts.lib.Int16Array, ts.lib.Int32Array, ts.lib.Uint16Array, ts.lib.Uint32Array, ts.lib.Uint8ClampedArray, ts.lib.DataView>):ts.lib.PromiseLike<ts.lib.ArrayBuffer>;
	function deriveBits(algorithm:ts.AnyOf6<String, EcdhKeyDeriveParams, DhKeyDeriveParams, ConcatParams, HkdfCtrParams, Pbkdf2Params>, baseKey:CryptoKey, length:Float):ts.lib.PromiseLike<ts.lib.ArrayBuffer>;
	function deriveKey(algorithm:ts.AnyOf6<String, EcdhKeyDeriveParams, DhKeyDeriveParams, ConcatParams, HkdfCtrParams, Pbkdf2Params>, baseKey:CryptoKey, derivedKeyType:ts.AnyOf6<String, ConcatParams, HkdfCtrParams, Pbkdf2Params, AesDerivedKeyParams, HmacImportParams>, extractable:Bool, keyUsages:Array<String>):ts.lib.PromiseLike<CryptoKey>;
	function digest(algorithm:AlgorithmIdentifier, data:ts.AnyOf11<ts.lib.ArrayBuffer, ts.lib.Float32Array, ts.lib.Float64Array, ts.lib.Uint8Array, ts.lib.Int8Array, ts.lib.Int16Array, ts.lib.Int32Array, ts.lib.Uint16Array, ts.lib.Uint32Array, ts.lib.Uint8ClampedArray, ts.lib.DataView>):ts.lib.PromiseLike<ts.lib.ArrayBuffer>;
	function encrypt(algorithm:ts.AnyOf7<String, RsaOaepParams, AesCtrParams, AesCbcParams, AesCmacParams, AesGcmParams, AesCfbParams>, key:CryptoKey, data:ts.AnyOf11<ts.lib.ArrayBuffer, ts.lib.Float32Array, ts.lib.Float64Array, ts.lib.Uint8Array, ts.lib.Int8Array, ts.lib.Int16Array, ts.lib.Int32Array, ts.lib.Uint16Array, ts.lib.Uint32Array, ts.lib.Uint8ClampedArray, ts.lib.DataView>):ts.lib.PromiseLike<ts.lib.ArrayBuffer>;
	@:overload(function(format:String, key:CryptoKey):ts.lib.PromiseLike<ts.lib.ArrayBuffer> { })
	@:overload(function(format:String, key:CryptoKey):ts.lib.PromiseLike<ts.AnyOf2<ts.lib.ArrayBuffer, JsonWebKey>> { })
	function exportKey(format:String, key:CryptoKey):ts.lib.PromiseLike<JsonWebKey>;
	@:overload(function(algorithm:ts.AnyOf3<RsaHashedKeyGenParams, EcKeyGenParams, DhKeyGenParams>, extractable:Bool, keyUsages:Array<String>):ts.lib.PromiseLike<CryptoKeyPair> { })
	@:overload(function(algorithm:ts.AnyOf3<Pbkdf2Params, AesKeyGenParams, HmacKeyGenParams>, extractable:Bool, keyUsages:Array<String>):ts.lib.PromiseLike<CryptoKey> { })
	function generateKey(algorithm:String, extractable:Bool, keyUsages:Array<String>):ts.lib.PromiseLike<ts.AnyOf2<CryptoKey, CryptoKeyPair>>;
	@:overload(function(format:String, keyData:ts.AnyOf11<ts.lib.ArrayBuffer, ts.lib.Float32Array, ts.lib.Float64Array, ts.lib.Uint8Array, ts.lib.Int8Array, ts.lib.Int16Array, ts.lib.Int32Array, ts.lib.Uint16Array, ts.lib.Uint32Array, ts.lib.Uint8ClampedArray, ts.lib.DataView>, algorithm:ts.AnyOf6<String, HmacImportParams, RsaHashedImportParams, EcKeyImportParams, DhImportKeyParams, AesKeyAlgorithm>, extractable:Bool, keyUsages:Array<String>):ts.lib.PromiseLike<CryptoKey> { })
	@:overload(function(format:String, keyData:ts.AnyOf12<ts.lib.ArrayBuffer, ts.lib.Float32Array, ts.lib.Float64Array, ts.lib.Uint8Array, ts.lib.Int8Array, ts.lib.Int16Array, ts.lib.Int32Array, ts.lib.Uint16Array, ts.lib.Uint32Array, ts.lib.Uint8ClampedArray, ts.lib.DataView, JsonWebKey>, algorithm:ts.AnyOf6<String, HmacImportParams, RsaHashedImportParams, EcKeyImportParams, DhImportKeyParams, AesKeyAlgorithm>, extractable:Bool, keyUsages:Array<String>):ts.lib.PromiseLike<CryptoKey> { })
	function importKey(format:String, keyData:JsonWebKey, algorithm:ts.AnyOf6<String, HmacImportParams, RsaHashedImportParams, EcKeyImportParams, DhImportKeyParams, AesKeyAlgorithm>, extractable:Bool, keyUsages:Array<String>):ts.lib.PromiseLike<CryptoKey>;
	function sign(algorithm:ts.AnyOf4<String, AesCmacParams, RsaPssParams, EcdsaParams>, key:CryptoKey, data:ts.AnyOf11<ts.lib.ArrayBuffer, ts.lib.Float32Array, ts.lib.Float64Array, ts.lib.Uint8Array, ts.lib.Int8Array, ts.lib.Int16Array, ts.lib.Int32Array, ts.lib.Uint16Array, ts.lib.Uint32Array, ts.lib.Uint8ClampedArray, ts.lib.DataView>):ts.lib.PromiseLike<ts.lib.ArrayBuffer>;
	function unwrapKey(format:String, wrappedKey:ts.AnyOf11<ts.lib.ArrayBuffer, ts.lib.Float32Array, ts.lib.Float64Array, ts.lib.Uint8Array, ts.lib.Int8Array, ts.lib.Int16Array, ts.lib.Int32Array, ts.lib.Uint16Array, ts.lib.Uint32Array, ts.lib.Uint8ClampedArray, ts.lib.DataView>, unwrappingKey:CryptoKey, unwrapAlgorithm:AlgorithmIdentifier, unwrappedKeyAlgorithm:AlgorithmIdentifier, extractable:Bool, keyUsages:Array<String>):ts.lib.PromiseLike<CryptoKey>;
	function verify(algorithm:ts.AnyOf4<String, AesCmacParams, RsaPssParams, EcdsaParams>, key:CryptoKey, signature:ts.AnyOf11<ts.lib.ArrayBuffer, ts.lib.Float32Array, ts.lib.Float64Array, ts.lib.Uint8Array, ts.lib.Int8Array, ts.lib.Int16Array, ts.lib.Int32Array, ts.lib.Uint16Array, ts.lib.Uint32Array, ts.lib.Uint8ClampedArray, ts.lib.DataView>, data:ts.AnyOf11<ts.lib.ArrayBuffer, ts.lib.Float32Array, ts.lib.Float64Array, ts.lib.Uint8Array, ts.lib.Int8Array, ts.lib.Int16Array, ts.lib.Int32Array, ts.lib.Uint16Array, ts.lib.Uint32Array, ts.lib.Uint8ClampedArray, ts.lib.DataView>):ts.lib.PromiseLike<Bool>;
	function wrapKey(format:String, key:CryptoKey, wrappingKey:CryptoKey, wrapAlgorithm:AlgorithmIdentifier):ts.lib.PromiseLike<ts.lib.ArrayBuffer>;
	static var prototype : SubtleCrypto;
}