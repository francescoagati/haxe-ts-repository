package ts.html;
typedef WritableStreamDefaultControllerWriteCallback<W> = {
	@:selfCall
	function call(chunk:W, controller:WritableStreamDefaultController):ts.AnyOf2<Void, ts.lib.PromiseLike<Void>>;
};