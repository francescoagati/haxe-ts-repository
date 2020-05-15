package chakra_ui.react;
typedef MouseEvent<T, E> = {
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
	var view : chakra_ui.react.AbstractView;
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