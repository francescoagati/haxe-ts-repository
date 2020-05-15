package chakra_ui;
typedef ICheckbox = {
	/**
		id assigned to input
	**/
	var id : String;
	/**
		The name of the input field in a checkbox
		(Useful for form submission).
	**/
	var name : String;
	/**
		The value to be used in the checkbox input.
		This is the value that will be returned on form submission.
	**/
	var value : ts.AnyOf2<String, Float>;
	/**
		The color of the checkbox when it's checked.
		This should be one of the color keys in the theme (e.g."green", "red")
	**/
	var color : String;
	/**
		If `true`, the checkbox will be initially checked.
	**/
	var defaultChecked : Bool;
	/**
		If `true`, the checkbox will be checked.
		You'll need to pass `onChange` to update it's value (since it's now controlled)
	**/
	var isChecked : Bool;
	/**
		If `true`, the checkbox should take up the full width of the parent.
	**/
	var isFullWidth : Bool;
	/**
		The size (width and height) of the checkbox
	**/
	var size : String;
	/**
		If `true`, the checkbox will be disabled
	**/
	var isDisabled : Bool;
	/**
		If `true`, the checkbox is marked as invalid.
		Changes style of unchecked state.
	**/
	var isInvalid : Bool;
	/**
		Function called whenever the state of the checkbox changes.
		It will be called with an object containing the react synthetic event.
	**/
	var onChange : () -> Void;
	/**
		If `true`, the checkbox will be indeterminate.
		This only affects the icon shown inside checkbox
		and does not modify the isChecked property.
	**/
	var isIndeterminate : Bool;
	/**
		The children is the label to be displayed to the right of the checkbox.
	**/
	var children : chakra_ui.react.ReactNode;
};