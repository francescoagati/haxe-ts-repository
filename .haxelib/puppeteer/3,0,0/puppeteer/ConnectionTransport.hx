package puppeteer;

typedef ConnectionTransport = {
	function send(message:String):Void;
	function close():Void;
	@:optional
	function onmessage(message:String):Void;
	@:optional
	function onclose():Void;
};