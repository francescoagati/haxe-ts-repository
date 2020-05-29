package puppeteer;

typedef FileChooser = {
	/**
		Accept the file chooser request with given paths.
		If some of the filePaths are relative paths, then they are resolved relative to the current working directory.
	**/
	function accept(filePaths:Array<String>):js.lib.Promise<Void>;
	/**
		Closes the file chooser without selecting any files.
	**/
	function cancel():js.lib.Promise<Void>;
	/**
		Whether file chooser allow for multiple file selection.
	**/
	function isMultiple():Bool;
};