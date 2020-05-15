package chakra_ui;
typedef BorderColorProps = {
	/**
		The border-color shorthand CSS property sets the color of all sides of an element's border.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/border-color)
	**/
	@:optional
	var borderColor : ts.AnyOf3<String, Array<Null<String>>, { }>;
};