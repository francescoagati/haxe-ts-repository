package chakra_ui;
typedef ISwitch = {
	/**
		The size of the switch
	**/
	@:optional
	var size : String;
	/**
		The background color of the switch when checked
	**/
	@:optional
	var color : String;
	/**
		The input name of the switch when used in a form
	**/
	@:optional
	var name : String;
	/**
		The value of the switch.
	**/
	@:optional
	var value : ts.AnyOf2<String, Bool>;
	/**
		The children of the switch.
	**/
	var children : chakra_ui.react.ReactNode;
	/**
		The aria-label of the switch for accessibility.
	**/
	@:native("aria-label")
	@:optional
	var aria_label : String;
	/**
		The aria-labelledby of the switch for accessibility.
	**/
	@:native("aria-labelledby")
	@:optional
	var aria_labelledby : String;
	/**
		If `true`, set the switch to the checked state.
	**/
	@:optional
	var isChecked : Bool;
	/**
		If `true`, set the disabled to the invalid state.
	**/
	@:optional
	var isDisabled : Bool;
	/**
		If `true`, set the switch to the invalid state.
	**/
	@:optional
	var isInvalid : Bool;
};