package react_use;
typedef QueueMethods<T> = {
	var add : (item:T) -> Void;
	var remove : () -> T;
	var first : T;
	var last : T;
	var size : Float;
};