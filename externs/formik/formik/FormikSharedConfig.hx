package formik;
/**
	Base formik configuration/props shared between the HoC and Component.
**/
typedef FormikSharedConfig<Props> = {
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