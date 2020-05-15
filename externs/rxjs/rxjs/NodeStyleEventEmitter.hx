package rxjs;
typedef NodeStyleEventEmitter = {
	var addListener : (eventName:ts.AnyOf2<String, js.lib.Symbol>, handler:rxjs.NodeEventHandler) -> rxjs.NodeStyleEventEmitter;
	var removeListener : (eventName:ts.AnyOf2<String, js.lib.Symbol>, handler:rxjs.NodeEventHandler) -> rxjs.NodeStyleEventEmitter;
};