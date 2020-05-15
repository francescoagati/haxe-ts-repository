package ts.html;
typedef ReadableStreamBYOBRequest = {
	final view : ts.lib.ArrayBufferView;
	function respond(bytesWritten:Float):Void;
	function respondWithNewView(view:ts.lib.ArrayBufferView):Void;
};