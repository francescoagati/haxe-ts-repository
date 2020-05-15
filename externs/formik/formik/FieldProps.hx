package formik;
typedef FieldProps<V, FormValues> = {
	var field : FieldInputProps<V>;
	var form : FormikProps<FormValues>;
	var meta : FieldMetaProps<V>;
};