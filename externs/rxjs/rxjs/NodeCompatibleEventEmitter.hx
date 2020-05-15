package rxjs;
typedef NodeCompatibleEventEmitter = {
	var addListener : (eventName:String, handler:rxjs.NodeEventHandler) -> ts.AnyOf2<Void, { }>;
	var removeListener : (eventName:String, handler:rxjs.NodeEventHandler) -> ts.AnyOf2<Void, { }>;
};