package node.child_process;
typedef SpawnSyncReturns<T> = {
	var pid : Float;
	var output : Array<String>;
	var stdout : T;
	var stderr : T;
	var status : Null<Float>;
	var signal : Null<String>;
	@:optional
	var error : ts.lib.Error;
};