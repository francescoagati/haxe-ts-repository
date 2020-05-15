package rxjs;
typedef FromEventTarget<T> = ts.AnyOf5<rxjs.NodeStyleEventEmitter, rxjs.NodeCompatibleEventEmitter, rxjs.JQueryStyleEventEmitter, rxjs.HasEventTargetAddRemove<T>, ts.lib.ArrayLike<rxjs.EventTargetLike<T>>>;