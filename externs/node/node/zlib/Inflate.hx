package node.zlib;
typedef Inflate = {
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
	function setDefaultEncoding(encoding:global.BufferEncoding):Inflate;
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
	function setEncoding(encoding:global.BufferEncoding):Inflate;
	function pause():Inflate;
	function resume():Inflate;
	function isPaused():Bool;
	function unpipe(?destination:global.nodejs.WritableStream):Inflate;
	function unshift(chunk:Dynamic, ?encoding:String):Void;
	function wrap(oldStream:global.nodejs.ReadableStream):Inflate;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Inflate { })
	@:overload(function(event:String, listener:() -> Void):Inflate { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):Inflate { })
	@:overload(function(event:String, listener:() -> Void):Inflate { })
	@:overload(function(event:String, listener:() -> Void):Inflate { })
	@:overload(function(event:String, listener:() -> Void):Inflate { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Inflate { })
	function addListener(event:String, listener:() -> Void):Inflate;
	@:overload(function(event:String, chunk:Dynamic):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:ts.lib.Error):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool { })
	function emit(event:String):Bool;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Inflate { })
	@:overload(function(event:String, listener:() -> Void):Inflate { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):Inflate { })
	@:overload(function(event:String, listener:() -> Void):Inflate { })
	@:overload(function(event:String, listener:() -> Void):Inflate { })
	@:overload(function(event:String, listener:() -> Void):Inflate { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Inflate { })
	function on(event:String, listener:() -> Void):Inflate;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Inflate { })
	@:overload(function(event:String, listener:() -> Void):Inflate { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):Inflate { })
	@:overload(function(event:String, listener:() -> Void):Inflate { })
	@:overload(function(event:String, listener:() -> Void):Inflate { })
	@:overload(function(event:String, listener:() -> Void):Inflate { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Inflate { })
	function once(event:String, listener:() -> Void):Inflate;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Inflate { })
	@:overload(function(event:String, listener:() -> Void):Inflate { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):Inflate { })
	@:overload(function(event:String, listener:() -> Void):Inflate { })
	@:overload(function(event:String, listener:() -> Void):Inflate { })
	@:overload(function(event:String, listener:() -> Void):Inflate { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Inflate { })
	function prependListener(event:String, listener:() -> Void):Inflate;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Inflate { })
	@:overload(function(event:String, listener:() -> Void):Inflate { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):Inflate { })
	@:overload(function(event:String, listener:() -> Void):Inflate { })
	@:overload(function(event:String, listener:() -> Void):Inflate { })
	@:overload(function(event:String, listener:() -> Void):Inflate { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Inflate { })
	function prependOnceListener(event:String, listener:() -> Void):Inflate;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Inflate { })
	@:overload(function(event:String, listener:() -> Void):Inflate { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):Inflate { })
	@:overload(function(event:String, listener:() -> Void):Inflate { })
	@:overload(function(event:String, listener:() -> Void):Inflate { })
	@:overload(function(event:String, listener:() -> Void):Inflate { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Inflate { })
	function removeListener(event:String, listener:() -> Void):Inflate;
	function pipe<T>(destination:T, ?options:{ @:optional var end : Bool; }):T;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Inflate;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Inflate;
	function setMaxListeners(n:Float):Inflate;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<ts.lib.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<ts.lib.Function>;
	function listenerCount(type:ts.AnyOf2<String, js.lib.Symbol>):Float;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
	final bytesRead : Float;
	final bytesWritten : Float;
	@:optional
	var shell : ts.AnyOf2<String, Bool>;
	function close(?callback:() -> Void):Void;
	function flush(?kind:ts.AnyOf2<Float, () -> Void>, ?callback:() -> Void):Void;
	function reset():Void;
};