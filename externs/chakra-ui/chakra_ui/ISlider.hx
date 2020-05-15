package chakra_ui;
typedef ISlider = {
	@:optional
	var value : Float;
	@:optional
	var defaultValue : Float;
	@:optional
	var isDisabled : Bool;
	@:optional
	var max : Float;
	@:optional
	var min : Float;
	@:optional
	var step : Float;
	@:native("aria-labelledby")
	@:optional
	var aria_labelledby : String;
	@:native("aria-label")
	@:optional
	var aria_label : String;
	@:native("aria-valuetext")
	@:optional
	var aria_valuetext : String;
	@:optional
	var orientation : String;
	@:optional
	var getAriaValueText : (value:Float) -> String;
	@:optional
	var size : String;
	@:optional
	var color : String;
	@:optional
	var name : String;
	@:optional
	var id : String;
	var children : chakra_ui.react.ReactNode;
};