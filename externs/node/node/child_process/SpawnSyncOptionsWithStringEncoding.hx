package node.child_process;
typedef SpawnSyncOptionsWithStringEncoding = {
	var encoding : global.BufferEncoding;
	@:optional
	var input : ts.AnyOf11<String, ts.lib.Uint8Array, ts.lib.Uint8ClampedArray, ts.lib.Uint16Array, ts.lib.Uint32Array, ts.lib.Int8Array, ts.lib.Int16Array, ts.lib.Int32Array, ts.lib.Float32Array, ts.lib.Float64Array, ts.lib.DataView>;
	@:optional
	var killSignal : ts.AnyOf2<Float, String>;
	@:optional
	var maxBuffer : Float;
	@:optional
	var argv0 : String;
	@:optional
	var stdio : ts.AnyOf2<String, Array<Null<ts.AnyOf3<Float, node.stream.Stream, String>>>>;
	@:optional
	var shell : ts.AnyOf2<String, Bool>;
	@:optional
	var windowsVerbatimArguments : Bool;
	@:optional
	var windowsHide : Bool;
	@:optional
	var timeout : Float;
	@:optional
	var uid : Float;
	@:optional
	var gid : Float;
	@:optional
	var cwd : String;
	@:optional
	var env : global.nodejs.ProcessEnv;
	/**
		Specify the kind of serialization used for sending messages between processes.
	**/
	@:optional
	var serialization : String;
};