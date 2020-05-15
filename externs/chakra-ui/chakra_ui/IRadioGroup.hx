package chakra_ui;
typedef IRadioGroup = {
	@:optional
	var id : String;
	@:optional
	var name : String;
	@:optional
	var children : chakra_ui.react.ReactNode;
	@:optional
	var defaultValue : ts.AnyOf2<String, Float>;
	@:optional
	var value : ts.AnyOf2<String, Float>;
	@:optional
	var onChange : ts.AnyOf3<() -> Void, (event:chakra_ui.react.ChangeEvent<ts.html.HTMLInputElement>) -> Void, (event:chakra_ui.react.ChangeEvent<ts.html.HTMLInputElement>, value:ts.AnyOf2<String, Float>) -> Void>;
	@:optional
	var spacing : chakra_ui.MarginRightProps;
	@:optional
	var isInline : Bool;
};