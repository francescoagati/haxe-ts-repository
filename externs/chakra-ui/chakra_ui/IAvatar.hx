package chakra_ui;
typedef IAvatar = {
	/**
		The name of the person in the avatar.
		
		- if `src` has loaded, the name will be used as the `alt` attribute of the `img`
		- If `src` is not loaded, the name will be used to create the initials
	**/
	var name : String;
	/**
		The size of the avatar.
	**/
	@:optional
	var size : String;
	/**
		If `true`, the `Avatar` will show a border around it.
		
		Best for a group of avatars
	**/
	@:optional
	var showBorder : Bool;
	/**
		The badge at the bottom right corner of the avatar.
	**/
	@:optional
	var badge : chakra_ui.react.ReactNode;
	/**
		The image url of the `Avatar`
	**/
	@:optional
	var src : String;
};