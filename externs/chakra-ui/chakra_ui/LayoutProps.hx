package chakra_ui;
/**
	A convenience style group containing props related to layout such as width, height, and display.
	
	- For length props, Numbers from 0-4 (or the length of theme.sizes) are converted to values on the spacing scale.
	- For length props, Numbers greater than the length of the theme.sizes array are converted to raw pixel values.
	- String values are passed as raw CSS values.
	- Array values are converted into responsive values.
**/
typedef LayoutProps = {
	/**
		The width utility parses a component's `width` prop and converts it into a CSS width declaration.
		
		- Numbers from 0-1 are converted to percentage widths.
		- Numbers greater than 1 are converted to pixel values.
		- String values are passed as raw CSS values.
		- And arrays are converted to responsive width styles.
	**/
	@:optional
	var width : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The height CSS property specifies the height of an element. By default, the property defines the height of the
		content area. If box-sizing is set to border-box, however, it instead determines the height of the border area.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/height)
	**/
	@:optional
	var height : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The min-width CSS property sets the minimum width of an element.
		It prevents the used value of the width property from becoming smaller than the value specified for min-width.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/min-width)
	**/
	@:optional
	var minWidth : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The min-height CSS property sets the minimum height of an element. It prevents the used value of the height
		property from becoming smaller than the value specified for min-height.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/display)
	**/
	@:optional
	var minHeight : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The max-width CSS property sets the maximum width of an element.
		It prevents the used value of the width property from becoming larger than the value specified by max-width.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/max-width)
	**/
	@:optional
	var maxWidth : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The max-height CSS property sets the maximum height of an element. It prevents the used value of the height
		property from becoming larger than the value specified for max-height.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/max-height)
	**/
	@:optional
	var maxHeight : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The display CSS property defines the display type of an element, which consists of the two basic qualities
		of how an element generates boxes — the outer display type defining how the box participates in flow layout,
		and the inner display type defining how the children of the box are laid out.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/display)
	**/
	@:optional
	var display : ts.AnyOf3<String, Array<Null<String>>, { }>;
	/**
		The vertical-align CSS property specifies sets vertical alignment of an inline or table-cell box.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/vertical-align)
	**/
	@:optional
	var verticalAlign : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	@:optional
	var size : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
};