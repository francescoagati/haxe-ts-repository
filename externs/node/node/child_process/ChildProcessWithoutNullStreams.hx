package node.child_process;
typedef ChildProcessWithoutNullStreams = {
	var stdin : node.stream.Writable;
	var stdout : node.stream.Readable;
	var stderr : node.stream.Readable;
	final stdio : ts.Tuple5<node.stream.Writable, node.stream.Readable, node.stream.Readable, Null<ts.AnyOf2<node.stream.Readable, node.stream.Writable>>, Null<ts.AnyOf2<node.stream.Readable, node.stream.Writable>>>;
	@:optional
	final channel : node.stream.Pipe;
	final killed : Bool;
	final pid : Float;
	final connected : Bool;
	final exitCode : Null<Float>;
	final signalCode : Null<Float>;
	final spawnargs : Array<String>;
	final spawnfile : String;
	function kill(?signal:ts.AnyOf2<Float, String>):Bool;
	@:overload(function(message:Serializable, ?sendHandle:ts.AnyOf2<node.net.Socket, node.net.Server>, ?callback:(error:Null<ts.lib.Error>) -> Void):Bool { })
	@:overload(function(message:Serializable, ?sendHandle:ts.AnyOf2<node.net.Socket, node.net.Server>, ?options:MessageOptions, ?callback:(error:Null<ts.lib.Error>) -> Void):Bool { })
	function send(message:Serializable, ?callback:(error:Null<ts.lib.Error>) -> Void):Bool;
	function disconnect():Void;
	function unref():Void;
	function ref():Void;
	/**
		events.EventEmitter
		1. close
		2. disconnect
		3. error
		4. exit
		5. message
	**/
	@:overload(function(event:String, listener:(code:Float, signal:global.nodejs.Signals) -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:() -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<String>) -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:(message:Serializable, sendHandle:SendHandle) -> Void):ChildProcessWithoutNullStreams { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcessWithoutNullStreams;
	@:overload(function(event:String, code:Float, signal:global.nodejs.Signals):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:ts.lib.Error):Bool { })
	@:overload(function(event:String, code:Null<Float>, signal:Null<String>):Bool { })
	@:overload(function(event:String, message:Serializable, sendHandle:SendHandle):Bool { })
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(event:String, listener:(code:Float, signal:global.nodejs.Signals) -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:() -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<String>) -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:(message:Serializable, sendHandle:SendHandle) -> Void):ChildProcessWithoutNullStreams { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcessWithoutNullStreams;
	@:overload(function(event:String, listener:(code:Float, signal:global.nodejs.Signals) -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:() -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<String>) -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:(message:Serializable, sendHandle:SendHandle) -> Void):ChildProcessWithoutNullStreams { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcessWithoutNullStreams;
	@:overload(function(event:String, listener:(code:Float, signal:global.nodejs.Signals) -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:() -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<String>) -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:(message:Serializable, sendHandle:SendHandle) -> Void):ChildProcessWithoutNullStreams { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcessWithoutNullStreams;
	@:overload(function(event:String, listener:(code:Float, signal:global.nodejs.Signals) -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:() -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<String>) -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:(message:Serializable, sendHandle:SendHandle) -> Void):ChildProcessWithoutNullStreams { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcessWithoutNullStreams;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcessWithoutNullStreams;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcessWithoutNullStreams;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):ChildProcessWithoutNullStreams;
	function setMaxListeners(n:Float):ChildProcessWithoutNullStreams;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<ts.lib.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<ts.lib.Function>;
	function listenerCount(type:ts.AnyOf2<String, js.lib.Symbol>):Float;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
};