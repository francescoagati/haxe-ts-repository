package formik;
/**
	Formik state helpers
**/
typedef FormikHelpers<Values> = {
	/**
		Manually set top level status.
	**/
	function setStatus(?status:Dynamic):Void;
	/**
		Manually set errors object
	**/
	function setErrors(errors:{ }):Void;
	/**
		Manually set isSubmitting
	**/
	function setSubmitting(isSubmitting:Bool):Void;
	/**
		Manually set touched object
	**/
	function setTouched(touched:{ }, ?shouldValidate:Bool):Void;
	/**
		Manually set values object
	**/
	function setValues(values:Values, ?shouldValidate:Bool):Void;
	/**
		Set value of form field directly
	**/
	function setFieldValue(field:String, value:Dynamic, ?shouldValidate:Bool):Void;
	/**
		Set error message of a form field directly
	**/
	function setFieldError(field:String, message:String):Void;
	/**
		Set whether field has been touched directly
	**/
	function setFieldTouched(field:String, ?isTouched:Bool, ?shouldValidate:Bool):Void;
	/**
		Validate form values
	**/
	function validateForm(?values:Dynamic):ts.lib.Promise<{ }>;
	/**
		Validate field value
	**/
	function validateField(field:String):Void;
	/**
		Reset form
	**/
	function resetForm(?nextState:{ /** Form values **/ @:optional var values : Values; /** map of field names to specific error for that field **/ @:optional var errors : FormikErrors<Values>; /** map of field names to whether the field has been touched **/ @:optional var touched : FormikTouched<Values>; /** whether the form is currently submitting **/ @:optional var isSubmitting : Bool; /** whether the form is currently validating (prior to submission) **/ @:optional var isValidating : Bool; /** Top level status state, in case you need it **/ @:optional var status : Dynamic; /** Number of times user tried to submit the form **/ @:optional var submitCount : Float; }):Void;
	/**
		Submit the form imperatively
	**/
	function submitForm():ts.lib.Promise<Void>;
	/**
		Set Formik state, careful!
	**/
	function setFormikState(f:ts.AnyOf2<FormikState<Values>, (prevState:FormikState<Values>) -> FormikState<Values>>, ?cb:() -> Void):Void;
};