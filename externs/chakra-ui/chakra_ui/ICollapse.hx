package chakra_ui;
typedef ICollapse = {
	@:optional
	var isOpen : Bool;
	@:optional
	var animateOpacity : Bool;
	@:optional
	function onAnimationEnd(props:{ var newHeight : Float; }):Void;
	@:optional
	function onAnimationStart(props:{ var newHeight : Float; }):Void;
	@:optional
	var duration : Float;
	@:optional
	var collapsedHeight : Float;
};