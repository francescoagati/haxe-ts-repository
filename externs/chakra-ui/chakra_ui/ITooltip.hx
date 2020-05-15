package chakra_ui;
typedef ITooltip = {
	@:optional
	var bg : String;
	@:optional
	var color : String;
	@:optional
	var label : String;
	@:optional
	var timeout : Float;
	@:optional
	var children : chakra_ui.react.ReactNode;
	@:optional
	var showArrow : Bool;
	@:optional
	var placement : String;
	@:optional
	var closeOnClick : () -> Void;
	@:optional
	var defaultOpen : String;
	@:optional
	var isOpen : Bool;
	@:optional
	var onOpenChange : () -> Void;
};