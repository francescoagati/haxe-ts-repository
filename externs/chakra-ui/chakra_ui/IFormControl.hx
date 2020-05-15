package chakra_ui;
typedef IFormControl = {
	/**
		Id of the form control.
	**/
	@:optional
	var id : String;
	/**
		Name of the form control.
	**/
	@:optional
	var name : String;
	/**
		Content of the form control.
	**/
	@:optional
	var children : chakra_ui.react.ReactNode;
	/**
		If `true` set the form control to the invalid state.
	**/
	@:optional
	var isInvalid : Bool;
	/**
		If `true` set the form control to be required.
	**/
	@:optional
	var isRequired : Bool;
	/**
		If `true` set the form control to the disabled state.
	**/
	@:optional
	var isDisabled : Bool;
};