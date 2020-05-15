package chakra_ui;
typedef IModal = {
	/**
		If `true`, the modal is shown.
	**/
	@:optional
	var isOpen : Bool;
	/**
		Callback invoked when user closes the modal.
	**/
	@:optional
	var onClose : () -> Void;
	/**
		Callback invoked when user closes the modal.
	**/
	var children : chakra_ui.react.ReactNode;
	/**
		The size of the modal.
	**/
	@:optional
	var size : String;
	/**
		If `true`, the modal will be centered on screen.
	**/
	@:optional
	var isCentered : Bool;
	/**
		The ref to the initial element to receiver focus when the modal opens.
	**/
	@:optional
	var initialFocusRef : ts.AnyOf2<(instance:Null<{ }>) -> Void, chakra_ui.react.RefObject<{ }>>;
};