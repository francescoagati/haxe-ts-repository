package chakra_ui;
typedef ISelect = {
	@:optional
	var children : chakra_ui.react.ReactNode;
	@:optional
	var placeholder : ts.AnyOf2<String, Float>;
	@:optional
	var wrapperProps : chakra_ui.BoxProps;
};