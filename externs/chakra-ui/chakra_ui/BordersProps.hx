package chakra_ui;
typedef BordersProps = {
	/**
		The border CSS property sets an element's border. It's a shorthand for border-width, border-style,
		and border-color.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/border)
	**/
	@:optional
	var border : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	@:optional
	var borderX : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	@:optional
	var borderY : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The border-width shorthand CSS property sets the width of all sides of an element's border.
		
		[MDN * reference](https://developer.mozilla.org/en-US/docs/Web/CSS/border-width)
	**/
	@:optional
	var borderWidth : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The border-style shorthand CSS property sets the style of all sides of an element's border.
		
		[MDN * reference](https://developer.mozilla.org/en-US/docs/Web/CSS/border-style)
	**/
	@:optional
	var borderStyle : ts.AnyOf3<String, Array<Null<String>>, { }>;
	/**
		The border-color shorthand CSS property sets the color of all sides of an element's border.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/border-color)
	**/
	@:optional
	var borderColor : ts.AnyOf3<String, Array<Null<String>>, { }>;
	/**
		The border-radius CSS property rounds the corners of an element's outer border edge. You can set a single
		radius to make circular corners, or two radii to make elliptical corners.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/border-radius)
	**/
	@:optional
	var borderRadius : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The border-top CSS property is a shorthand that sets the values of border-top-width, border-top-style,
		and border-top-color. These properties describe an element's top border.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/border-top)
	**/
	@:optional
	var borderTop : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The border-right CSS property is a shorthand that sets border-right-width, border-right-style,
		and border-right-color. These properties set an element's right border.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/border-right)
	**/
	@:optional
	var borderRight : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The border-bottom CSS property sets an element's bottom border. It's a shorthand for
		border-bottom-width, border-bottom-style and border-bottom-color.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/border-bottom)
	**/
	@:optional
	var borderBottom : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The border-left CSS property is a shorthand that sets the values of border-left-width,
		border-left-style, and border-left-color. These properties describe an element's left border.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/border-left)
	**/
	@:optional
	var borderLeft : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
};