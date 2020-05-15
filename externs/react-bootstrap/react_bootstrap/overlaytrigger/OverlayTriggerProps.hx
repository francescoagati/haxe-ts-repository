package react_bootstrap.overlaytrigger;
typedef OverlayTriggerProps = {
	var overlay : Dynamic;
	@:optional
	var animation : Dynamic;
	@:optional
	var container : Dynamic;
	@:optional
	var containerPadding : Float;
	@:optional
	var defaultOverlayShown : Bool;
	@:optional
	var delay : Float;
	@:optional
	var delayHide : Float;
	@:optional
	var delayShow : Float;
	@:optional
	var onEnter : ts.lib.Function;
	@:optional
	var onEntered : ts.lib.Function;
	@:optional
	var onEntering : ts.lib.Function;
	@:optional
	var onExit : ts.lib.Function;
	@:optional
	var onExited : ts.lib.Function;
	@:optional
	var onExiting : ts.lib.Function;
	@:optional
	var placement : String;
	@:optional
	var rootClose : Bool;
	@:optional
	var trigger : ts.AnyOf2<String, Array<String>>;
	@:optional
	var children : react_bootstrap.react.ReactNode;
	@:optional
	var key : ts.AnyOf2<String, Float>;
	@:optional
	var ref : ts.AnyOf3<String, (instance:Null<react_bootstrap.OverlayTrigger>) -> Void, react_bootstrap.react.RefObject<react_bootstrap.OverlayTrigger>>;
};