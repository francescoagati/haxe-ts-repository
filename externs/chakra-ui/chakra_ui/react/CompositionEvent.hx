package chakra_ui.react;
typedef CompositionEvent<T> = {
	var data : String;
	var nativeEvent : ts.html.CompositionEvent;
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