package chakra_ui;
typedef IAccordion = {
	/**
		If `true`, expands the accordion in the controlled mode.
	**/
	@:optional
	var isOpen : Bool;
	/**
		If `true`, expands the accordion by on initial mount.
	**/
	@:optional
	var defaultIsOpen : Bool;
	/**
		The callback fired when the accordion is expanded/collapsed.
	**/
	@:optional
	var onOpenChange : (isOpen:Bool) -> Void;
	/**
		The content of the accordion.
		The children must be the `AccordionHeader` and `AccordionPanel` components.
	**/
	var children : chakra_ui.react.ReactNode;
};