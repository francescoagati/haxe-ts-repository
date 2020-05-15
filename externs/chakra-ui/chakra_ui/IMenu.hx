package chakra_ui;
typedef IMenu = {
	@:optional
	var isOpen : Bool;
	@:optional
	var autoSelect : Bool;
	@:optional
	var closeOnBlur : Bool;
	@:optional
	var closeOnSelect : Bool;
	@:optional
	var placement : String;
};