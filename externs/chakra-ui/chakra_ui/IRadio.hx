package chakra_ui;
typedef IRadio = {
	/**
		id assigned to input
	**/
	@:optional
	var id : String;
	/**
		The name of the input field in a radio
		(Useful for form submission).
	**/
	@:optional
	var name : String;
	/**
		The value to be used in the radio button.
		This is the value that will be returned on form submission.
	**/
	@:optional
	var value : ts.AnyOf2<String, Float>;
	/**
		The aria-label attribute associated with the radio element
	**/
	@:native("aria-label")
	@:optional
	var aria_label : String;
	/**
		The aria-labelledby attribute associated with the radio element
	**/
	@:native("aria-labelledby")
	@:optional
	var aria_labelledby : String;
	/**
		The color of the radio when it's checked.
		This should be one of the color keys in the theme (e.g."green", "red")
	**/
	@:optional
	var color : String;
	/**
		If `true`, the radio will be initially checked.
	**/
	@:optional
	var defaultChecked : Bool;
	/**
		If `true`, the radio will be checked.
		You'll need to pass `onChange` to update it's value (since it's now controlled)
	**/
	@:optional
	var isChecked : Bool;
	/**
		If `true`, the radio will occupy the full width of it's parent container
	**/
	@:optional
	var isFullWidth : Bool;
	@:optional
	var size : String;
	/**
		If `true`, the radio will be disabled
	**/
	@:optional
	var isDisabled : Bool;
	@:optional
	var isInvalid : Bool;
	@:optional
	var onChange : (event:chakra_ui.react.ChangeEvent<ts.html.HTMLInputElement>) -> Void;
	@:optional
	var onBlur : (event:chakra_ui.react.FocusEvent<ts.html.HTMLInputElement>) -> Void;
	@:optional
	var onFocus : (event:chakra_ui.react.FocusEvent<ts.html.HTMLInputElement>) -> Void;
	@:optional
	var children : chakra_ui.react.ReactNode;
};