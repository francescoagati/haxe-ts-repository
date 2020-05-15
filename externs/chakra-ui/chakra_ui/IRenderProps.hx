package chakra_ui;
typedef IRenderProps = {
	@:optional
	var isOpen : Bool;
	@:optional
	var onClose : () -> Void;
};