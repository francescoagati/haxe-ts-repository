package chakra_ui;
typedef ShadowProps = {
	/**
		The box-shadow CSS property adds shadow effects around an element's frame. You can set multiple effects separated
		by commas. A box shadow is described by X and Y offsets relative to the element, blur and spread radii and color.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/box-shadow)
	**/
	@:optional
	var boxShadow : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The `text-shadow` CSS property adds shadows to text. It accepts a comma-separated list of shadows to be applied
		to the text and any of its `decorations`. Each shadow is described by some combination of X and Y offsets from
		the element, blur radius, and color.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/text-shadow)
	**/
	@:optional
	var textShadow : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
};