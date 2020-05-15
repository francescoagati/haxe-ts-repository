package ts.lib;
typedef Iterator<T, TReturn, TNext> = {
	function next(args:haxe.extern.Rest<Any>):IteratorResult<T, TReturn>;
	@:native("return")
	@:optional
	function return_(?value:TReturn):IteratorResult<T, TReturn>;
	@:native("throw")
	@:optional
	function throw_(?e:Dynamic):IteratorResult<T, TReturn>;
};