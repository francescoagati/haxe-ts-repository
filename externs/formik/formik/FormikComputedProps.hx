package formik;
/**
	Formik computed properties. These are read-only.
**/
typedef FormikComputedProps<Values> = {
	/**
		True if any input has been touched. False otherwise.
	**/
	final dirty : Bool;
	/**
		True if state.errors is empty
	**/
	final isValid : Bool;
	/**
		The initial values of the form
	**/
	final initialValues : Values;
	/**
		The initial errors of the form
	**/
	final initialErrors : { };
	/**
		The initial visited fields of the form
	**/
	final initialTouched : { };
	/**
		The initial status of the form
	**/
	@:optional
	final initialStatus : Dynamic;
};