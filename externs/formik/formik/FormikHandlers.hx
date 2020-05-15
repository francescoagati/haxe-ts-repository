package formik;
/**
	Formik form event handlers
**/
typedef FormikHandlers = {
	/**
		Form submit handler
	**/
	var handleSubmit : ts.AnyOf2<() -> Void, (e:Dynamic) -> Void>;
	/**
		Reset form event handler
	**/
	var handleReset : ts.AnyOf2<() -> Void, (e:Dynamic) -> Void>;
	/**
		Classic React blur handler, keyed by input name
		
		Preact-like linkState. Will return a handleBlur function.
	**/
	@:overload(function<T>(fieldOrEvent:T):Dynamic { })
	function handleBlur(e:Dynamic):Void;
	/**
		Classic React change handler, keyed by input name
		
		Preact-like linkState. Will return a handleChange function.
	**/
	@:overload(function<T>(field:T):Dynamic { })
	function handleChange(e:Dynamic):Void;
	function getFieldProps<Value>(props:Dynamic):FieldInputProps<Value>;
	function getFieldMeta<Value>(name:String):FieldMetaProps<Value>;
	function getFieldHelpers<Value>(name:String):FieldHelperProps<Value>;
};