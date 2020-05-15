package chakra_ui;
typedef BorderRadiusProps<TLength> = {
	/**
		The border-radius CSS property rounds the corners of an element's outer border edge. You can set a single
		radius to make circular corners, or two radii to make elliptical corners.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/border-radius)
	**/
	@:optional
	var borderRadius : ts.AnyOf4<String, TLength, Array<Null<ts.AnyOf2<String, TLength>>>, { }>;
};