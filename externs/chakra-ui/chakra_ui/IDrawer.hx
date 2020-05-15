package chakra_ui;
typedef IDrawer = {
	/**
		If `true`, the drawer is shown.
	**/
	@:optional
	var isOpen : Bool;
	/**
		Callback invoked when user closes the drawer.
	**/
	@:optional
	var onClose : () -> Void;
	/**
		Callback invoked when user closes the drawer.
	**/
	var children : chakra_ui.react.ReactNode;
	/**
		The size of the drawer.
	**/
	@:optional
	var size : String;
	/**
		If `true`, the drawer fills the height of the viewport by default.
	**/
	@:optional
	var isFullHeight : Bool;
	/**
		The ref to the initial element to receiver focus when the drawer opens.
	**/
	@:optional
	var initialFocusRef : ts.AnyOf2<(instance:Null<{ }>) -> Void, chakra_ui.react.RefObject<{ }>>;
	/**
		If `true`, show the drawer overlay by default.
	**/
	@:optional
	var hideOverlay : Bool;
	/**
		Set the position of the drawer.
	**/
	@:optional
	var placement : String;
};