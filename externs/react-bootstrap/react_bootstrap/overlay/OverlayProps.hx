package react_bootstrap.overlay;
typedef OverlayProps = {
	@:optional
	var animation : Dynamic;
	@:optional
	var container : Dynamic;
	@:optional
	var containerPadding : Float;
	@:optional
	var onHide : ts.lib.Function;
	@:optional
	var placement : String;
	@:optional
	var rootClose : Bool;
	@:optional
	var show : Bool;
	@:optional
	var target : ts.AnyOf3<ts.lib.Function, ts.html.Element, react_bootstrap.react.Component<Dynamic, { }, Dynamic>>;
	@:optional
	var shouldUpdatePosition : Bool;
	@:optional
	function onEnter(node:ts.html.HTMLElement):Dynamic;
	@:optional
	function onEntered(node:ts.html.HTMLElement):Dynamic;
	@:optional
	function onEntering(node:ts.html.HTMLElement):Dynamic;
	@:optional
	function onExit(node:ts.html.HTMLElement):Dynamic;
	@:optional
	function onExited(node:ts.html.HTMLElement):Dynamic;
	@:optional
	function onExiting(node:ts.html.HTMLElement):Dynamic;
};