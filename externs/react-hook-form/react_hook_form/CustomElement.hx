package react_hook_form;
typedef CustomElement<FormValues> = {
	var name : Dynamic;
	@:optional
	var type : String;
	@:optional
	var value : Dynamic;
	@:optional
	var checked : Bool;
	@:optional
	var options : ts.html.HTMLOptionsCollection;
	@:optional
	var files : ts.html.FileList;
	@:optional
	var focus : () -> Void;
};