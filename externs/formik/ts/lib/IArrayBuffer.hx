package ts.lib;
/**
	Represents a raw buffer of binary data, which is used to store data for the
	different typed arrays. ArrayBuffers cannot be read from or written to directly,
	but can be passed to a typed array or DataView Object to interpret the raw
	buffer as needed.
**/
typedef IArrayBuffer = {
	/**
		Read-only. The length of the ArrayBuffer (in bytes).
	**/
	final byteLength : Float;
	/**
		Returns a section of an ArrayBuffer.
	**/
	function slice(begin:Float, ?end:Float):ArrayBuffer;
};