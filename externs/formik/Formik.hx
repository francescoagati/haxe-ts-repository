@:jsRequire("formik") @valueModuleOnly extern class Formik {
	static function useFormik<Values>(__0:formik.FormikConfig<Values>):{
		var initialValues : Values;
		var initialErrors : { };
		var initialTouched : { };
		var initialStatus : Dynamic;
		var handleBlur : (eventOrString:Dynamic) -> ts.AnyOf2<Void, (e:Dynamic) -> Void>;
		var handleChange : (eventOrPath:Dynamic) -> ts.AnyOf2<Void, (eventOrTextValue:Dynamic) -> Void>;
		var handleReset : (e:Dynamic) -> Void;
		var handleSubmit : ts.AnyOf2<() -> Void, (e:Dynamic) -> Void>;
		var resetForm : ts.AnyOf2<() -> Void, (nextState:{ /** Form values **/ @:optional var values : Values; /** map of field names to specific error for that field **/ @:optional var errors : formik.FormikErrors<Values>; /** map of field names to whether the field has been touched **/ @:optional var touched : formik.FormikTouched<Values>; /** whether the form is currently submitting **/ @:optional var isSubmitting : Bool; /** whether the form is currently validating (prior to submission) **/ @:optional var isValidating : Bool; /** Top level status state, in case you need it **/ @:optional var status : Dynamic; /** Number of times user tried to submit the form **/ @:optional var submitCount : Float; }) -> Void>;
		var setErrors : (errors:{ }) -> Void;
		var setFormikState : (stateOrCb:ts.AnyOf2<formik.FormikState<Values>, (state:formik.FormikState<Values>) -> formik.FormikState<Values>>) -> Void;
		var setFieldTouched : ts.AnyOf3<(field:String) -> Dynamic, (field:String, touched:Bool) -> Dynamic, (field:String, touched:Bool, shouldValidate:Bool) -> Dynamic>;
		var setFieldValue : ts.AnyOf2<(field:String, value:Dynamic) -> Dynamic, (field:String, value:Dynamic, shouldValidate:Bool) -> Dynamic>;
		var setFieldError : (field:String, value:Null<String>) -> Void;
		var setStatus : (status:Dynamic) -> Void;
		var setSubmitting : (isSubmitting:Bool) -> Void;
		var setTouched : ts.AnyOf2<(touched:{ }) -> Dynamic, (touched:{ }, shouldValidate:Bool) -> Dynamic>;
		var setValues : ts.AnyOf2<(values:Values) -> Dynamic, (values:Values, shouldValidate:Bool) -> Dynamic>;
		var submitForm : () -> ts.lib.Promise<Null<Void>>;
		var validateForm : ts.AnyOf2<() -> ts.lib.Promise<{ }>, (values:Values) -> ts.lib.Promise<{ }>>;
		var validateField : (name:String) -> ts.AnyOf2<ts.lib.Promise<Void>, ts.lib.Promise<Null<String>>>;
		var isValid : Bool;
		var dirty : Bool;
		var unregisterField : (name:String) -> Void;
		var registerField : (name:String, __1:Dynamic) -> Void;
		var getFieldProps : (nameOrOptions:Dynamic) -> formik.FieldInputProps<Dynamic>;
		var getFieldMeta : (name:String) -> formik.FieldMetaProps<Dynamic>;
		var getFieldHelpers : (name:String) -> formik.FieldHelperProps<Dynamic>;
		var validateOnBlur : Bool;
		var validateOnChange : Bool;
		var validateOnMount : Bool;
		var values : Values;
		var errors : { };
		var touched : { };
		var isSubmitting : Bool;
		var isValidating : Bool;
		@:optional
		var status : Dynamic;
		var submitCount : Float;
	};
	static function Formik<Values, ExtraProps>(props:Dynamic):Dynamic;
	/**
		Transform Yup ValidationError to a more usable object
	**/
	static function yupToFormErrors<Values>(yupError:Dynamic):{ };
	/**
		Validate a yup schema.
	**/
	static function validateYupSchema<T>(values:T, schema:Dynamic, ?sync:Bool, ?context:Dynamic):ts.lib.Promise<{ }>;
	/**
		Recursively prepare values.
	**/
	static function prepareDataForValidation<T>(values:T):formik.FormikValues;
	static function useField<Val>(propsOrFieldName:Dynamic):ts.Tuple3<formik.FieldInputProps<Val>, formik.FieldMetaProps<Val>, formik.FieldHelperProps<Val>>;
	static function Field(__0:Dynamic):Dynamic;
	static var Form : Dynamic;
	/**
		A public higher-order component to access the imperative API
	**/
	static function withFormik<OuterProps, Values, Payload>(__0:formik.WithFormikConfig<OuterProps, Values, Payload>):formik.ComponentDecorator<OuterProps, Dynamic>;
	/**
		Some array helpers!
	**/
	static var move : (array:Array<Dynamic>, from:Float, to:Float) -> Array<Any>;
	static var swap : (arrayLike:ts.lib.ArrayLike<Dynamic>, indexA:Float, indexB:Float) -> Array<Any>;
	static var insert : (arrayLike:ts.lib.ArrayLike<Dynamic>, index:Float, value:Dynamic) -> Array<Any>;
	static var replace : (arrayLike:ts.lib.ArrayLike<Dynamic>, index:Float, value:Dynamic) -> Array<Any>;
	static var FieldArray : Dynamic;
	/**
		Same as document.activeElement but wraps in a try-catch block. In IE it is
		not safe to call document.activeElement if there is nothing focused.
		
		The activeElement will be null only if the document or document body is not
		yet defined.
	**/
	static function getActiveElement(?doc:ts.html.Document):Null<ts.html.Element>;
	/**
		Deeply get a value from an object via its path.
	**/
	static function getIn(obj:Dynamic, key:ts.AnyOf2<String, Array<String>>, ?def:Dynamic, ?p:Float):Dynamic;
	/**
		Deeply set a value from in object via it's path. If the value at `path`
		has changed, return a shallow copy of obj with `value` set at `path`.
		If `value` has not changed, return the original `obj`.
		
		Existing objects / arrays along `path` are also shallow copied. Sibling
		objects along path retain the same internal js reference. Since new
		objects / arrays are only created along `path`, we can test if anything
		changed in a nested structure by comparing the object's reference in
		the old and new object, similar to how russian doll cache invalidation
		works.
		
		In earlier versions of this function, which used cloneDeep, there were
		issues whereby settings a nested value would mutate the parent
		instead of creating a new object. `clone` avoids that bug making a
		shallow copy of the objects along the update path
		so no object is mutated in place.
		
		Before changing this function, please read through the following
		discussions.
	**/
	static function setIn(obj:Dynamic, path:String, value:Dynamic):Dynamic;
	/**
		Recursively a set the same value for all keys and arrays nested object, cloning
	**/
	static function setNestedObjectValues<T>(object:Dynamic, value:Dynamic, ?visited:Dynamic, ?response:Dynamic):T;
	static var isEmptyArray : ts.AnyOf2<() -> Bool, (value:Dynamic) -> Bool>;
	static var isFunction : (obj:Dynamic) -> Bool;
	static var isObject : (obj:Dynamic) -> Bool;
	static var isInteger : (obj:Dynamic) -> Bool;
	static var isString : (obj:Dynamic) -> Bool;
	static var isNaN : (obj:Dynamic) -> Bool;
	static var isEmptyChildren : (children:Dynamic) -> Bool;
	static var isPromise : (value:Dynamic) -> Bool;
	static var isInputEvent : (value:Dynamic) -> Bool;
	/**
		Connect any component to Formik context, and inject as a prop called `formik`;
	**/
	static function connect<OuterProps, Values>(Comp:Dynamic):Dynamic;
	static var ErrorMessage : Dynamic;
	static function useFormikContext<Values>():formik.FormikContextType<Values>;
	static var FormikContext : Dynamic;
	static var FormikProvider : Dynamic;
	static var FormikConsumer : Dynamic;
	static var FastField : Dynamic;
}