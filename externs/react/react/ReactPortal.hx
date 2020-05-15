package react;
typedef ReactPortal = {
	var key : Null<ts.AnyOf2<String, Float>>;
	var children : ReactNode;
	var type : ts.AnyOf3<String, (props:Dynamic) -> Null<ReactElement<Dynamic, Dynamic>>, { }>;
	var props : Dynamic;
};