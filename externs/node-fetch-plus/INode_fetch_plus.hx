typedef INode_fetch_plus = {
	@:overload(function(event:String, listener:(value:node_fetch_plus.BaseEvent) -> Void):Node_fetch_plus { })
	@:overload(function(event:String, listener:(value:node_fetch_plus.ResponseEvent) -> Void):Node_fetch_plus { })
	function on(event:String, listener:(value:node_fetch_plus.ErrorEvent) -> Void):Node_fetch_plus;
	@:noCompletion
	var retryOptions : Dynamic;
	function fetch(url:ts.AnyOf2<String, node_fetch_plus.Request>, ?init:node_fetch_plus.RequestInit):ts.lib.Promise<node_fetch_plus.Response>;
	@:noCompletion
	var shouldRetry : Dynamic;
	function addListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Node_fetch_plus;
	function once(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Node_fetch_plus;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Node_fetch_plus;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Node_fetch_plus;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Node_fetch_plus;
	function setMaxListeners(n:Float):Node_fetch_plus;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<ts.lib.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<ts.lib.Function>;
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	function listenerCount(type:ts.AnyOf2<String, js.lib.Symbol>):Float;
	function prependListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Node_fetch_plus;
	function prependOnceListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Node_fetch_plus;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
};