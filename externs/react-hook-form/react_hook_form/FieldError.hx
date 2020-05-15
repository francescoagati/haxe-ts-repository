package react_hook_form;
typedef FieldError = {
	var type : String;
	@:optional
	var ref : ts.AnyOf4<ts.html.HTMLInputElement, ts.html.HTMLSelectElement, ts.html.HTMLTextAreaElement, CustomElement<{ }>>;
	@:optional
	var types : { };
	@:optional
	var message : ts.AnyOf2<String, react_hook_form.react.ReactElement<Dynamic, ts.AnyOf3<String, (props:Dynamic) -> Null<react_hook_form.react.ReactElement<Dynamic, Dynamic>>, { }>>>;
	@:optional
	var isManual : Bool;
};