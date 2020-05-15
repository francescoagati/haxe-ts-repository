package react;
typedef WheelEvent<T> = {
	var deltaMode : Float;
	var deltaX : Float;
	var deltaY : Float;
	var deltaZ : Float;
	var altKey : Bool;
	var button : Float;
	var buttons : Float;
	var clientX : Float;
	var clientY : Float;
	var ctrlKey : Bool;
	/**
		See [DOM Level 3 Events spec](https://www.w3.org/TR/uievents-key/#keys-modifier). for a list of valid (case-sensitive) arguments to this method.
	**/
	function getModifierState(key:String):Bool;
	var metaKey : Bool;
	var movementX : Float;
	var movementY : Float;
	var pageX : Float;
	var pageY : Float;
	var relatedTarget : Null<ts.html.EventTarget>;
	var screenX : Float;
	var screenY : Float;
	var shiftKey : Bool;
	var detail : Float;
	var view : AbstractView;
	var nativeEvent : ts.html.WheelEvent;
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