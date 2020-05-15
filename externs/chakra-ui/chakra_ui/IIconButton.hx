package chakra_ui;
typedef IIconButton = {
	/**
		The icon to be used. Refer to the [Icons](/components/icons/) section
		of the docs for the available icon options.
	**/
	var icon : String;
	/**
		If `true`, the button will be perfectly round. Else, it'll be slightly round
	**/
	@:optional
	var isRound : Bool;
	/**
		A11y: A label that describes the button
	**/
	@:native("aria-label")
	var aria_label : String;
};