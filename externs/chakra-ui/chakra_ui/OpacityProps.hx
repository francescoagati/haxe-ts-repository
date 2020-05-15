package chakra_ui;
typedef OpacityProps = {
	/**
		The opacity CSS property sets the transparency of an element or the degree to which content
		behind an element is visible.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/opacity)
	**/
	@:optional
	var opacity : ts.AnyOf4<Float, String, Array<Null<ts.AnyOf2<Float, String>>>, { }>;
};