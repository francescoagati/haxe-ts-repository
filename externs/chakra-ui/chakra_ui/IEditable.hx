package chakra_ui;
typedef IEditable = {
	/**
		Text value of the controlled input
	**/
	@:optional
	var value : String;
	/**
		Default text value of uncontrolled input.
	**/
	@:optional
	var defaultValue : String;
	/**
		Whether the text can be edited.
	**/
	@:optional
	var isDisabled : Bool;
	/**
		Whether the component should start with the edit mode active
		If `true`, the input is shown by default.
	**/
	@:optional
	var isEditing : Bool;
	/**
		Callback invoked when user changes input in any way.
	**/
	@:optional
	var onChange : () -> Void;
	/**
		Callback invoked when user cancels input with the `Esc` key. Receives last confirmed value.
	**/
	@:optional
	var onCancel : () -> Void;
	/**
		Callback invoked when user confirms value with `enter` key or by blurring input.
	**/
	@:optional
	var onSubmit : () -> Void;
	/**
		Callback invoked after the user enters edit mode.
	**/
	@:optional
	var onEdit : () -> Void;
	/**
		If `true`, the input's text will be highlighted on focus.
	**/
	@:optional
	var selectAllOnFocus : Bool;
	/**
		Placeholder text when the value is empty.
	**/
	@:optional
	var placeholder : String;
	/**
		The content of the EditableText
		Ideally only `EditablePreview` and `EditableInput` should
		be the children (but you add other elements too)
	**/
	var children : chakra_ui.react.ReactNode;
};