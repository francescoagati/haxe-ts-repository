package ts.html;
typedef CompositionEventInit = {
	@:optional
	var data : String;
	@:optional
	var detail : Float;
	@:optional
	var view : Window;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};