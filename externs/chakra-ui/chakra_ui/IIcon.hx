package chakra_ui;
typedef IIcon = {
	/**
		The size of the icon.
	**/
	@:optional
	var size : String;
	/**
		The name of the icon.
	**/
	var name : String;
	/**
		The color of the icon.
	**/
	@:optional
	var color : String;
	/**
		The role of the icon. `presentation` or `img`
	**/
	@:optional
	var role : String;
};