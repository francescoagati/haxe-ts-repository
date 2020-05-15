package chakra_ui;
typedef BackgroundProps<TLength> = {
	/**
		The background shorthand CSS property sets all background style properties at once,
		such as color, image, origin and size, repeat method, and others.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/background)
	**/
	@:optional
	var background : ts.AnyOf4<String, TLength, Array<Null<ts.AnyOf2<String, TLength>>>, { }>;
	/**
		The background-image CSS property sets one or more background images on an element.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/background-image)
	**/
	@:optional
	var backgroundImage : ts.AnyOf3<String, Array<Null<String>>, { }>;
	/**
		The background-size CSS property sets the size of the element's background image. The
		image can be left to its natural size, stretched, or constrained to fit the available space.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/background-size)
	**/
	@:optional
	var backgroundSize : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The background-position CSS property sets the initial position for each background image. The
		position is relative to the position layer set by background-origin.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/background-position)
	**/
	@:optional
	var backgroundPosition : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The background-repeat CSS property sets how background images are repeated. A background
		image can be repeated along the horizontal and vertical axes, or not repeated at all.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/background-repeat)
	**/
	@:optional
	var backgroundRepeat : ts.AnyOf3<String, Array<Null<String>>, { }>;
};