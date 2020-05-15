package chakra_ui;
typedef IRadioButtonGroup = {
	var id : String;
	var name : String;
	var children : chakra_ui.react.ReactNode;
	var defaultValue : ts.AnyOf2<String, Float>;
	var value : ts.AnyOf2<String, Float>;
	var onChange : (value:ts.AnyOf2<String, Float>) -> Void;
	var spacing : chakra_ui.MarginRightProps;
	var isInline : Bool;
};