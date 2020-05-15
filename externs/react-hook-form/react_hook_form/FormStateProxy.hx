package react_hook_form;
typedef FormStateProxy<FormValues> = {
	var dirty : Bool;
	var dirtyFields : ts.lib.Set<FieldName<FormValues>>;
	var isSubmitted : Bool;
	var submitCount : Float;
	var touched : { };
	var isSubmitting : Bool;
	var isValid : Bool;
};