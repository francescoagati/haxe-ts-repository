package react;
typedef Requireable<T> = {
	@:selfCall
	function call(props:{ }, propName:String, componentName:String, location:String, propFullName:String):Null<ts.lib.Error>;
	var isRequired : react.Validator<ts.lib.NonNullable<T>>;
};