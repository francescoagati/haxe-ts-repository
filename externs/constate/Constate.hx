@:jsRequire("constate") @valueModuleOnly extern class Constate {
	@:native("default")
	static function default_<P, V, S>(useValue:(props:P) -> V, splitValues:haxe.extern.Rest<Any>):constate.ContextHookReturn<P, V, S>;
}