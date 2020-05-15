package chakra_ui;
typedef PositionProps = {
	/**
		The position CSS property specifies how an element is positioned in a document.
		The top, right, bottom, and left properties determine the final location of positioned elements.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/position)
	**/
	@:optional
	var position : ts.AnyOf3<String, Array<Null<String>>, { }>;
	/**
		The z-index CSS property sets the z-order of a positioned element and its descendants or
		flex items. Overlapping elements with a larger z-index cover those with a smaller one.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/z-index)
	**/
	@:optional
	var zIndex : ts.AnyOf4<Float, String, Array<Null<ts.AnyOf2<Float, String>>>, { }>;
	/**
		The top CSS property participates in specifying the vertical position of a
		positioned element. It has no effect on non-positioned elements.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/top)
	**/
	@:optional
	var top : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The right CSS property participates in specifying the horizontal position of a
		positioned element. It has no effect on non-positioned elements.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/right)
	**/
	@:optional
	var right : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The bottom CSS property participates in specifying the vertical position of a
		positioned element. It has no effect on non-positioned elements.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/top)
	**/
	@:optional
	var bottom : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The left CSS property participates in specifying the horizontal position
		of a positioned element. It has no effect on non-positioned elements.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/left)
	**/
	@:optional
	var left : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
};