package chakra_ui;
/**
	Converts shorthand or longhand margin and padding props to margin and padding CSS declarations
	
	- Numbers from 0-4 (or the length of theme.space) are converted to values on the spacing scale.
	- Negative values can be used for negative margins.
	- Numbers greater than the length of the theme.space array are converted to raw pixel values.
	- String values are passed as raw CSS values.
	- Array values are converted into responsive values.
**/
typedef SpaceProps<TLength> = {
	/**
		Margin on top, left, bottom and right
	**/
	@:optional
	var m : ts.AnyOf4<String, TLength, Array<Null<ts.AnyOf2<String, TLength>>>, { }>;
	/**
		Margin on top, left, bottom and right
	**/
	@:optional
	var margin : ts.AnyOf4<String, TLength, Array<Null<ts.AnyOf2<String, TLength>>>, { }>;
	/**
		Margin on top
	**/
	@:optional
	var mt : ts.AnyOf4<String, TLength, Array<Null<ts.AnyOf2<String, TLength>>>, { }>;
	/**
		Margin on top
	**/
	@:optional
	var marginTop : ts.AnyOf4<String, TLength, Array<Null<ts.AnyOf2<String, TLength>>>, { }>;
	/**
		Margin on right
	**/
	@:optional
	var mr : ts.AnyOf4<String, TLength, Array<Null<ts.AnyOf2<String, TLength>>>, { }>;
	/**
		Margin on right
	**/
	@:optional
	var marginRight : ts.AnyOf4<String, TLength, Array<Null<ts.AnyOf2<String, TLength>>>, { }>;
	/**
		Margin on bottom
	**/
	@:optional
	var mb : ts.AnyOf4<String, TLength, Array<Null<ts.AnyOf2<String, TLength>>>, { }>;
	/**
		Margin on bottom
	**/
	@:optional
	var marginBottom : ts.AnyOf4<String, TLength, Array<Null<ts.AnyOf2<String, TLength>>>, { }>;
	/**
		Margin on left
	**/
	@:optional
	var ml : ts.AnyOf4<String, TLength, Array<Null<ts.AnyOf2<String, TLength>>>, { }>;
	/**
		Margin on left
	**/
	@:optional
	var marginLeft : ts.AnyOf4<String, TLength, Array<Null<ts.AnyOf2<String, TLength>>>, { }>;
	/**
		Margin on left and right
	**/
	@:optional
	var mx : ts.AnyOf4<String, TLength, Array<Null<ts.AnyOf2<String, TLength>>>, { }>;
	/**
		Margin on left and right
	**/
	@:optional
	var marginX : ts.AnyOf4<String, TLength, Array<Null<ts.AnyOf2<String, TLength>>>, { }>;
	/**
		Margin on top and bottom
	**/
	@:optional
	var my : ts.AnyOf4<String, TLength, Array<Null<ts.AnyOf2<String, TLength>>>, { }>;
	/**
		Margin on top and bottom
	**/
	@:optional
	var marginY : ts.AnyOf4<String, TLength, Array<Null<ts.AnyOf2<String, TLength>>>, { }>;
	/**
		Padding on top, left, bottom and right
	**/
	@:optional
	var p : ts.AnyOf4<String, TLength, Array<Null<ts.AnyOf2<String, TLength>>>, { }>;
	/**
		Padding on top, left, bottom and right
	**/
	@:optional
	var padding : ts.AnyOf4<String, TLength, Array<Null<ts.AnyOf2<String, TLength>>>, { }>;
	/**
		Padding on top
	**/
	@:optional
	var pt : ts.AnyOf4<String, TLength, Array<Null<ts.AnyOf2<String, TLength>>>, { }>;
	/**
		Padding on top
	**/
	@:optional
	var paddingTop : ts.AnyOf4<String, TLength, Array<Null<ts.AnyOf2<String, TLength>>>, { }>;
	/**
		Padding on right
	**/
	@:optional
	var pr : ts.AnyOf4<String, TLength, Array<Null<ts.AnyOf2<String, TLength>>>, { }>;
	/**
		Padding on right
	**/
	@:optional
	var paddingRight : ts.AnyOf4<String, TLength, Array<Null<ts.AnyOf2<String, TLength>>>, { }>;
	/**
		Padding on bottom
	**/
	@:optional
	var pb : ts.AnyOf4<String, TLength, Array<Null<ts.AnyOf2<String, TLength>>>, { }>;
	/**
		Padding on bottom
	**/
	@:optional
	var paddingBottom : ts.AnyOf4<String, TLength, Array<Null<ts.AnyOf2<String, TLength>>>, { }>;
	/**
		Padding on left
	**/
	@:optional
	var pl : ts.AnyOf4<String, TLength, Array<Null<ts.AnyOf2<String, TLength>>>, { }>;
	/**
		Padding on left
	**/
	@:optional
	var paddingLeft : ts.AnyOf4<String, TLength, Array<Null<ts.AnyOf2<String, TLength>>>, { }>;
	/**
		Padding on left and right
	**/
	@:optional
	var px : ts.AnyOf4<String, TLength, Array<Null<ts.AnyOf2<String, TLength>>>, { }>;
	/**
		Padding on left and right
	**/
	@:optional
	var paddingX : ts.AnyOf4<String, TLength, Array<Null<ts.AnyOf2<String, TLength>>>, { }>;
	/**
		Padding on top and bottom
	**/
	@:optional
	var py : ts.AnyOf4<String, TLength, Array<Null<ts.AnyOf2<String, TLength>>>, { }>;
	/**
		Padding on top and bottom
	**/
	@:optional
	var paddingY : ts.AnyOf4<String, TLength, Array<Null<ts.AnyOf2<String, TLength>>>, { }>;
};