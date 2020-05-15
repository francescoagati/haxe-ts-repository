package react_use;
typedef UseStateListReturn<T> = {
	var state : T;
	var currentIndex : Float;
	var setStateAt : (newIndex:Float) -> Void;
	var setState : (state:T) -> Void;
	var next : () -> Void;
	var prev : () -> Void;
};