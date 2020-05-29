package global;

/**
	Raw data is stored in instances of the Buffer class.
	A Buffer is similar to an array of integers but corresponds to a raw memory allocation outside the V8 heap.  A Buffer cannot be resized.
	Valid string encodings: 'ascii'|'utf8'|'utf16le'|'ucs2'(alias of 'utf16le')|'base64'|'binary'(deprecated)|'hex'
**/
typedef IBuffer = {
	@:overload(function(string:String, offset:Float, ?encoding:BufferEncoding):Float { })
	@:overload(function(string:String, offset:Float, length:Float, ?encoding:BufferEncoding):Float { })
	function write(string:String, ?encoding:BufferEncoding):Float;
	/**
		Returns a string representation of an array.
	**/
	function toString(?encoding:BufferEncoding, ?start:Float, ?end:Float):String;
	function toJSON():{
		var type : String;
		var data : Array<Float>;
	};
	function equals(otherBuffer:js.lib.Uint8Array):Bool;
	function compare(otherBuffer:js.lib.Uint8Array, ?targetStart:Float, ?targetEnd:Float, ?sourceStart:Float, ?sourceEnd:Float):Float;
	function copy(targetBuffer:js.lib.Uint8Array, ?targetStart:Float, ?sourceStart:Float, ?sourceEnd:Float):Float;
	/**
		Returns a new `Buffer` that references **the same memory as the original**, but offset and cropped by the start and end indices.
		
		This method is incompatible with `Uint8Array#slice()`, which returns a copy of the original memory.
	**/
	function slice(?begin:Float, ?end:Float):Buffer;
	/**
		Returns a new `Buffer` that references **the same memory as the original**, but offset and cropped by the start and end indices.
		
		This method is compatible with `Uint8Array#subarray()`.
	**/
	function subarray(?begin:Float, ?end:Float):Buffer;
	function writeUIntLE(value:Float, offset:Float, byteLength:Float):Float;
	function writeUIntBE(value:Float, offset:Float, byteLength:Float):Float;
	function writeIntLE(value:Float, offset:Float, byteLength:Float):Float;
	function writeIntBE(value:Float, offset:Float, byteLength:Float):Float;
	function readUIntLE(offset:Float, byteLength:Float):Float;
	function readUIntBE(offset:Float, byteLength:Float):Float;
	function readIntLE(offset:Float, byteLength:Float):Float;
	function readIntBE(offset:Float, byteLength:Float):Float;
	function readUInt8(?offset:Float):Float;
	function readUInt16LE(?offset:Float):Float;
	function readUInt16BE(?offset:Float):Float;
	function readUInt32LE(?offset:Float):Float;
	function readUInt32BE(?offset:Float):Float;
	function readInt8(?offset:Float):Float;
	function readInt16LE(?offset:Float):Float;
	function readInt16BE(?offset:Float):Float;
	function readInt32LE(?offset:Float):Float;
	function readInt32BE(?offset:Float):Float;
	function readFloatLE(?offset:Float):Float;
	function readFloatBE(?offset:Float):Float;
	function readDoubleLE(?offset:Float):Float;
	function readDoubleBE(?offset:Float):Float;
	/**
		Reverses the elements in an Array.
	**/
	function reverse():Buffer;
	function swap16():Buffer;
	function swap32():Buffer;
	function swap64():Buffer;
	function writeUInt8(value:Float, ?offset:Float):Float;
	function writeUInt16LE(value:Float, ?offset:Float):Float;
	function writeUInt16BE(value:Float, ?offset:Float):Float;
	function writeUInt32LE(value:Float, ?offset:Float):Float;
	function writeUInt32BE(value:Float, ?offset:Float):Float;
	function writeInt8(value:Float, ?offset:Float):Float;
	function writeInt16LE(value:Float, ?offset:Float):Float;
	function writeInt16BE(value:Float, ?offset:Float):Float;
	function writeInt32LE(value:Float, ?offset:Float):Float;
	function writeInt32BE(value:Float, ?offset:Float):Float;
	function writeFloatLE(value:Float, ?offset:Float):Float;
	function writeFloatBE(value:Float, ?offset:Float):Float;
	function writeDoubleLE(value:Float, ?offset:Float):Float;
	function writeDoubleBE(value:Float, ?offset:Float):Float;
	/**
		Returns the this object after filling the section identified by start and end with value
	**/
	function fill(value:ts.AnyOf3<String, Float, js.lib.Uint8Array>, ?offset:Float, ?end:Float, ?encoding:BufferEncoding):Buffer;
	/**
		Returns the index of the first occurrence of a value in an array.
	**/
	function indexOf(value:ts.AnyOf3<String, Float, js.lib.Uint8Array>, ?byteOffset:Float, ?encoding:BufferEncoding):Float;
	/**
		Returns the index of the last occurrence of a value in an array.
	**/
	function lastIndexOf(value:ts.AnyOf3<String, Float, js.lib.Uint8Array>, ?byteOffset:Float, ?encoding:BufferEncoding):Float;
	/**
		Returns an array of key, value pairs for every entry in the array
	**/
	function entries():js.lib.IterableIterator<ts.Tuple2<Float, Float>>;
	/**
		Determines whether an array includes a certain element, returning true or false as appropriate.
	**/
	function includes(value:ts.AnyOf3<String, Float, Buffer>, ?byteOffset:Float, ?encoding:BufferEncoding):Bool;
	/**
		Returns an list of keys in the array
	**/
	function keys():js.lib.IterableIterator<Float>;
	/**
		Returns an list of values in the array
	**/
	function values():js.lib.IterableIterator<Float>;
	function readBigUInt64BE(?offset:Float):js.lib.BigInt;
	function readBigUInt64LE(?offset:Float):js.lib.BigInt;
	function readBigInt64BE(?offset:Float):js.lib.BigInt;
	function readBigInt64LE(?offset:Float):js.lib.BigInt;
	function writeBigInt64BE(value:js.lib.BigInt, ?offset:Float):Float;
	function writeBigInt64LE(value:js.lib.BigInt, ?offset:Float):Float;
	function writeBigUInt64BE(value:js.lib.BigInt, ?offset:Float):Float;
	function writeBigUInt64LE(value:js.lib.BigInt, ?offset:Float):Float;
	/**
		The size in bytes of each element in the array.
	**/
	final BYTES_PER_ELEMENT : Float;
	/**
		The ArrayBuffer instance referenced by the array.
	**/
	final buffer : ts.AnyOf2<js.lib.ArrayBuffer, js.lib.SharedArrayBuffer>;
	/**
		The length in bytes of the array.
	**/
	final byteLength : Float;
	/**
		The offset in bytes of the array.
	**/
	final byteOffset : Float;
	/**
		Returns the this object after copying a section of the array identified by start and end
		to the same array starting at position target
	**/
	function copyWithin(target:Float, start:Float, ?end:Float):Buffer;
	/**
		Determines whether all the members of an array satisfy the specified test.
	**/
	function every(callbackfn:(value:Float, index:Float, array:js.lib.Uint8Array) -> Any, ?thisArg:Dynamic):Bool;
	/**
		Returns the elements of an array that meet the condition specified in a callback function.
	**/
	function filter(callbackfn:(value:Float, index:Float, array:js.lib.Uint8Array) -> Dynamic, ?thisArg:Dynamic):js.lib.Uint8Array;
	/**
		Returns the value of the first element in the array where predicate is true, and undefined
		otherwise.
	**/
	function find(predicate:(value:Float, index:Float, obj:js.lib.Uint8Array) -> Bool, ?thisArg:Dynamic):Null<Float>;
	/**
		Returns the index of the first element in the array where predicate is true, and -1
		otherwise.
	**/
	function findIndex(predicate:(value:Float, index:Float, obj:js.lib.Uint8Array) -> Bool, ?thisArg:Dynamic):Float;
	/**
		Performs the specified action for each element in an array.
	**/
	function forEach(callbackfn:(value:Float, index:Float, array:js.lib.Uint8Array) -> Void, ?thisArg:Dynamic):Void;
	/**
		Adds all the elements of an array separated by the specified separator string.
	**/
	function join(?separator:String):String;
	/**
		The length of the array.
	**/
	final length : Float;
	/**
		Calls a defined callback function on each element of an array, and returns an array that
		contains the results.
	**/
	function map(callbackfn:(value:Float, index:Float, array:js.lib.Uint8Array) -> Float, ?thisArg:Dynamic):js.lib.Uint8Array;
	/**
		Calls the specified callback function for all the elements in an array. The return value of
		the callback function is the accumulated result, and is provided as an argument in the next
		call to the callback function.
		
		Calls the specified callback function for all the elements in an array. The return value of
		the callback function is the accumulated result, and is provided as an argument in the next
		call to the callback function.
	**/
	@:overload(function(callbackfn:(previousValue:Float, currentValue:Float, currentIndex:Float, array:js.lib.Uint8Array) -> Float, initialValue:Float):Float { })
	@:overload(function<U>(callbackfn:(previousValue:U, currentValue:Float, currentIndex:Float, array:js.lib.Uint8Array) -> U, initialValue:U):U { })
	function reduce(callbackfn:(previousValue:Float, currentValue:Float, currentIndex:Float, array:js.lib.Uint8Array) -> Float):Float;
	/**
		Calls the specified callback function for all the elements in an array, in descending order.
		The return value of the callback function is the accumulated result, and is provided as an
		argument in the next call to the callback function.
		
		Calls the specified callback function for all the elements in an array, in descending order.
		The return value of the callback function is the accumulated result, and is provided as an
		argument in the next call to the callback function.
	**/
	@:overload(function(callbackfn:(previousValue:Float, currentValue:Float, currentIndex:Float, array:js.lib.Uint8Array) -> Float, initialValue:Float):Float { })
	@:overload(function<U>(callbackfn:(previousValue:U, currentValue:Float, currentIndex:Float, array:js.lib.Uint8Array) -> U, initialValue:U):U { })
	function reduceRight(callbackfn:(previousValue:Float, currentValue:Float, currentIndex:Float, array:js.lib.Uint8Array) -> Float):Float;
	/**
		Sets a value or an array of values.
	**/
	function set(array:js.lib.ArrayLike<Float>, ?offset:Float):Void;
	/**
		Determines whether the specified callback function returns true for any element of an array.
	**/
	function some(callbackfn:(value:Float, index:Float, array:js.lib.Uint8Array) -> Any, ?thisArg:Dynamic):Bool;
	/**
		Sorts an array.
	**/
	function sort(?compareFn:(a:Float, b:Float) -> Float):Buffer;
	/**
		Converts a number to a string by using the current locale.
	**/
	function toLocaleString():String;
};