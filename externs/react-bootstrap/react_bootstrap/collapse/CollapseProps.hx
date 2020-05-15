package react_bootstrap.collapse;
typedef CollapseProps = {
	@:optional
	var dimension : ts.AnyOf2<String, () -> String>;
	@:optional
	var getDimensionValue : (dimension:Float, element:react_bootstrap.react.ReactElement<Dynamic, ts.AnyOf3<String, (props:Dynamic) -> Null<Dynamic>, { }>>) -> Float;
	@:native("in")
	@:optional
	var in_ : Bool;
	@:optional
	var timeout : Float;
	@:optional
	var transitionAppear : Bool;
	@:optional
	var unmountOnExit : Bool;
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
	@:optional
	var ref : ts.AnyOf3<String, (instance:Null<react_bootstrap.Collapse>) -> Void, react_bootstrap.react.RefObject<react_bootstrap.Collapse>>;
	@:optional
	var key : ts.AnyOf2<String, Float>;
};