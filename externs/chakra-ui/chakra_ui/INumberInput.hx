package chakra_ui;
typedef INumberInput = {
	@:optional
	var size : String;
	@:optional
	var onChange : (value:Float) -> Void;
	@:optional
	var isDisabled : Bool;
	@:optional
	var wrapperProps : chakra_ui.BoxProps;
};