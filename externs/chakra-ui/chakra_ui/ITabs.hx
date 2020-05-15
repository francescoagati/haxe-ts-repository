package chakra_ui;
typedef ITabs = {
	/**
		The alignment of the tabs
	**/
	@:optional
	var align : String;
	/**
		If `true`, tabs will stretch to width of the tablist.
	**/
	@:optional
	var isFitted : Bool;
	/**
		The orientation of the <TabList/>.
	**/
	@:optional
	var orientation : String;
	/**
		The size of the tab (affects the font-size and padding).
	**/
	@:optional
	var size : String;
	/**
		If `true`, the tabs will be manually activated and
		display its panel by pressing Space or Enter.
		
		If `false`, the tabs will be automatically activated
		and their panel is displayed when they receive focus.
	**/
	@:optional
	var isManual : Bool;
	/**
		The children of the tabs should be `TabPanel` and `TabList`.
	**/
	var children : chakra_ui.react.ReactNode;
	/**
		Callback when the index (controlled or un-controlled) changes.
	**/
	@:optional
	var onChange : () -> Void;
};