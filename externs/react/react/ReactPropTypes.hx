package react;
typedef ReactPropTypes = {
	var any : Requireable<Dynamic>;
	var array : Requireable<Array<Dynamic>>;
	var bool : Requireable<Bool>;
	var func : Requireable<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	var number : Requireable<Float>;
	var object : Requireable<Dynamic>;
	var string : Requireable<String>;
	var node : Requireable<ReactNodeLike>;
	var element : Requireable<ReactElementLike>;
	var instanceOf : (expectedClass:{ }) -> Requireable<Any>;
	var oneOf : (types:ts.lib.ReadonlyArray<Any>) -> Requireable<Any>;
	var oneOfType : (types:Array<Any>) -> Requireable<ts.lib.NonNullable<InferType<Any>>>;
	var arrayOf : (type:Validator<Any>) -> Requireable<Array<Any>>;
	var objectOf : (type:Validator<Any>) -> Requireable<Dynamic>;
	var shape : (type:Any) -> Requireable<InferProps<Any>>;
	var exact : (type:Any) -> Requireable<{ }>;
};