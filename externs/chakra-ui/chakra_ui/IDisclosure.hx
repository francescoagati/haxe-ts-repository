package chakra_ui;
typedef IDisclosure = {
	var isOpen : Bool;
	var onOpen : () -> Void;
	var onClose : () -> Void;
	var onToggle : () -> Void;
};