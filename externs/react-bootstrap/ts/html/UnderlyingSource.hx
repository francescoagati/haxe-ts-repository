package ts.html;
typedef UnderlyingSource<R> = {
	@:optional
	var cancel : ReadableStreamErrorCallback;
	@:optional
	var pull : ReadableStreamDefaultControllerCallback<R>;
	@:optional
	var start : ReadableStreamDefaultControllerCallback<R>;
	@:optional
	var type : Any;
};