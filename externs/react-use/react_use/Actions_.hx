package react_use;
typedef Actions_<T> = {
	var get : (key:Any) -> Dynamic;
	var set : (key:Any, value:Dynamic) -> Void;
	var setAll : (newMap:T) -> Void;
	var remove : (key:Any) -> Void;
	var reset : () -> Void;
};