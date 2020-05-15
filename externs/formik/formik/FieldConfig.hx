package formik;
typedef FieldConfig<V> = {
	/**
		Field component to render. Can either be a string like 'select' or a component.
	**/
	@:optional
	var component : Dynamic;
	/**
		Component to render. Can either be a string e.g. 'select', 'input', or 'textarea', or a component.
	**/
	@:optional
	var as : Dynamic;
	/**
		Render prop (works like React router's <Route render={props =>} />)
	**/
	@:optional
	var render : (props:FieldProps<V, Dynamic>) -> Dynamic;
	/**
		Children render function <Field name>{props => ...}</Field>)
	**/
	@:optional
	var children : Dynamic;
	/**
		Validate a single field value independently
	**/
	@:optional
	var validate : FieldValidator;
	/**
		Field name
	**/
	var name : String;
	/**
		HTML input type
	**/
	@:optional
	var type : String;
	/**
		Field value
	**/
	@:optional
	var value : Dynamic;
	/**
		Inner ref
	**/
	@:optional
	var innerRef : (instance:Dynamic) -> Void;
};