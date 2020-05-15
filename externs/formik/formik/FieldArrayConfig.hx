package formik;
typedef FieldArrayConfig = {
	/**
		Really the path to the array field to be updated
	**/
	var name : String;
	/**
		Should field array validate the form AFTER array updates/changes?
	**/
	@:optional
	var validateOnChange : Bool;
} & SharedRenderProps<FieldArrayRenderProps>;