package react_use;
typedef ListenerType1 = {
	function addEventListener(name:String, handler:ts.AnyOf2<() -> Void, (event:Dynamic) -> Void>, args:haxe.extern.Rest<Dynamic>):Dynamic;
	function removeEventListener(name:String, handler:ts.AnyOf2<() -> Void, (event:Dynamic) -> Void>, args:haxe.extern.Rest<Dynamic>):Dynamic;
};