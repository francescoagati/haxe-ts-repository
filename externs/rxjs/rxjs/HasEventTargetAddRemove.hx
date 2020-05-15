package rxjs;
typedef HasEventTargetAddRemove<E> = {
	function addEventListener(type:String, listener:Null<(evt:E) -> Void>, ?options:ts.AnyOf2<Bool, rxjs.AddEventListenerOptions>):Void;
	function removeEventListener(type:String, ?listener:(evt:E) -> Void, ?options:ts.AnyOf2<Bool, rxjs.EventListenerOptions>):Void;
};