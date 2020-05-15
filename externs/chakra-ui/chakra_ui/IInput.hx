package chakra_ui;
typedef IInput = {
	/**
		The standard HTML input autocomplete attribute.
		
		This prop helps users to fill forms faster, especially on mobile devices.
		[See the specification](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#autofill).
	**/
	@:optional
	var autoComplete : String;
	/**
		If `true`, the `input` element will be focused during the first mount.
	**/
	@:optional
	var autoFocus : Bool;
	/**
		Standard HTML input form attribute.
		This is useful if the input cannot be included directly inside a form.
	**/
	@:optional
	var form : Bool;
	/**
		Standard HTML `input` pattern attribute, used for validating using a regular expression.
	**/
	@:optional
	var pattern : Bool;
	/**
		The CSS class name of the `input` element.
	**/
	@:optional
	var className : String;
	/**
		The type attribute of the `input` element
	**/
	@:optional
	var type : String;
	/**
		Standard `input` min attribute, to be used with `type="number"`
	**/
	@:optional
	var min : Float;
	/**
		Standard `input` max attribute, to be used with `type="number"`
	**/
	@:optional
	var max : Float;
	/**
		Standard `input` step attribute, to be used with `type="number"`
	**/
	@:optional
	var step : Float;
	/**
		Set the maximum length that the entered text can be.
	**/
	@:optional
	var maxLength : Float;
	/**
		Text to display in the input if the `input` is empty.
	**/
	@:optional
	var placeholder : String;
	/**
		Initial value of the input, for uncontrolled usage.
	**/
	@:optional
	var defaultValue : ts.AnyOf2<String, Float>;
	/**
		The value of the input, for controlled usage.
	**/
	@:optional
	var value : ts.AnyOf2<String, Float>;
	/**
		If `true`, the input will be disabled.
		This sets `aria-disabled=true` and you can style this state by passing `_disabled` prop
	**/
	@:optional
	var isDisabled : Bool;
	/**
		If `true`, the `input` will indicate an error. @
		This sets `aria-invalid=true` and you can style this state by passing `_invalid` prop
	**/
	@:optional
	var isInvalid : Bool;
	/**
		If `true`, the input element will be required.
	**/
	@:optional
	var isRequired : Bool;
	/**
		If `true`, the input element will span the full width of it's parent
	**/
	@:optional
	var isFullWidth : Bool;
	/**
		If `true`, prevents the value of the input from being edited.
	**/
	@:optional
	var isReadOnly : Bool;
	/**
		The id of the `input` element.
	**/
	@:optional
	var id : String;
	/**
		The name attribute of the `input` element.
	**/
	@:optional
	var name : String;
	/**
		The visual size of the `input` element.
	**/
	@:optional
	var size : String;
	/**
		The variant of the input style to use.
	**/
	@:optional
	var variant : String;
	/**
		The component to use in place of `input`
	**/
	@:optional
	var as : ts.AnyOf3<String, chakra_ui.react.ComponentClass<Dynamic, Dynamic>, chakra_ui.react.FunctionComponent<Dynamic>>;
	/**
		Accessibility label to use, in scenarios where the input as no visible label
		A11y: It's useful for screen readers
	**/
	@:native("aria-label")
	@:optional
	var aria_label : String;
	/**
		The border color when the input is focused.
		Use color keys in `theme.colors`
	**/
	@:optional
	var _focusBorderColor : String;
};