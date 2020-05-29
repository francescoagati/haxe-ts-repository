package puppeteer;

typedef AXNode = {
	/**
		The role.
	**/
	var role : String;
	/**
		A human readable name for the node.
	**/
	var name : String;
	/**
		The current value of the node.
	**/
	var value : ts.AnyOf2<String, Float>;
	/**
		An additional human readable description of the node.
	**/
	var description : String;
	/**
		Keyboard shortcuts associated with this node.
	**/
	var keyshortcuts : String;
	/**
		A human readable alternative to the role.
	**/
	var roledescription : String;
	/**
		A description of the current value.
	**/
	var valuetext : String;
	/**
		Whether the node is disabled.
	**/
	var disabled : Bool;
	/**
		Whether the node is expanded or collapsed.
	**/
	var expanded : Bool;
	/**
		Whether the node is focused.
	**/
	var focused : Bool;
	/**
		Whether the node is modal.
	**/
	var modal : Bool;
	/**
		Whether the node text input supports multiline.
	**/
	var multiline : Bool;
	/**
		Whether more than one child can be selected.
	**/
	var multiselectable : Bool;
	/**
		Whether the node is read only.
	**/
	var readonly : Bool;
	/**
		Whether the node is required.
	**/
	var required : Bool;
	/**
		Whether the node is selected in its parent node.
	**/
	var selected : Bool;
	/**
		Whether the checkbox is checked, or "mixed".
	**/
	var checked : ts.AnyOf2<Bool, String>;
	/**
		Whether the toggle button is checked, or "mixed".
	**/
	var pressed : ts.AnyOf2<Bool, String>;
	/**
		The level of a heading.
	**/
	var level : Float;
	/**
		The minimum value in a node.
	**/
	var valuemin : Float;
	/**
		The maximum value in a node.
	**/
	var valuemax : Float;
	/**
		What kind of autocomplete is supported by a control.
	**/
	var autocomplete : String;
	/**
		What kind of popup is currently being shown for a node.
	**/
	var haspopup : String;
	/**
		Whether and in what way this node's value is invalid.
	**/
	var invalid : String;
	/**
		Whether the node is oriented horizontally or vertically.
	**/
	var orientation : String;
	/**
		Child nodes of this node, if any.
	**/
	var children : Array<AXNode>;
};