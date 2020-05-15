package react_use;
typedef ListenerType2 = {
	function on(name:String, handler:ts.AnyOf2<() -> Void, (event:Dynamic) -> Void>, args:haxe.extern.Rest<Dynamic>):Dynamic;
	function off(name:String, handler:ts.AnyOf2<() -> Void, (event:Dynamic) -> Void>, args:haxe.extern.Rest<Dynamic>):Dynamic;
};