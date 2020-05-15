package chakra_ui;
typedef IPopover = {
	@:optional
	var isOpen : Bool;
	@:optional
	var defaultOpen : Bool;
	@:optional
	var maxWidth : Dynamic;
	@:optional
	var trigger : chakra_ui.react.ReactNode;
	@:optional
	var placement : String;
	var children : chakra_ui.react.ReactNode;
	@:optional
	var showArrow : Bool;
	@:optional
	var showCloseButton : Bool;
	@:optional
	var initialFocusRef : ts.AnyOf2<(instance:Null<{ }>) -> Void, chakra_ui.react.RefObject<{ }>>;
	@:optional
	var usePortal : Bool;
	@:optional
	var onOpenChange : () -> Void;
	@:optional
	var trapFocus : Bool;
	@:optional
	var closeOnBlur : Bool;
	@:optional
	var closeOnEsc : Bool;
};