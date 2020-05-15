package chakra_ui;
typedef IList = {
	/**
		If `true` the list is displayed inline.
	**/
	@:native("inline")
	@:optional
	var inline_ : Bool;
	/**
		If `true` the list is displayed in order.
	**/
	@:optional
	var ordered : Bool;
	/**
		The type of the list: `bullet`, `number` or `none`.
	**/
	var type : String;
	/**
		The contents of the list.
	**/
	@:optional
	var children : chakra_ui.react.ReactNode;
	/**
		If `true` add extra styles to the list.
	**/
	@:optional
	var styled : Bool;
	/**
		If `true` add a divider between list items
	**/
	@:optional
	var showDivider : Bool;
	/**
		The spacing between the list items
	**/
	@:optional
	var spacing : ts.AnyOf2<String, Float>;
};