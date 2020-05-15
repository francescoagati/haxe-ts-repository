package chakra_ui;
typedef IPseudoBoxProps = {
	/**
		Styles for CSS selector `&:after`
		
		NOTE:When using this, ensure the `content` is wrapped in a backtick.
	**/
	var _after : chakra_ui.BoxProps;
	/**
		Styles for CSS selector `&:before`
		
		NOTE:When using this, ensure the `content` is wrapped in a backtick.
	**/
	var _before : chakra_ui.BoxProps;
	/**
		Styles for CSS selector `&:focus`
	**/
	var _focus : chakra_ui.BoxProps;
	/**
		Styles for CSS selector `&:hover`
	**/
	var _hover : chakra_ui.BoxProps;
	/**
		Styles for CSS Selector `&:active`
	**/
	var _active : chakra_ui.BoxProps;
	/**
		Styles to apply when the ARIA attribute `aria-selected` is `true`
		- CSS selector `&[aria-selected=true]`
	**/
	var _selected : chakra_ui.BoxProps;
	/**
		Styles to apply when a child of this element has received focus
		- CSS Selector `&:focus-within`
	**/
	var _focusWithin : chakra_ui.BoxProps;
	/**
		Styles to apply when the ARIA attribute `aria-invalid` is `true`
		- CSS selector `&[aria-invalid=true]`
	**/
	var _invalid : chakra_ui.BoxProps;
	/**
		Styles to apply when this element is disabled. The passed styles are applied to these CSS selectors:
		- `&[aria-disabled=true]`
		- `&:disabled`
		- `&:disabled:focus`
		- `&:disabled:hover`
		- `&:focus[aria-disabled=true]`
		- `&:hover[aria-disabled=true]`
	**/
	var _disabled : chakra_ui.BoxProps;
	/**
		Styles to apply when the ARIA attribute `aria-grabbed` is `true`
		- CSS selector `&[aria-grabbed=true]`
	**/
	var _grabbed : chakra_ui.BoxProps;
	/**
		Styles to apply when the ARIA attribute `aria-expanded` is `true`
		- CSS selector `&[aria-expanded=true]`
	**/
	var _expanded : chakra_ui.BoxProps;
	/**
		Styles to apply when the ARIA attribute `aria-checked` is `true`
		- CSS selector `&[aria-checked=true]`
	**/
	var _checked : chakra_ui.BoxProps;
	/**
		Styles for CSS Selector `&:readonly`
	**/
	var _readOnly : chakra_ui.BoxProps;
	/**
		Styles for CSS Selector `&:first-of-type`
	**/
	var _firstChild : chakra_ui.BoxProps;
	/**
		Styles for CSS Selector `&:last-of-type`
	**/
	var _lastChild : chakra_ui.BoxProps;
	/**
		Styles for CSS Selector `&:not(:first-of-type)`
	**/
	var _notFirstChild : chakra_ui.BoxProps;
	/**
		Styles for CSS Selector `&:not(:last-of-type)`
	**/
	var _notLastChild : chakra_ui.BoxProps;
	/**
		Styles for CSS Selector `&::placeholder`.
		Useful for inputs
	**/
	var _placeholder : chakra_ui.BoxProps;
};