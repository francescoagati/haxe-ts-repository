package chakra_ui.react;
typedef KeyboardEvent<T> = {
	var altKey : Bool;
	var charCode : Float;
	var ctrlKey : Bool;
	/**
		See [DOM Level 3 Events spec](https://www.w3.org/TR/uievents-key/#keys-modifier). for a list of valid (case-sensitive) arguments to this method.
	**/
	function getModifierState(key:String):Bool;
	/**
		See the [DOM Level 3 Events spec](https://www.w3.org/TR/uievents-key/#named-key-attribute-values). for possible values
	**/
	var key : String;
	var keyCode : Float;
	var locale : String;
	var location : Float;
	var metaKey : Bool;
	var repeat : Bool;
	var shiftKey : Bool;
	var which : Float;
	var nativeEvent : ts.html.KeyboardEvent;
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