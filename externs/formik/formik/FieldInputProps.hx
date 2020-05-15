package formik;
/**
	Field input value, name, and event handlers
**/
typedef FieldInputProps<Value> = {
	/**
		Value of the field
	**/
	var value : Value;
	/**
		Name of the field
	**/
	var name : String;
	/**
		Multiple select?
	**/
	@:optional
	var multiple : Bool;
	/**
		Is the field checked?
	**/
	@:optional
	var checked : Bool;
	/**
		Change event handler
	**/
	var onChange : {
		/**
			Classic React change handler, keyed by input name
		**/
		@:overload(function<T>(field:T):Dynamic { })
		@:selfCall
		function call(e:Dynamic):Void;
	};
	/**
		Blur event handler
	**/
	var onBlur : {
		/**
			Classic React blur handler, keyed by input name
		**/
		@:overload(function<T>(fieldOrEvent:T):Dynamic { })
		@:selfCall
		function call(e:Dynamic):Void;
	};
};