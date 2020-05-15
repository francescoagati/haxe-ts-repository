package react_hook_form;
typedef FormContextValues<FormValues> = {
	@:overload(function<Element>(validationOptions:{ @:optional var required : ts.AnyOf4<String, Bool, ValidationValueMessage<Bool>, react_hook_form.react.ReactElement<Dynamic, ts.AnyOf3<String, (props:Dynamic) -> Null<react_hook_form.react.ReactElement<Dynamic, Dynamic>>, { }>>>; @:optional var min : ts.AnyOf3<String, Float, ValidationValueMessage<ts.AnyOf2<String, Float>>>; @:optional var max : ts.AnyOf3<String, Float, ValidationValueMessage<ts.AnyOf2<String, Float>>>; @:optional var maxLength : ts.AnyOf3<String, Float, ValidationValueMessage<ts.AnyOf2<String, Float>>>; @:optional var minLength : ts.AnyOf3<String, Float, ValidationValueMessage<ts.AnyOf2<String, Float>>>; @:optional var pattern : ts.AnyOf2<ts.lib.RegExp, ValidationValueMessage<ts.lib.RegExp>>; @:optional var validate : ts.AnyOf2<Validate, ts.lib.Record<String, Validate>>; }):(ref:Null<Element>) -> Void { })
	@:overload(function(name:Dynamic, ?validationOptions:{ @:optional var required : ts.AnyOf4<String, Bool, ValidationValueMessage<Bool>, react_hook_form.react.ReactElement<Dynamic, ts.AnyOf3<String, (props:Dynamic) -> Null<react_hook_form.react.ReactElement<Dynamic, Dynamic>>, { }>>>; @:optional var min : ts.AnyOf3<String, Float, ValidationValueMessage<ts.AnyOf2<String, Float>>>; @:optional var max : ts.AnyOf3<String, Float, ValidationValueMessage<ts.AnyOf2<String, Float>>>; @:optional var maxLength : ts.AnyOf3<String, Float, ValidationValueMessage<ts.AnyOf2<String, Float>>>; @:optional var minLength : ts.AnyOf3<String, Float, ValidationValueMessage<ts.AnyOf2<String, Float>>>; @:optional var pattern : ts.AnyOf2<ts.lib.RegExp, ValidationValueMessage<ts.lib.RegExp>>; @:optional var validate : ts.AnyOf2<Validate, ts.lib.Record<String, Validate>>; }):Void { })
	@:overload(function<Element>(ref:Element, ?validationOptions:{ @:optional var required : ts.AnyOf4<String, Bool, ValidationValueMessage<Bool>, react_hook_form.react.ReactElement<Dynamic, ts.AnyOf3<String, (props:Dynamic) -> Null<react_hook_form.react.ReactElement<Dynamic, Dynamic>>, { }>>>; @:optional var min : ts.AnyOf3<String, Float, ValidationValueMessage<ts.AnyOf2<String, Float>>>; @:optional var max : ts.AnyOf3<String, Float, ValidationValueMessage<ts.AnyOf2<String, Float>>>; @:optional var maxLength : ts.AnyOf3<String, Float, ValidationValueMessage<ts.AnyOf2<String, Float>>>; @:optional var minLength : ts.AnyOf3<String, Float, ValidationValueMessage<ts.AnyOf2<String, Float>>>; @:optional var pattern : ts.AnyOf2<ts.lib.RegExp, ValidationValueMessage<ts.lib.RegExp>>; @:optional var validate : ts.AnyOf2<Validate, ts.lib.Record<String, Validate>>; }):Void { })
	function register<Element>():(ref:Null<Element>) -> Void;
	function unregister(name:Dynamic):Void;
	@:overload(function(option:{ var nest : Bool; }):FormValues { })
	@:overload(function<T, U>(field:T, ?defaultValue:Dynamic):Dynamic { })
	@:overload(function<T>(fields:Array<T>, ?defaultValues:{ }):{ } { })
	@:overload(function(fields:Array<String>, ?defaultValues:{ }):{ } { })
	function watch():FormValues;
	@:overload(function(name:Dynamic, type:String, ?message:ts.AnyOf2<String, react_hook_form.react.ReactElement<Dynamic, ts.AnyOf3<String, (props:Dynamic) -> Null<react_hook_form.react.ReactElement<Dynamic, Dynamic>>, { }>>>):Void { })
	@:overload(function(name:Array<ManualFieldError<FormValues>>):Void { })
	function setError(name:Dynamic, type:{ }):Void;
	function clearError(?name:ts.AnyOf2<Dynamic, Array<Dynamic>>):Void;
	@:overload(function<T>(namesWithValue:Array<{ }>, ?shouldValidate:Bool):Void { })
	function setValue<T, U>(name:T, value:Dynamic, ?shouldValidate:Bool):Void;
	function triggerValidation(?payload:ts.AnyOf2<Dynamic, Array<Dynamic>>):ts.lib.Promise<Bool>;
	var errors : { };
	var formState : FormStateProxy<FormValues>;
	var reset : ts.AnyOf3<() -> Void, (values:{ }) -> Void, (values:{ }, omitResetState:{ @:optional var errors : Bool; @:optional var dirty : Bool; @:optional var dirtyFields : Bool; @:optional var isSubmitted : Bool; @:optional var touched : Bool; @:optional var isValid : Bool; @:optional var submitCount : Bool; }) -> Void>;
	@:overload(function(payload:{ var nest : Bool; }):FormValues { })
	@:overload(function(payload:{ var nest : Bool; }):Dynamic { })
	@:overload(function<T, U>(payload:T):Dynamic { })
	function getValues():Dynamic;
	var handleSubmit : (callback:OnSubmit<FormValues>) -> ts.AnyOf2<() -> ts.lib.Promise<Void>, (e:react_hook_form.react.BaseSyntheticEvent<Dynamic, Dynamic, Dynamic>) -> ts.lib.Promise<Void>>;
	var control : Control<FormValues>;
};