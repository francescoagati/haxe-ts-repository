package ts.html;
/**
	This IndexedDB API interface provides a connection to a database; you can use an IDBDatabase object to open a transaction on your database then create, manipulate, and delete objects (data) in that database. The interface provides the only way to get and manage versions of the database.
**/
typedef IIDBDatabase = {
	/**
		Returns the name of the database.
	**/
	final name : String;
	/**
		Returns a list of the names of object stores in the database.
	**/
	final objectStoreNames : DOMStringList;
	var onabort : Null<(ev:Event) -> Dynamic>;
	var onclose : Null<(ev:Event) -> Dynamic>;
	var onerror : Null<(ev:Event) -> Dynamic>;
	var onversionchange : Null<(ev:IDBVersionChangeEvent) -> Dynamic>;
	/**
		Returns the version of the database.
	**/
	final version : Float;
	/**
		Closes the connection once all running transactions have finished.
	**/
	function close():Void;
	/**
		Creates a new object store with the given name and options and returns a new IDBObjectStore.
		
		Throws a "InvalidStateError" DOMException if not called within an upgrade transaction.
	**/
	function createObjectStore(name:String, ?optionalParameters:IDBObjectStoreParameters):IDBObjectStore;
	/**
		Deletes the object store with the given name.
		
		Throws a "InvalidStateError" DOMException if not called within an upgrade transaction.
	**/
	function deleteObjectStore(name:String):Void;
	/**
		Returns a new transaction with the given mode ("readonly" or "readwrite") and scope which can be a single object store name or an array of names.
	**/
	function transaction(storeNames:ts.AnyOf2<String, Array<String>>, ?mode:String):IDBTransaction;
	/**
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
		
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
	**/
	@:overload(function(type:String, listener:EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, AddEventListenerOptions>):Void { })
	function addEventListener<K>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, AddEventListenerOptions>):Void;
	/**
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
	**/
	@:overload(function(type:String, listener:EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, EventListenerOptions>):Void { })
	function removeEventListener<K>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, EventListenerOptions>):Void;
	/**
		Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise.
	**/
	function dispatchEvent(event:Event):Bool;
};