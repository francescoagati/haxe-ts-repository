package node.child_process;
typedef SpawnOptionsWithStdioTuple<Stdin, Stdout, Stderr> = {
	var stdio : ts.Tuple3<Stdin, Stdout, Stderr>;
	@:optional
	var detached : Bool;
	@:optional
	var argv0 : String;
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