package node.util;
@:jsRequire("util", "inspect") @valueModuleOnly extern class Inspect {
	static var colors : global.nodejs.Dict<ts.Tuple2<Float, Float>>;
	static var styles : Dynamic;
	static var defaultOptions : InspectOptions;
	/**
		Allows changing inspect settings from the repl.
	**/
	static var replDefaults : InspectOptions;
	static var custom : js.lib.Symbol;
}