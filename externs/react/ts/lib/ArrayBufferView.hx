package ts.lib;
typedef ArrayBufferView = {
	/**
		The ArrayBuffer instance referenced by the array.
	**/
	var buffer : ArrayBuffer;
	/**
		The length in bytes of the array.
	**/
	var byteLength : Float;
	/**
		The offset in bytes of the array.
	**/
	var byteOffset : Float;
};