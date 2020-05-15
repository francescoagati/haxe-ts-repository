package chakra_ui;
typedef IButtonGroup = {
	@:optional
	var size : Dynamic;
	@:optional
	var color : String;
	@:optional
	var variant : Dynamic;
	/**
		If `true`, the borderRadius of button that are direct children will be altered
		to look flushed together
	**/
	@:optional
	var isAttached : Bool;
	@:optional
	var spacing : chakra_ui.MarginRightProps;
	var children : chakra_ui.react.ReactNode;
};