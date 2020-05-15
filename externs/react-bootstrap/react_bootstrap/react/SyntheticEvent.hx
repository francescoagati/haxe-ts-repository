package react_bootstrap.react;
/**
	currentTarget - a reference to the element on which the event listener is registered.
	
	target - a reference to the element from which the event was originally dispatched.
	This might be a child element to the element on which the event listener is registered.
	If you thought this should be `EventTarget & T`, see https://github.com/DefinitelyTyped/DefinitelyTyped/pull/12239
**/
typedef SyntheticEvent<T, E> = {
	var nativeEvent : E;
	var currentTarget : Dynamic;
	var target : ts.html.EventTarget;
	var bubbles : Bool;
	var cancelable : Bool;
	var defaultPrevented : Bool;
	var eventPhase : Float;
	var isTrusted : Bool;
	function preventDefault():Void;
	function isDefaultPrevented():Bool;
	function stopPropagation():Void;
	function isPropagationStopped():Bool;
	function persist():Void;
	var timeStamp : Float;
	var type : String;
};