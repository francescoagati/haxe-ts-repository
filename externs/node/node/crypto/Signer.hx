package node.crypto;
@:jsRequire("crypto", "Signer") extern class Signer extends node.stream.Writable {
	function new();
	@:overload(function(data:String, input_encoding:Utf8AsciiLatin1Encoding):Signer { })
	function update(data:ts.AnyOf11<String, ts.lib.Uint8Array, ts.lib.Uint8ClampedArray, ts.lib.Uint16Array, ts.lib.Uint32Array, ts.lib.Int8Array, ts.lib.Int16Array, ts.lib.Int32Array, ts.lib.Float32Array, ts.lib.Float64Array, ts.lib.DataView>):Signer;
	@:overload(function(private_key:ts.AnyOf4<String, global.Buffer, KeyObject, SignPrivateKeyInput>, output_format:HexBase64Latin1Encoding):String { })
	function sign(private_key:ts.AnyOf4<String, global.Buffer, KeyObject, SignPrivateKeyInput>):global.Buffer;
	function setDefaultEncoding(encoding:global.BufferEncoding):Signer;
	/**
		Event emitter
		The defined events on documents including:
		1. close
		2. drain
		3. error
		4. finish
		5. pipe
		6. unpipe
	**/
	@:overload(function(event:String, listener:() -> Void):Signer { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):Signer { })
	@:overload(function(event:String, listener:() -> Void):Signer { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Signer { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Signer { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Signer { })
	function addListener(event:String, listener:() -> Void):Signer;
	@:overload(function(event:String, listener:() -> Void):Signer { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):Signer { })
	@:overload(function(event:String, listener:() -> Void):Signer { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Signer { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Signer { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Signer { })
	function on(event:String, listener:() -> Void):Signer;
	@:overload(function(event:String, listener:() -> Void):Signer { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):Signer { })
	@:overload(function(event:String, listener:() -> Void):Signer { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Signer { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Signer { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Signer { })
	function once(event:String, listener:() -> Void):Signer;
	@:overload(function(event:String, listener:() -> Void):Signer { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):Signer { })
	@:overload(function(event:String, listener:() -> Void):Signer { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Signer { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Signer { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Signer { })
	function prependListener(event:String, listener:() -> Void):Signer;
	@:overload(function(event:String, listener:() -> Void):Signer { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):Signer { })
	@:overload(function(event:String, listener:() -> Void):Signer { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Signer { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Signer { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Signer { })
	function prependOnceListener(event:String, listener:() -> Void):Signer;
	@:overload(function(event:String, listener:() -> Void):Signer { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):Signer { })
	@:overload(function(event:String, listener:() -> Void):Signer { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Signer { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Signer { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Signer { })
	function removeListener(event:String, listener:() -> Void):Signer;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Signer;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Signer;
	function setMaxListeners(n:Float):Signer;
}