package node.crypto;
typedef DecipherCCM = {
	function setAuthTag(buffer:global.nodejs.ArrayBufferView):DecipherCCM;
	function setAAD(buffer:global.nodejs.ArrayBufferView, options:{ var plaintextLength : Float; }):DecipherCCM;
	@:overload(function(data:String, input_encoding:HexBase64BinaryEncoding):global.Buffer { })
	@:overload(function(data:global.nodejs.ArrayBufferView, input_encoding:Null<String>, output_encoding:Utf8AsciiBinaryEncoding):String { })
	@:overload(function(data:String, input_encoding:Null<String>, output_encoding:Utf8AsciiBinaryEncoding):String { })
	function update(data:global.nodejs.ArrayBufferView):global.Buffer;
	@:native("final")
	@:overload(function(output_encoding:global.BufferEncoding):String { })
	function final_():global.Buffer;
	function setAutoPadding(?auto_padding:Bool):DecipherCCM;
	function _transform(chunk:Dynamic, encoding:global.BufferEncoding, callback:node.stream.TransformCallback):Void;
	function _flush(callback:node.stream.TransformCallback):Void;
	final writable : Bool;
	final writableEnded : Bool;
	final writableFinished : Bool;
	final writableHighWaterMark : Float;
	final writableLength : Float;
	final writableObjectMode : Bool;
	final writableCorked : Float;
	function _write(chunk:Dynamic, encoding:global.BufferEncoding, callback:ts.AnyOf2<() -> Void, (error:ts.lib.Error) -> Void>):Void;
	@:optional
	function _writev(chunks:Array<{ var chunk : Dynamic; var encoding : global.BufferEncoding; }>, callback:ts.AnyOf2<() -> Void, (error:ts.lib.Error) -> Void>):Void;
	function _destroy(error:Null<ts.lib.Error>, callback:(error:Null<ts.lib.Error>) -> Void):Void;
	function _final(callback:ts.AnyOf2<() -> Void, (error:ts.lib.Error) -> Void>):Void;
	@:overload(function(chunk:Dynamic, ?cb:(error:Null<ts.lib.Error>) -> Void):Bool { })
	function write(chunk:Dynamic, ?encoding:String, ?cb:(error:Null<ts.lib.Error>) -> Void):Bool;
	function setDefaultEncoding(encoding:global.BufferEncoding):DecipherCCM;
	@:overload(function(chunk:Dynamic, ?cb:() -> Void):Void { })
	@:overload(function(chunk:Dynamic, ?encoding:String, ?cb:() -> Void):Void { })
	function end(?cb:() -> Void):Void;
	function cork():Void;
	function uncork():Void;
	var readable : Bool;
	final readableHighWaterMark : Float;
	final readableLength : Float;
	final readableObjectMode : Bool;
	var destroyed : Bool;
	function _read(size:Float):Void;
	function read(?size:Float):Dynamic;
	function setEncoding(encoding:global.BufferEncoding):DecipherCCM;
	function pause():DecipherCCM;
	function resume():DecipherCCM;
	function isPaused():Bool;
	function unpipe(?destination:global.nodejs.WritableStream):DecipherCCM;
	function unshift(chunk:Dynamic, ?encoding:String):Void;
	function wrap(oldStream:global.nodejs.ReadableStream):DecipherCCM;
	function push(chunk:Dynamic, ?encoding:String):Bool;
	function destroy(?error:ts.lib.Error):Void;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):DecipherCCM { })
	@:overload(function(event:String, listener:() -> Void):DecipherCCM { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):DecipherCCM { })
	@:overload(function(event:String, listener:() -> Void):DecipherCCM { })
	@:overload(function(event:String, listener:() -> Void):DecipherCCM { })
	@:overload(function(event:String, listener:() -> Void):DecipherCCM { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):DecipherCCM { })
	function addListener(event:String, listener:() -> Void):DecipherCCM;
	@:overload(function(event:String, chunk:Dynamic):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:ts.lib.Error):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool { })
	function emit(event:String):Bool;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):DecipherCCM { })
	@:overload(function(event:String, listener:() -> Void):DecipherCCM { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):DecipherCCM { })
	@:overload(function(event:String, listener:() -> Void):DecipherCCM { })
	@:overload(function(event:String, listener:() -> Void):DecipherCCM { })
	@:overload(function(event:String, listener:() -> Void):DecipherCCM { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):DecipherCCM { })
	function on(event:String, listener:() -> Void):DecipherCCM;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):DecipherCCM { })
	@:overload(function(event:String, listener:() -> Void):DecipherCCM { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):DecipherCCM { })
	@:overload(function(event:String, listener:() -> Void):DecipherCCM { })
	@:overload(function(event:String, listener:() -> Void):DecipherCCM { })
	@:overload(function(event:String, listener:() -> Void):DecipherCCM { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):DecipherCCM { })
	function once(event:String, listener:() -> Void):DecipherCCM;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):DecipherCCM { })
	@:overload(function(event:String, listener:() -> Void):DecipherCCM { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):DecipherCCM { })
	@:overload(function(event:String, listener:() -> Void):DecipherCCM { })
	@:overload(function(event:String, listener:() -> Void):DecipherCCM { })
	@:overload(function(event:String, listener:() -> Void):DecipherCCM { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):DecipherCCM { })
	function prependListener(event:String, listener:() -> Void):DecipherCCM;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):DecipherCCM { })
	@:overload(function(event:String, listener:() -> Void):DecipherCCM { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):DecipherCCM { })
	@:overload(function(event:String, listener:() -> Void):DecipherCCM { })
	@:overload(function(event:String, listener:() -> Void):DecipherCCM { })
	@:overload(function(event:String, listener:() -> Void):DecipherCCM { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):DecipherCCM { })
	function prependOnceListener(event:String, listener:() -> Void):DecipherCCM;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):DecipherCCM { })
	@:overload(function(event:String, listener:() -> Void):DecipherCCM { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):DecipherCCM { })
	@:overload(function(event:String, listener:() -> Void):DecipherCCM { })
	@:overload(function(event:String, listener:() -> Void):DecipherCCM { })
	@:overload(function(event:String, listener:() -> Void):DecipherCCM { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):DecipherCCM { })
	function removeListener(event:String, listener:() -> Void):DecipherCCM;
	function pipe<T>(destination:T, ?options:{ @:optional var end : Bool; }):T;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):DecipherCCM;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):DecipherCCM;
	function setMaxListeners(n:Float):DecipherCCM;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<ts.lib.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<ts.lib.Function>;
	function listenerCount(type:ts.AnyOf2<String, js.lib.Symbol>):Float;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
};