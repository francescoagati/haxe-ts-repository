package react;
typedef ReactChildren = {
	function map<T, C>(children:ts.AnyOf2<C, Array<C>>, fn:(child:C, index:Float) -> T):Dynamic;
	function forEach<C>(children:ts.AnyOf2<C, Array<C>>, fn:(child:C, index:Float) -> Void):Void;
	function count(children:Dynamic):Float;
	function only<C>(children:C):Dynamic;
	function toArray(children:Null<ts.AnyOf8<String, Float, Bool, { }, ReactElement<Dynamic, ts.AnyOf3<String, (props:Dynamic) -> Null<ReactElement<Dynamic, Dynamic>>, { }>>, ReactNodeArray_, ReactPortal, Array<ReactNode>>>):Array<ts.AnyOf6<String, Float, { }, ReactElement<Dynamic, ts.AnyOf3<String, (props:Dynamic) -> Null<ReactElement<Dynamic, Dynamic>>, { }>>, ReactNodeArray_, ReactPortal>>;
};