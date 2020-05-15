package formik;
typedef ErrorMessageProps = {
	var name : String;
	@:optional
	var className : String;
	@:optional
	var component : Dynamic;
	@:optional
	var children : (errorMessage:String) -> Dynamic;
	@:optional
	var render : (errorMessage:String) -> Dynamic;
};