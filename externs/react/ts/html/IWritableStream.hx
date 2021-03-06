package ts.html;
/**
	This Streams API interface provides a standard abstraction for writing streaming data to a destination, known as a sink. This object comes with built-in backpressure and queuing.
**/
typedef IWritableStream<W> = {
	final locked : Bool;
	function abort(?reason:Dynamic):ts.lib.Promise<Void>;
	function getWriter():WritableStreamDefaultWriter<W>;
};