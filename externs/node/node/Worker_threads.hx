package node;
@:jsRequire("worker_threads") @valueModuleOnly extern class Worker_threads {
	/**
		Transfer a `MessagePort` to a different `vm` Context. The original `port`
		object will be rendered unusable, and the returned `MessagePort` instance will
		take its place.
		
		The returned `MessagePort` will be an object in the target context, and will
		inherit from its global `Object` class. Objects passed to the
		`port.onmessage()` listener will also be created in the target context
		and inherit from its global `Object` class.
		
		However, the created `MessagePort` will no longer inherit from
		`EventEmitter`, and only `port.onmessage()` can be used to receive
		events using it.
	**/
	static function moveMessagePortToContext(port:node.worker_threads.MessagePort, context:node.vm.Context):node.worker_threads.MessagePort;
	/**
		Receive a single message from a given `MessagePort`. If no message is available,
		`undefined` is returned, otherwise an object with a single `message` property
		that contains the message payload, corresponding to the oldest message in the
		`MessagePort`’s queue.
	**/
	static function receiveMessageOnPort(port:node.worker_threads.MessagePort):Null<{
		var message : Dynamic;
	}>;
	static var isMainThread : Bool;
	static var parentPort : Null<node.worker_threads.MessagePort>;
	static var SHARE_ENV : js.lib.Symbol;
	static var threadId : Float;
	static var workerData : Dynamic;
}