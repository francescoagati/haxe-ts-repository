package node.fs;
/**
	Synchronous realpath(3) - return the canonicalized absolute pathname.
	
	Synchronous realpath(3) - return the canonicalized absolute pathname.
	
	Synchronous realpath(3) - return the canonicalized absolute pathname.
**/
@:jsRequire("fs", "realpathSync") @valueModuleOnly extern class RealpathSync {
	@:overload(function(path:PathLike, options:BufferEncodingOption):global.Buffer { })
	@:overload(function(path:PathLike, ?options:ts.AnyOf2<String, BaseEncodingOptions>):ts.AnyOf2<String, global.Buffer> { })
	static function native(path:PathLike, ?options:ts.AnyOf2<String, BaseEncodingOptions>):String;
}