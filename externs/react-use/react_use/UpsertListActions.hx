package react_use;
typedef UpsertListActions<T> = {
	var upsert : (newItem:T) -> Void;
	var reset : () -> Void;
	var filter : ts.AnyOf2<(callbackFn:ts.AnyOf3<(value:T) -> Bool, (value:T, index:Float) -> Bool, (value:T, index:Float, array:Array<T>) -> Bool>) -> Void, (callbackFn:ts.AnyOf3<(value:T) -> Bool, (value:T, index:Float) -> Bool, (value:T, index:Float, array:Array<T>) -> Bool>, thisArg:Dynamic) -> Void>;
	var push : (items:haxe.extern.Rest<T>) -> Void;
	var clear : () -> Void;
	var set : (newList:react_use.ResolvableHookState<Array<T>>) -> Void;
	var updateAt : (index:Float, item:T) -> Void;
	var insertAt : (index:Float, item:T) -> Void;
	var update : (predicate:(a:T, b:T) -> Bool, newItem:T) -> Void;
	var updateFirst : (predicate:(a:T, b:T) -> Bool, newItem:T) -> Void;
	var sort : ts.AnyOf2<() -> Void, (compareFn:(a:T, b:T) -> Float) -> Void>;
	var removeAt : (index:Float) -> Void;
	var remove : (index:Float) -> Void;
};