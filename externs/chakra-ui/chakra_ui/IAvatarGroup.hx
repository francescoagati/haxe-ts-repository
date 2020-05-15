package chakra_ui;
typedef IAvatarGroup = {
	/**
		The size of the avatar group.
	**/
	@:optional
	var size : String;
	/**
		The children of the avatar group.
		
		Ideally should be `Avatar` and `MoreIndicator` components
	**/
	var children : chakra_ui.react.ReactNode;
	/**
		The space between the avatars in the group.
	**/
	@:optional
	var spacing : chakra_ui.MarginLeftProps;
};