package formik;
typedef FastFieldConfig<T> = FieldConfig<Dynamic> & {
	/**
		Override FastField's default shouldComponentUpdate
	**/
	@:optional
	var shouldUpdate : (nextProps:Dynamic, props:{ }) -> Bool;
};