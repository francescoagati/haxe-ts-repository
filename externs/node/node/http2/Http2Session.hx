package node.http2;
typedef Http2Session = {
	@:optional
	final alpnProtocol : String;
	final closed : Bool;
	final connecting : Bool;
	final destroyed : Bool;
	@:optional
	final encrypted : Bool;
	final localSettings : Settings;
	@:optional
	final originSet : Array<String>;
	final pendingSettingsAck : Bool;
	final remoteSettings : Settings;
	final socket : ts.AnyOf2<node.net.Socket, node.tls.TLSSocket>;
	final state : SessionState;
	final type : Float;
	function close(?callback:() -> Void):Void;
	function destroy(?error:ts.lib.Error, ?code:Float):Void;
	function goaway(?code:Float, ?lastStreamID:Float, ?opaqueData:ts.AnyOf10<ts.lib.Uint8Array, ts.lib.Uint8ClampedArray, ts.lib.Uint16Array, ts.lib.Uint32Array, ts.lib.Int8Array, ts.lib.Int16Array, ts.lib.Int32Array, ts.lib.Float32Array, ts.lib.Float64Array, ts.lib.DataView>):Void;
	@:overload(function(payload:global.nodejs.ArrayBufferView, callback:(err:Null<ts.lib.Error>, duration:Float, payload:global.Buffer) -> Void):Bool { })
	function ping(callback:(err:Null<ts.lib.Error>, duration:Float, payload:global.Buffer) -> Void):Bool;
	function ref():Void;
	function setTimeout(msecs:Float, ?callback:() -> Void):Void;
	function settings(settings:Settings):Void;
	function unref():Void;
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(frameType:Float, errorCode:Float, streamID:Float) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(errorCode:Float, lastStreamID:Float, opaqueData:global.Buffer) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(settings:Settings) -> Void):Http2Session { })
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	@:overload(function(event:String, listener:(settings:Settings) -> Void):Http2Session { })
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2Session { })
	function addListener(event:String, listener:() -> Void):Http2Session;
	@:overload(function(event:String, err:ts.lib.Error):Bool { })
	@:overload(function(event:String, frameType:Float, errorCode:Float, streamID:Float):Bool { })
	@:overload(function(event:String, errorCode:Float, lastStreamID:Float, opaqueData:global.Buffer):Bool { })
	@:overload(function(event:String, settings:Settings):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, settings:Settings):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool { })
	function emit(event:String):Bool;
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(frameType:Float, errorCode:Float, streamID:Float) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(errorCode:Float, lastStreamID:Float, opaqueData:global.Buffer) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(settings:Settings) -> Void):Http2Session { })
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	@:overload(function(event:String, listener:(settings:Settings) -> Void):Http2Session { })
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2Session { })
	function on(event:String, listener:() -> Void):Http2Session;
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(frameType:Float, errorCode:Float, streamID:Float) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(errorCode:Float, lastStreamID:Float, opaqueData:global.Buffer) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(settings:Settings) -> Void):Http2Session { })
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	@:overload(function(event:String, listener:(settings:Settings) -> Void):Http2Session { })
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2Session { })
	function once(event:String, listener:() -> Void):Http2Session;
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(frameType:Float, errorCode:Float, streamID:Float) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(errorCode:Float, lastStreamID:Float, opaqueData:global.Buffer) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(settings:Settings) -> Void):Http2Session { })
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	@:overload(function(event:String, listener:(settings:Settings) -> Void):Http2Session { })
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2Session { })
	function prependListener(event:String, listener:() -> Void):Http2Session;
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(frameType:Float, errorCode:Float, streamID:Float) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(errorCode:Float, lastStreamID:Float, opaqueData:global.Buffer) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(settings:Settings) -> Void):Http2Session { })
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	@:overload(function(event:String, listener:(settings:Settings) -> Void):Http2Session { })
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2Session { })
	function prependOnceListener(event:String, listener:() -> Void):Http2Session;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2Session;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2Session;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Http2Session;
	function setMaxListeners(n:Float):Http2Session;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<ts.lib.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<ts.lib.Function>;
	function listenerCount(type:ts.AnyOf2<String, js.lib.Symbol>):Float;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
};