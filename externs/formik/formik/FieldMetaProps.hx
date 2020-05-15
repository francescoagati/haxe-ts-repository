package formik;
/**
	Field metadata
**/
typedef FieldMetaProps<Value> = {
	/**
		Value of the field
	**/
	var value : Value;
	/**
		Error message of the field
	**/
	@:optional
	var error : String;
	/**
		Has the field been visited?
	**/
	var touched : Bool;
	/**
		Initial value of the field
	**/
	@:optional
	var initialValue : Value;
	/**
		Initial touched state of the field
	**/
	var initialTouched : Bool;
	/**
		Initial error message of the field
	**/
	@:optional
	var initialError : String;
};