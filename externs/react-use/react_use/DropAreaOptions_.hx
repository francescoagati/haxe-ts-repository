package react_use;
typedef DropAreaOptions_ = {
	@:optional
	var onFiles : ts.AnyOf2<(files:Array<ts.html.File>) -> Void, (files:Array<ts.html.File>, event:Dynamic) -> Void>;
	@:optional
	var onText : ts.AnyOf2<(text:String) -> Void, (text:String, event:Dynamic) -> Void>;
	@:optional
	var onUri : ts.AnyOf2<(url:String) -> Void, (url:String, event:Dynamic) -> Void>;
};