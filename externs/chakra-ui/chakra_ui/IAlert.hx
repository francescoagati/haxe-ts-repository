package chakra_ui;
typedef IAlert = {
	/**
		The id of the alert
	**/
	@:optional
	var id : String;
	/**
		The status of the alert
	**/
	@:optional
	var status : String;
	/**
		The variant of the alert style to use.
	**/
	@:optional
	var variant : String;
};