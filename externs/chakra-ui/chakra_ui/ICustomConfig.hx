package chakra_ui;
typedef ICustomConfig = {
	@:optional
	var rounded : chakra_ui.BorderRadiusProps<ts.AnyOf2<String, Float>>;
	@:optional
	var roundedTop : chakra_ui.BorderRadiusProps<ts.AnyOf2<String, Float>>;
	@:optional
	var roundedBottom : chakra_ui.BorderRadiusProps<ts.AnyOf2<String, Float>>;
	@:optional
	var roundedLeft : chakra_ui.BorderRadiusProps<ts.AnyOf2<String, Float>>;
	@:optional
	var roundedRight : chakra_ui.BorderRadiusProps<ts.AnyOf2<String, Float>>;
	@:optional
	var roundedTopRight : chakra_ui.BorderRadiusProps<ts.AnyOf2<String, Float>>;
	@:optional
	var roundedTopLeft : chakra_ui.BorderRadiusProps<ts.AnyOf2<String, Float>>;
	@:optional
	var roundedBottomRight : chakra_ui.BorderRadiusProps<ts.AnyOf2<String, Float>>;
	@:optional
	var roundedBottomLeft : chakra_ui.BorderRadiusProps<ts.AnyOf2<String, Float>>;
	@:optional
	var borderBottomColor : chakra_ui.BorderColorProps;
	@:optional
	var borderTopColor : chakra_ui.BorderColorProps;
	@:optional
	var borderRightColor : chakra_ui.BorderColorProps;
	@:optional
	var borderLeftColor : chakra_ui.BorderColorProps;
	@:optional
	var textDecoration : Dynamic;
	@:optional
	var textTransform : ts.AnyOf3<String, Array<Null<String>>, { }>;
	@:optional
	var overflowX : ts.AnyOf3<String, Array<Null<String>>, { }>;
	@:optional
	var overflowY : ts.AnyOf3<String, Array<Null<String>>, { }>;
	@:optional
	var appearance : ts.AnyOf3<String, Array<Null<String>>, { }>;
	@:optional
	var transform : ts.AnyOf3<String, Array<Null<String>>, { }>;
	@:optional
	var transformOrigin : ts.AnyOf3<String, Array<Null<String>>, { }>;
	@:optional
	var whiteSpace : ts.AnyOf3<String, Array<Null<String>>, { }>;
	@:optional
	var animation : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	@:optional
	var userSelect : ts.AnyOf3<String, Array<Null<String>>, { }>;
	@:optional
	var pointerEvents : ts.AnyOf3<String, Array<Null<String>>, { }>;
	@:optional
	var boxSizing : ts.AnyOf3<String, Array<Null<String>>, { }>;
	@:optional
	var cursor : ts.AnyOf3<String, Array<Null<String>>, { }>;
	@:optional
	var resize : ts.AnyOf3<String, Array<Null<String>>, { }>;
	@:optional
	var transition : ts.AnyOf3<String, Array<Null<String>>, { }>;
	@:optional
	var objectFit : ts.AnyOf3<String, Array<Null<String>>, { }>;
	@:optional
	var objectPosition : ts.AnyOf3<String, Array<Null<String>>, { }>;
	@:optional
	var backgroundAttachment : ts.AnyOf3<String, Array<Null<String>>, { }>;
	@:optional
	var bgAttachment : ts.AnyOf3<String, Array<Null<String>>, { }>;
	@:optional
	var fill : chakra_ui.ColorProps;
	@:optional
	var stroke : chakra_ui.ColorProps;
};