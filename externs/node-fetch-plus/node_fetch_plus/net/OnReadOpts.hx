package node_fetch_plus.net;
typedef OnReadOpts = {
	var buffer : ts.AnyOf2<ts.lib.Uint8Array, () -> ts.lib.Uint8Array>;
	/**
		This function is called for every chunk of incoming data.
		Two arguments are passed to it: the number of bytes written to buffer and a reference to buffer.
		Return false from this function to implicitly pause() the socket.
	**/
	function callback(bytesWritten:Float, buf:ts.lib.Uint8Array):Bool;
};