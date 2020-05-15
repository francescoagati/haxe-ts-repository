package chakra_ui;
typedef ColorProps = {
	/**
		The color utility parses a component's `color` and `bg` props and converts them into CSS declarations.
		By default the raw value of the prop is returned.
		
		Color palettes can be configured with the ThemeProvider to use keys as prop values, with support for dot notation.
		Array values are converted into responsive values.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/color)
	**/
	@:optional
	var color : ts.AnyOf3<String, Array<Null<String>>, { }>;
	/**
		The color utility parses a component's `color` and `bg` props and converts them into CSS declarations.
		By default the raw value of the prop is returned.
		
		Color palettes can be configured with the ThemeProvider to use keys as prop values, with support for dot notation.
		Array values are converted into responsive values.
		
		[MDN Reference](https://developer.mozilla.org/en-US/docs/Web/CSS/background-color)
	**/
	@:optional
	var bg : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	@:optional
	var backgroundColor : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The opacity CSS property sets the transparency of an element or the degree to which content
		behind an element is visible.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/opacity)
	**/
	@:optional
	var opacity : ts.AnyOf4<Float, String, Array<Null<ts.AnyOf2<Float, String>>>, { }>;
};