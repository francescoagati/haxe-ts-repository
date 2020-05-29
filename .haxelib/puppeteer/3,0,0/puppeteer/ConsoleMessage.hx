package puppeteer;

/**
	ConsoleMessage objects are dispatched by page via the 'console' event.
**/
typedef ConsoleMessage = {
	/**
		The message arguments.
	**/
	function args():Array<JSHandle<Dynamic>>;
	/**
		The location the message originated from
	**/
	function location():ConsoleMessageLocation;
	/**
		The message text.
	**/
	function text():String;
	function type():ConsoleMessageType;
};