package chakra_ui;
typedef IInputAddon = {
	/**
		The content of the `InputAddon`
	**/
	var children : chakra_ui.react.ReactNode;
	/**
		The size of the addon is inherited from the `InputGroup` via `cloneElement`.
	**/
	@:optional
	var size : String;
	/**
		The position the addon should appear relative to the `Input`.
		We added `InputLeftAddon` and `InputRightAddon` so you might not need to pass this
	**/
	@:optional
	var placement : String;
};