package formik;
/**
	Formik state tree
**/
typedef FormikState<Values> = {
	/**
		Form values
	**/
	var values : Values;
	/**
		map of field names to specific error for that field
	**/
	var errors : { };
	/**
		map of field names to whether the field has been touched
	**/
	var touched : { };
	/**
		whether the form is currently submitting
	**/
	var isSubmitting : Bool;
	/**
		whether the form is currently validating (prior to submission)
	**/
	var isValidating : Bool;
	/**
		Top level status state, in case you need it
	**/
	@:optional
	var status : Dynamic;
	/**
		Number of times user tried to submit the form
	**/
	var submitCount : Float;
};