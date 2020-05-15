package node.crypto;
@:jsRequire("crypto", "Hash") extern class Hash extends node.stream.Transform {
	function new();
	function copy():Hash;
	@:overload(function(data:String, input_encoding:Utf8AsciiLatin1Encoding):Hash { })
	function update(data:ts.AnyOf11<String, ts.lib.Uint8Array, ts.lib.Uint8ClampedArray, ts.lib.Uint16Array, ts.lib.Uint32Array, ts.lib.Int8Array, ts.lib.Int16Array, ts.lib.Int32Array, ts.lib.Float32Array, ts.lib.Float64Array, ts.lib.DataView>):Hash;
	@:overload(function(encoding:HexBase64Latin1Encoding):String { })
	function digest():global.Buffer;
	function setDefaultEncoding(encoding:global.BufferEncoding):Hash;
	function setEncoding(encoding:global.BufferEncoding):Hash;
	function pause():Hash;
	function resume():Hash;
	function unpipe(?destination:global.nodejs.WritableStream):Hash;
	function wrap(oldStream:global.nodejs.ReadableStream):Hash;
	/**
		Event emitter
		The defined events on documents including:
		1. close
		2. data
		3. end
		4. error
		5. pause
		6. readable
		7. resume
	**/
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hash { })
	function addListener(event:String, listener:() -> Void):Hash;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hash { })
	function on(event:String, listener:() -> Void):Hash;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hash { })
	function once(event:String, listener:() -> Void):Hash;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hash { })
	function prependListener(event:String, listener:() -> Void):Hash;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hash { })
	function prependOnceListener(event:String, listener:() -> Void):Hash;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hash { })
	function removeListener(event:String, listener:() -> Void):Hash;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hash;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Hash;
	function setMaxListeners(n:Float):Hash;
}