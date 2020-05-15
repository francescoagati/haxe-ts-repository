package rxjs;
typedef EventTargetLike<T> = ts.AnyOf4<rxjs.HasEventTargetAddRemove<T>, rxjs.NodeStyleEventEmitter, rxjs.NodeCompatibleEventEmitter, rxjs.JQueryStyleEventEmitter>;