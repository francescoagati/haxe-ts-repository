package react;
typedef FocusEvent<T> = {
	var relatedTarget : Null<ts.html.EventTarget>;
	var target : Dynamic;
	var nativeEvent : ts.html.FocusEvent;
	var currentTarget : Dynamic;
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