package puppeteer;

/**
	Dialog objects are dispatched by page via the 'dialog' event.
**/
typedef Dialog = {
	/**
		Accepts the dialog.
	**/
	function accept(?promptText:String):js.lib.Promise<Void>;
	/**
		If dialog is prompt, returns default prompt value. Otherwise, returns empty string.
	**/
	function defaultValue():String;
	/**
		Dismiss the dialog
	**/
	function dismiss():js.lib.Promise<Void>;
	/**
		Returns the message displayed in the dialog.
	**/
	function message():String;
	/**
		The dialog type. Dialog's type, can be one of `alert`, `beforeunload`, `confirm` or `prompt`.
	**/
	function type():DialogType;
};