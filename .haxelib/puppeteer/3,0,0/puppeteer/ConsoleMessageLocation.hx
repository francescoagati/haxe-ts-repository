package puppeteer;

typedef ConsoleMessageLocation = {
	/**
		URL of the resource if known.
	**/
	@:optional
	var url : String;
	/**
		Line number in the resource if known
	**/
	@:optional
	var lineNumber : Float;
	/**
		Column number in the resource if known.
	**/
	@:optional
	var columnNumber : Float;
};