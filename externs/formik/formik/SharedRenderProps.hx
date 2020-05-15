package formik;
typedef SharedRenderProps<T> = {
	/**
		Field component to render. Can either be a string like 'select' or a component.
	**/
	@:optional
	var component : Dynamic;
	/**
		Render prop (works like React router's <Route render={props =>} />)
	**/
	@:optional
	var render : (props:T) -> Dynamic;
	/**
		Children render function <Field name>{props => ...}</Field>)
	**/
	@:optional
	var children : (props:T) -> Dynamic;
};