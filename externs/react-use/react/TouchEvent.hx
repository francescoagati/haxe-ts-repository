package react;
typedef TouchEvent<T> = {
	var altKey : Bool;
	var changedTouches : TouchList;
	var ctrlKey : Bool;
	/**
		See [DOM Level 3 Events spec](https://www.w3.org/TR/uievents-key/#keys-modifier). for a list of valid (case-sensitive) arguments to this method.
	**/
	function getModifierState(key:String):Bool;
	var metaKey : Bool;
	var shiftKey : Bool;
	var targetTouches : TouchList;
	var touches : TouchList;
	var nativeEvent : ts.html.TouchEvent;
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