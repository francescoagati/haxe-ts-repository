package node.buffer;
@:jsRequire("buffer", "Buffer") extern class Buffer {
	/**
		Allocates a new buffer containing the given {str}.
	**/
	@:overload(function(size:Float):global.Buffer { })
	@:overload(function(array:ts.lib.Uint8Array):global.Buffer { })
	@:overload(function(arrayBuffer:ts.AnyOf2<ts.lib.ArrayBuffer, ts.lib.SharedArrayBuffer>):global.Buffer { })
	@:overload(function(array:Array<Dynamic>):global.Buffer { })
	@:overload(function(buffer:global.Buffer):global.Buffer { })
	function new(str:String, ?encoding:String);
	/**
		When passed a reference to the .buffer property of a TypedArray instance,
		the newly created Buffer will share the same allocated memory as the TypedArray.
		The optional {byteOffset} and {length} arguments specify a memory range
		within the {arrayBuffer} that will be shared by the Buffer.
		
		Creates a new Buffer using the passed {data}
		
		Creates a new buffer containing the coerced value of an object
		A `TypeError` will be thrown if {obj} has not mentioned methods or is not of other type appropriate for `Buffer.from()` variants.
		
		Creates a new Buffer containing the given JavaScript string {str}.
		If provided, the {encoding} parameter identifies the character encoding.
		If not provided, {encoding} defaults to 'utf8'.
	**/
	@:overload(function(data:Array<Float>):global.Buffer { })
	@:overload(function(data:ts.lib.Uint8Array):global.Buffer { })
	@:overload(function(obj:ts.AnyOf2<{ function valueOf():Dynamic; }, { }>, ?byteOffset:Float, ?length:Float):global.Buffer { })
	@:overload(function(str:String, ?encoding:String):global.Buffer { })
	static function from(arrayBuffer:ts.AnyOf2<ts.lib.ArrayBuffer, ts.lib.SharedArrayBuffer>, ?byteOffset:Float, ?length:Float):global.Buffer;
	/**
		Creates a new Buffer using the passed {data}
	**/
	static function of(items:haxe.extern.Rest<Float>):global.Buffer;
	/**
		Returns true if {obj} is a Buffer
	**/
	static function isBuffer(obj:Dynamic):Bool;
	/**
		Returns true if {encoding} is a valid encoding argument.
		Valid string encodings in Node 0.12: 'ascii'|'utf8'|'utf16le'|'ucs2'(alias of 'utf16le')|'base64'|'binary'(deprecated)|'hex'
	**/
	static function isEncoding(encoding:String):Bool;
	/**
		Gives the actual byte length of a string. encoding defaults to 'utf8'.
		This is not the same as String.prototype.length since that returns the number of characters in a string.
	**/
	static function byteLength(string:ts.AnyOf13<String, ts.lib.Uint8Array, ts.lib.ArrayBuffer, ts.lib.SharedArrayBuffer, ts.lib.Uint8ClampedArray, ts.lib.Uint16Array, ts.lib.Uint32Array, ts.lib.Int8Array, ts.lib.Int16Array, ts.lib.Int32Array, ts.lib.Float32Array, ts.lib.Float64Array, ts.lib.DataView>, ?encoding:String):Float;
	/**
		Returns a buffer which is the result of concatenating all the buffers in the list together.
		
		If the list has no items, or if the totalLength is 0, then it returns a zero-length buffer.
		If the list has exactly one item, then the first item of the list is returned.
		If the list has more than one item, then a new Buffer is created.
	**/
	static function concat(list:Array<ts.lib.Uint8Array>, ?totalLength:Float):global.Buffer;
	/**
		The same as buf1.compare(buf2).
	**/
	static function compare(buf1:ts.lib.Uint8Array, buf2:ts.lib.Uint8Array):Float;
	/**
		Allocates a new buffer of {size} octets.
	**/
	static function alloc(size:Float, ?fill:ts.AnyOf3<String, Float, global.Buffer>, ?encoding:String):global.Buffer;
	/**
		Allocates a new buffer of {size} octets, leaving memory not initialized, so the contents
		of the newly created Buffer are unknown and may contain sensitive data.
	**/
	static function allocUnsafe(size:Float):global.Buffer;
	/**
		Allocates a new non-pooled buffer of {size} octets, leaving memory not initialized, so the contents
		of the newly created Buffer are unknown and may contain sensitive data.
	**/
	static function allocUnsafeSlow(size:Float):global.Buffer;
	/**
		This is the number of bytes used to determine the size of pre-allocated, internal Buffer instances used for pooling. This value may be modified.
	**/
	static var poolSize : Float;
	/**
		The size in bytes of each element in the array.
	**/
	static final BYTES_PER_ELEMENT : Float;
}