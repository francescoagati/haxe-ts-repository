package react;
typedef Validator<T> = {
	@:selfCall
	function call(props:{ }, propName:String, componentName:String, location:String, propFullName:String):Null<ts.lib.Error>;
};