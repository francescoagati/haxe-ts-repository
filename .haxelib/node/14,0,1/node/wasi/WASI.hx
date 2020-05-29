package node.wasi;

@:jsRequire("wasi", "WASI") extern class WASI {
	function new(?options:WASIOptions);
	/**
		Attempt to begin execution of `instance` by invoking its `_start()` export.
		If `instance` does not contain a `_start()` export, then `start()` attempts to
		invoke the `__wasi_unstable_reactor_start()` export. If neither of those exports
		is present on `instance`, then `start()` does nothing.
		
		`start()` requires that `instance` exports a [`WebAssembly.Memory`][] named
		`memory`. If `instance` does not have a `memory` export an exception is thrown.
	**/
	function start(instance:Dynamic):Void;
	/**
		Is an object that implements the WASI system call API. This object
		should be passed as the `wasi_unstable` import during the instantiation of a
		[`WebAssembly.Instance`][].
	**/
	final wasiImport : global.nodejs.Dict<Dynamic>;
	static var prototype : WASI;
}