package chakra_ui;
typedef IButton = {
	/**
		The size of the button. Use the sizes in `theme.sizes.button`
	**/
	@:optional
	var size : String;
	/**
		If `true`, the button will show a spinner.
	**/
	@:optional
	var isLoading : Bool;
	/**
		The color of the button. Use the colors passed in `theme.colors`.
	**/
	@:optional
	var color : String;
	/**
		The variant of the button style to use.
	**/
	@:optional
	var variant : String;
	/**
		If `true`, the button will be disabled.
	**/
	@:optional
	var isDisabled : Bool;
	/**
		The label to show in the button when `isLoading` is true
		If no text is passed, it only shows the spinner
	**/
	@:optional
	var loadingText : String;
	/**
		If `true`, the button will take up the full width of its container.
	**/
	@:optional
	var isFullWidth : Bool;
	/**
		The html button type to use.
	**/
	@:optional
	var type : String;
	/**
		The content of the button.
	**/
	var children : chakra_ui.react.ReactNode;
	/**
		If added, the button will show an icon before the button's label.
		Use the icon key in `theme.iconPath`
	**/
	@:optional
	var leftIcon : String;
	/**
		If added, the button will show an icon after the button's label.
		Use the icon key in `theme.iconPath`
	**/
	@:optional
	var rightIcon : String;
	/**
		The space between the button icon and label.
		Use the styled-system tokens or add custom values as a string
	**/
	@:optional
	var iconSpacing : chakra_ui.MarginRightProps;
};