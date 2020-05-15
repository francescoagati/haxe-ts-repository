package formik;
/**
	withFormik() configuration options. Backwards compatible.
**/
typedef WithFormikConfig<Props, Values, DeprecatedPayload> = {
	/**
		Set the display name of the component. Useful for React DevTools.
	**/
	@:optional
	var displayName : String;
	/**
		Submission handler
	**/
	var handleSubmit : (values:Values, formikBag:FormikBag<Props, Values>) -> Void;
	/**
		Map props to the form values
	**/
	@:optional
	var mapPropsToValues : (props:Props) -> Values;
	/**
		Map props to the form values
	**/
	@:optional
	var mapPropsToStatus : (props:Props) -> Dynamic;
	/**
		Map props to the form touched state
	**/
	@:optional
	var mapPropsToTouched : (props:Props) -> { };
	/**
		Map props to the form errors state
	**/
	@:optional
	var mapPropsToErrors : (props:Props) -> { };
	@:optional
	var mapValuesToPayload : (values:Values) -> DeprecatedPayload;
	/**
		A Yup Schema or a function that returns a Yup schema
	**/
	@:optional
	var validationSchema : Dynamic;
	/**
		Validation function. Must return an error object or promise that
		throws an error object where that object keys map to corresponding value.
	**/
	@:optional
	var validate : (values:Values, props:Props) -> Dynamic;
	/**
		Tells Formik to validate the form on each input's onChange event
	**/
	@:optional
	var validateOnChange : Bool;
	/**
		Tells Formik to validate the form on each input's onBlur event
	**/
	@:optional
	var validateOnBlur : Bool;
	/**
		Tells Formik to validate upon mount
	**/
	@:optional
	var validateOnMount : Bool;
	/**
		Tell Formik if initial form values are valid or not on first render
	**/
	@:optional
	var isInitialValid : ts.AnyOf2<Bool, (props:Props) -> Bool>;
	/**
		Should Formik reset the form when new initialValues change
	**/
	@:optional
	var enableReinitialize : Bool;
};