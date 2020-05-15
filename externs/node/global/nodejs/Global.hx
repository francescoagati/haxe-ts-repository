package global.nodejs;
typedef Global = {
	var Array : ts.lib.ArrayConstructor;
	var ArrayBuffer : ts.lib.ArrayBufferConstructor;
	var Boolean : ts.lib.BooleanConstructor;
	var Buffer : {
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
		function from(arrayBuffer:ts.AnyOf2<ts.lib.ArrayBuffer, ts.lib.SharedArrayBuffer>, ?byteOffset:Float, ?length:Float):global.Buffer;
		/**
			Creates a new Buffer using the passed {data}
		**/
		function of(items:haxe.extern.Rest<Float>):global.Buffer;
		/**
			Returns true if {obj} is a Buffer
		**/
		function isBuffer(obj:Dynamic):Bool;
		/**
			Returns true if {encoding} is a valid encoding argument.
			Valid string encodings in Node 0.12: 'ascii'|'utf8'|'utf16le'|'ucs2'(alias of 'utf16le')|'base64'|'binary'(deprecated)|'hex'
		**/
		function isEncoding(encoding:String):Bool;
		/**
			Gives the actual byte length of a string. encoding defaults to 'utf8'.
			This is not the same as String.prototype.length since that returns the number of characters in a string.
		**/
		function byteLength(string:ts.AnyOf13<String, ts.lib.Uint8Array, ts.lib.ArrayBuffer, ts.lib.SharedArrayBuffer, ts.lib.Uint8ClampedArray, ts.lib.Uint16Array, ts.lib.Uint32Array, ts.lib.Int8Array, ts.lib.Int16Array, ts.lib.Int32Array, ts.lib.Float32Array, ts.lib.Float64Array, ts.lib.DataView>, ?encoding:String):Float;
		/**
			Returns a buffer which is the result of concatenating all the buffers in the list together.
			
			If the list has no items, or if the totalLength is 0, then it returns a zero-length buffer.
			If the list has exactly one item, then the first item of the list is returned.
			If the list has more than one item, then a new Buffer is created.
		**/
		function concat(list:Array<ts.lib.Uint8Array>, ?totalLength:Float):global.Buffer;
		/**
			The same as buf1.compare(buf2).
		**/
		function compare(buf1:ts.lib.Uint8Array, buf2:ts.lib.Uint8Array):Float;
		/**
			Allocates a new buffer of {size} octets.
		**/
		function alloc(size:Float, ?fill:ts.AnyOf3<String, Float, global.Buffer>, ?encoding:String):global.Buffer;
		/**
			Allocates a new buffer of {size} octets, leaving memory not initialized, so the contents
			of the newly created Buffer are unknown and may contain sensitive data.
		**/
		function allocUnsafe(size:Float):global.Buffer;
		/**
			Allocates a new non-pooled buffer of {size} octets, leaving memory not initialized, so the contents
			of the newly created Buffer are unknown and may contain sensitive data.
		**/
		function allocUnsafeSlow(size:Float):global.Buffer;
		/**
			This is the number of bytes used to determine the size of pre-allocated, internal Buffer instances used for pooling. This value may be modified.
		**/
		var poolSize : Float;
		/**
			The size in bytes of each element in the array.
		**/
		final BYTES_PER_ELEMENT : Float;
	};
	var DataView : ts.lib.DataViewConstructor;
	var Date : ts.lib.DateConstructor;
	var Error : ts.lib.ErrorConstructor;
	var EvalError : ts.lib.EvalErrorConstructor;
	var Float32Array : ts.lib.Float32ArrayConstructor;
	var Float64Array : ts.lib.Float64ArrayConstructor;
	var Function : ts.lib.FunctionConstructor;
	var Infinity : Float;
	var Int16Array : ts.lib.Int16ArrayConstructor;
	var Int32Array : ts.lib.Int32ArrayConstructor;
	var Int8Array : ts.lib.Int8ArrayConstructor;
	var Intl : {
		var Collator : {
			@:selfCall
			function call(?locales:ts.AnyOf2<String, Array<String>>, ?options:ts.lib.intl.CollatorOptions):ts.lib.intl.Collator;
			function supportedLocalesOf(locales:ts.AnyOf2<String, Array<String>>, ?options:ts.lib.intl.CollatorOptions):Array<String>;
		};
		var NumberFormat : {
			@:selfCall
			function call(?locales:ts.AnyOf2<String, Array<String>>, ?options:ts.lib.intl.NumberFormatOptions):ts.lib.intl.NumberFormat;
			function supportedLocalesOf(locales:ts.AnyOf2<String, Array<String>>, ?options:ts.lib.intl.NumberFormatOptions):Array<String>;
		};
		var DateTimeFormat : {
			@:selfCall
			function call(?locales:ts.AnyOf2<String, Array<String>>, ?options:ts.lib.intl.DateTimeFormatOptions):ts.lib.intl.DateTimeFormat;
			function supportedLocalesOf(locales:ts.AnyOf2<String, Array<String>>, ?options:ts.lib.intl.DateTimeFormatOptions):Array<String>;
		};
		var PluralRules : {
			@:selfCall
			function call(?locales:ts.AnyOf2<String, Array<String>>, ?options:ts.lib.intl.PluralRulesOptions):ts.lib.intl.PluralRules;
			function supportedLocalesOf(locales:ts.AnyOf2<String, Array<String>>, ?options:ts.lib.intl.PluralRulesOptions):Array<String>;
		};
	};
	var JSON : ts.lib.JSON;
	var Map : ts.lib.MapConstructor;
	var Math : ts.lib.Math_;
	var NaN : Float;
	var Number : ts.lib.NumberConstructor;
	var Object : ts.lib.ObjectConstructor;
	var Promise : ts.lib.PromiseConstructor;
	var RangeError : ts.lib.RangeErrorConstructor;
	var ReferenceError : ts.lib.ReferenceErrorConstructor;
	var RegExp : ts.lib.RegExpConstructor;
	var Set : ts.lib.SetConstructor;
	var String : ts.lib.StringConstructor;
	var Symbol : ts.lib.Function;
	var SyntaxError : ts.lib.SyntaxErrorConstructor;
	var TypeError : ts.lib.TypeErrorConstructor;
	var URIError : ts.lib.URIErrorConstructor;
	var Uint16Array : ts.lib.Uint16ArrayConstructor;
	var Uint32Array : ts.lib.Uint32ArrayConstructor;
	var Uint8Array : ts.lib.Uint8ArrayConstructor;
	var Uint8ClampedArray : ts.lib.Uint8ClampedArrayConstructor;
	var WeakMap : ts.lib.WeakMapConstructor;
	var WeakSet : ts.lib.WeakSetConstructor;
	var clearImmediate : (immediateId:Immediate) -> Void;
	var clearInterval : (intervalId:Timeout) -> Void;
	var clearTimeout : (timeoutId:Timeout) -> Void;
	var console : ts.html.Console;
	var decodeURI : (encodedURI:String) -> String;
	var decodeURIComponent : (encodedURIComponent:String) -> String;
	var encodeURI : (uri:String) -> String;
	var encodeURIComponent : (uriComponent:ts.AnyOf3<String, Float, Bool>) -> String;
	var escape : (str:String) -> String;
	var eval : (x:String) -> Dynamic;
	var global : Global;
	var isFinite : (number:Float) -> Bool;
	var isNaN : (number:Float) -> Bool;
	var parseFloat : (string:String) -> Float;
	var parseInt : ts.AnyOf2<(s:String) -> Float, (s:String, radix:Float) -> Float>;
	var process : Process;
	var setImmediate : (callback:(args:haxe.extern.Rest<Dynamic>) -> Void, args:haxe.extern.Rest<Dynamic>) -> Immediate;
	var setInterval : (callback:(args:haxe.extern.Rest<Dynamic>) -> Void, ms:Float, args:haxe.extern.Rest<Dynamic>) -> Timeout;
	var setTimeout : (callback:(args:haxe.extern.Rest<Dynamic>) -> Void, ms:Float, args:haxe.extern.Rest<Dynamic>) -> Timeout;
	var queueMicrotask : {
		@:overload(function(callback:() -> Void):Void { })
		@:selfCall
		function call(callback:ts.lib.Function):Void;
	};
	var undefined : Null<Any>;
	var unescape : (str:String) -> String;
	var gc : () -> Void;
	@:optional
	var v8debug : Dynamic;
};