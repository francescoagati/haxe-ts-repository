package react_hook_form;
typedef ManualFieldError<FormValues> = {
	var name : Dynamic;
	var type : String;
	@:optional
	var types : { };
	@:optional
	var message : ts.AnyOf2<String, react_hook_form.react.ReactElement<Dynamic, ts.AnyOf3<String, (props:Dynamic) -> Null<react_hook_form.react.ReactElement<Dynamic, Dynamic>>, { }>>>;
};