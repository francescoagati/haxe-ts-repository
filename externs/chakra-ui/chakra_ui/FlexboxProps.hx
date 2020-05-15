package chakra_ui;
/**
	A convenience style group containing props related to flexbox.
	
	- String values are passed as raw CSS values.
	- Array values are converted into responsive values.
**/
typedef FlexboxProps = {
	/**
		The CSS align-items property sets the align-self value on all direct children as a group. The align-self
		property sets the alignment of an item within its containing block.
		
		In Flexbox it controls the alignment of items on the Cross Axis, in Grid Layout it controls the alignment
		of items on the Block Axis within their grid area.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/align-items)
	**/
	@:optional
	var alignItems : ts.AnyOf3<String, Array<Null<String>>, { }>;
	/**
		The CSS align-content property sets how the browser distributes space between and around content items
		along the cross-axis of a flexbox container, and the main-axis of a grid container.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/align-content)
	**/
	@:optional
	var alignContent : ts.AnyOf3<String, Array<Null<String>>, { }>;
	/**
		The CSS justify-items property defines the default justify-self for all items of the box, giving them all
		a default way of justifying each box along the appropriate axis.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/justify-items)
	**/
	@:optional
	var justifyItems : ts.AnyOf3<String, Array<Null<String>>, { }>;
	/**
		The CSS justify-content property defines how the browser distributes space between and around content items
		along the main-axis of a flex container, and the inline axis of a grid container.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/justify-content)
	**/
	@:optional
	var justifyContent : ts.AnyOf3<String, Array<Null<String>>, { }>;
	/**
		The flex-wrap CSS property sets whether flex items are forced onto one line or can wrap onto multiple lines.
		If wrapping is allowed, it sets the direction that lines are stacked.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/flex-wrap)
	**/
	@:optional
	var flexWrap : ts.AnyOf3<String, Array<Null<String>>, { }>;
	/**
		The flex-direction CSS property specifies how flex items are placed in the flex container defining the main
		axis and the direction (normal or reversed).
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/flex-direction)
	**/
	@:optional
	var flexDirection : ts.AnyOf3<String, Array<Null<String>>, { }>;
	/**
		The flex CSS property specifies how a flex item will grow or shrink so as to fit the space available in
		its flex container. This is a shorthand property that sets flex-grow, flex-shrink, and flex-basis.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/flex)
	**/
	@:optional
	var flex : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	@:optional
	var flexGrow : ts.AnyOf4<Float, String, Array<Null<ts.AnyOf2<Float, String>>>, { }>;
	@:optional
	var flexShrink : ts.AnyOf4<Float, String, Array<Null<ts.AnyOf2<Float, String>>>, { }>;
	@:optional
	var flexBasis : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The CSS justify-self property set the way a box is justified inside its alignment container along
		the appropriate axis.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/justify-self)
	**/
	@:optional
	var justifySelf : ts.AnyOf3<String, Array<Null<String>>, { }>;
	/**
		The align-self CSS property aligns flex items of the current flex line overriding the align-items value.
		
		If any of the item's cross-axis margin is set to auto, then align-self is ignored. In Grid layout align-self
		aligns the item inside the grid area.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/align-self)
	**/
	@:optional
	var alignSelf : ts.AnyOf3<String, Array<Null<String>>, { }>;
	/**
		The order CSS property sets the order to lay out an item in a flex or grid container. Items in a container
		are sorted by ascending order value and then by their source code order.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/order)
	**/
	@:optional
	var order : ts.AnyOf4<Float, String, Array<Null<ts.AnyOf2<Float, String>>>, { }>;
};