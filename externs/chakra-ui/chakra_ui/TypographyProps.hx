package chakra_ui;
/**
	A convenience style group containing props related to typography such as fontFamily, fontSize, fontWeight, etc.
	
	- String values are passed as raw CSS values.
	- Array values are converted into responsive values.
**/
typedef TypographyProps = {
	@:optional
	var fontFamily : ts.AnyOf3<String, Array<Null<String>>, { }>;
	/**
		The fontSize utility parses a component's `fontSize` prop and converts it into a CSS font-size declaration.
		
		- Numbers from 0-8 (or `theme.fontSizes.length`) are converted to values on the [font size scale](#default-theme).
		- Numbers greater than `theme.fontSizes.length` are converted to raw pixel values.
		- String values are passed as raw CSS values.
		- And array values are converted into responsive values.
	**/
	@:optional
	var fontSize : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The font-weight CSS property specifies the weight (or boldness) of the font.
		
		The font weights available to you will depend on the font-family you are using. Some fonts are only available in normal and bold.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/font-weight)
	**/
	@:optional
	var fontWeight : ts.AnyOf4<Float, String, Array<Null<ts.AnyOf2<Float, String>>>, { }>;
	/**
		The line-height CSS property sets the amount of space used for lines, such as in text. On block-level elements,
		it specifies the minimum height of line boxes within the element.
		
		On non-replaced inline elements, it specifies the height that is used to calculate line box height.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/line-height)
	**/
	@:optional
	var lineHeight : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The letter-spacing CSS property sets the spacing behavior between text characters.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/letter-spacing)
	**/
	@:optional
	var letterSpacing : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The font-style CSS property specifies whether a font should be styled with a normal, italic,
		or oblique face from its font-family.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/font-style)
	**/
	@:optional
	var fontStyle : ts.AnyOf3<String, Array<Null<String>>, { }>;
	/**
		The text-align CSS property specifies the horizontal alignment of an inline or table-cell box.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/text-align)
	**/
	@:optional
	var textAlign : ts.AnyOf3<String, Array<Null<String>>, { }>;
};