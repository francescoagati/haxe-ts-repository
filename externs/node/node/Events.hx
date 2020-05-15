package node;
@:jsRequire("events") @valueModuleOnly extern class Events {
	@:overload(function(emitter:node.Events, event:String):ts.lib.Promise<Array<Dynamic>> { })
	static function once(emitter:node.Events, event:ts.AnyOf2<String, js.lib.Symbol>):ts.lib.Promise<Array<Dynamic>>;
	static function on(emitter:node.events.EventEmitter, event:String):ts.lib.AsyncIterableIterator<Dynamic>;
	static var captureRejectionSymbol : js.lib.Symbol;
	/**
		This symbol shall be used to install a listener for only monitoring `'error'`
		events. Listeners installed using this symbol are called before the regular
		`'error'` listeners are called.
		
		Installing a listener using this symbol does not change the behavior once an
		`'error'` event is emitted, therefore the process will still crash if no
		regular `'error'` listener is installed.
	**/
	static var errorMonitor : js.lib.Symbol;
	/**
		Sets or gets the default captureRejection value for all emitters.
	**/
	static var captureRejections : Bool;
}