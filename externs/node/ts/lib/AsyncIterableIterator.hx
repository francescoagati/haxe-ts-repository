package ts.lib;
typedef AsyncIterableIterator<T> = {
	function next(args:haxe.extern.Rest<Any>):Promise<IteratorResult<T, Dynamic>>;
	@:native("return")
	@:optional
	function return_(?value:Dynamic):Promise<IteratorResult<T, Dynamic>>;
	@:native("throw")
	@:optional
	function throw_(?e:Dynamic):Promise<IteratorResult<T, Dynamic>>;
};