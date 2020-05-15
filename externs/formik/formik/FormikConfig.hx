package formik;
/**
	<Formik /> props
**/
typedef FormikConfig<Values> = {
	/**
		Form component to render
	**/
	@:optional
	var component : Dynamic;
	/**
		Render prop (works like React router's <Route render={props =>} />)
	**/
	@:optional
	var render : (props:FormikProps<Values>) -> Dynamic;
	/**
		React children or child render callback
	**/
	@:optional
	var children : Dynamic;
	/**
		Initial values of the form
	**/
	var initialValues : Values;
	/**
		Initial status
	**/
	@:optional
	var initialStatus : Dynamic;
	/**
		Initial object map of field names to specific error for that field
	**/
	@:optional
	var initialErrors : { };
	/**
		Initial object map of field names to whether the field has been touched
	**/
	@:optional
	var initialTouched : { };
	/**
		Reset handler
	**/
	@:optional
	var onReset : (values:Values, formikHelpers:FormikHelpers<Values>) -> Void;
	/**
		Submission handler
	**/
	var onSubmit : (values:Values, formikHelpers:FormikHelpers<Values>) -> ts.AnyOf2<Void, ts.lib.Promise<Dynamic>>;
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
	var validate : (values:Values) -> Dynamic;
	/**
		Inner ref
	**/
	@:optional
	var innerRef : (instance:Dynamic) -> Void;
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
	var isInitialValid : ts.AnyOf2<Bool, (props:{ }) -> Bool>;
	/**
		Should Formik reset the form when new initialValues change
	**/
	@:optional
	var enableReinitialize : Bool;
};