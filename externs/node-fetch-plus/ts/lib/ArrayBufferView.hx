package ts.lib;
typedef ArrayBufferView = {
	/**
		The ArrayBuffer instance referenced by the array.
	**/
	var buffer : ts.AnyOf2<ArrayBuffer, SharedArrayBuffer>;
	/**
		The length in bytes of the array.
	**/
	var byteLength : Float;
	/**
		The offset in bytes of the array.
	**/
	var byteOffset : Float;
};