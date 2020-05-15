package node.crypto;
@:jsRequire("crypto", "Hmac") extern class Hmac extends node.stream.Transform {
	function new();
	@:overload(function(data:String, input_encoding:Utf8AsciiLatin1Encoding):Hmac { })
	function update(data:ts.AnyOf11<String, ts.lib.Uint8Array, ts.lib.Uint8ClampedArray, ts.lib.Uint16Array, ts.lib.Uint32Array, ts.lib.Int8Array, ts.lib.Int16Array, ts.lib.Int32Array, ts.lib.Float32Array, ts.lib.Float64Array, ts.lib.DataView>):Hmac;
	@:overload(function(encoding:HexBase64Latin1Encoding):String { })
	function digest():global.Buffer;
	function setDefaultEncoding(encoding:global.BufferEncoding):Hmac;
	function setEncoding(encoding:global.BufferEncoding):Hmac;
	function pause():Hmac;
	function resume():Hmac;
	function unpipe(?destination:global.nodejs.WritableStream):Hmac;
	function wrap(oldStream:global.nodejs.ReadableStream):Hmac;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hmac { })
	function addListener(event:String, listener:() -> Void):Hmac;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hmac { })
	function on(event:String, listener:() -> Void):Hmac;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hmac { })
	function once(event:String, listener:() -> Void):Hmac;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hmac { })
	function prependListener(event:String, listener:() -> Void):Hmac;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hmac { })
	function prependOnceListener(event:String, listener:() -> Void):Hmac;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hmac { })
	function removeListener(event:String, listener:() -> Void):Hmac;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hmac;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Hmac;
	function setMaxListeners(n:Float):Hmac;
}