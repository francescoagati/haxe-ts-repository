package constate.react;
typedef ReactPortal = {
	var key : Null<ts.AnyOf2<String, Float>>;
	var children : constate.react.ReactNode;
	var type : ts.AnyOf3<String, (props:Dynamic) -> Null<constate.react.ReactElement<Dynamic, Dynamic>>, { }>;
	var props : Dynamic;
};