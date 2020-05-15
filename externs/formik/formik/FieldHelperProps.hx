package formik;
/**
	Imperative handles to change a field's value, error and touched
**/
typedef FieldHelperProps<Value> = {
	/**
		Set the field's value
	**/
	function setValue(value:Value):Void;
	/**
		Set the field's touched value
	**/
	function setTouched(value:Bool):Void;
	/**
		Set the field's error value
	**/
	function setError(value:Value):Void;
};