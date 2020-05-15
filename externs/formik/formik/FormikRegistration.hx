package formik;
/**
	Internal Formik registration methods that get passed down as props
**/
typedef FormikRegistration = {
	function registerField(name:String, fns:{ @:optional var validate : FieldValidator; }):Void;
	function unregisterField(name:String):Void;
};