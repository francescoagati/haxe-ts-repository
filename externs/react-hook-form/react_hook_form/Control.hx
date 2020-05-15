package react_hook_form;
typedef Control<FormValues> = {
	var reRender : () -> Void;
	var removeFieldEventListener : ts.AnyOf2<(field:Field) -> Void, (field:Field, forceDelete:Bool) -> Void>;
	@:overload(function<T, U>(name:T, value:Dynamic, ?shouldValidate:Bool):Void { })
	function setValue<T>(namesWithValue:Array<{ }>, ?shouldValidate:Bool):Void;
	@:overload(function(payload:{ var nest : Bool; }):FormValues { })
	@:overload(function(payload:{ var nest : Bool; }):Dynamic { })
	@:overload(function<T, U>(payload:T):Dynamic { })
	function getValues():Dynamic;
	function triggerValidation(?payload:ts.AnyOf2<Dynamic, Array<Dynamic>>):ts.lib.Promise<Bool>;
	@:overload(function<Element>(validationOptions:{ @:optional var required : ts.AnyOf4<String, Bool, ValidationValueMessage<Bool>, react_hook_form.react.ReactElement<Dynamic, ts.AnyOf3<String, (props:Dynamic) -> Null<react_hook_form.react.ReactElement<Dynamic, Dynamic>>, { }>>>; @:optional var min : ts.AnyOf3<String, Float, ValidationValueMessage<ts.AnyOf2<String, Float>>>; @:optional var max : ts.AnyOf3<String, Float, ValidationValueMessage<ts.AnyOf2<String, Float>>>; @:optional var maxLength : ts.AnyOf3<String, Float, ValidationValueMessage<ts.AnyOf2<String, Float>>>; @:optional var minLength : ts.AnyOf3<String, Float, ValidationValueMessage<ts.AnyOf2<String, Float>>>; @:optional var pattern : ts.AnyOf2<ts.lib.RegExp, ValidationValueMessage<ts.lib.RegExp>>; @:optional var validate : ts.AnyOf2<Validate, ts.lib.Record<String, Validate>>; }):(ref:Null<Element>) -> Void { })
	@:overload(function(name:Dynamic, ?validationOptions:{ @:optional var required : ts.AnyOf4<String, Bool, ValidationValueMessage<Bool>, react_hook_form.react.ReactElement<Dynamic, ts.AnyOf3<String, (props:Dynamic) -> Null<react_hook_form.react.ReactElement<Dynamic, Dynamic>>, { }>>>; @:optional var min : ts.AnyOf3<String, Float, ValidationValueMessage<ts.AnyOf2<String, Float>>>; @:optional var max : ts.AnyOf3<String, Float, ValidationValueMessage<ts.AnyOf2<String, Float>>>; @:optional var maxLength : ts.AnyOf3<String, Float, ValidationValueMessage<ts.AnyOf2<String, Float>>>; @:optional var minLength : ts.AnyOf3<String, Float, ValidationValueMessage<ts.AnyOf2<String, Float>>>; @:optional var pattern : ts.AnyOf2<ts.lib.RegExp, ValidationValueMessage<ts.lib.RegExp>>; @:optional var validate : ts.AnyOf2<Validate, ts.lib.Record<String, Validate>>; }):Void { })
	@:overload(function<Element>(ref:Element, ?validationOptions:{ @:optional var required : ts.AnyOf4<String, Bool, ValidationValueMessage<Bool>, react_hook_form.react.ReactElement<Dynamic, ts.AnyOf3<String, (props:Dynamic) -> Null<react_hook_form.react.ReactElement<Dynamic, Dynamic>>, { }>>>; @:optional var min : ts.AnyOf3<String, Float, ValidationValueMessage<ts.AnyOf2<String, Float>>>; @:optional var max : ts.AnyOf3<String, Float, ValidationValueMessage<ts.AnyOf2<String, Float>>>; @:optional var maxLength : ts.AnyOf3<String, Float, ValidationValueMessage<ts.AnyOf2<String, Float>>>; @:optional var minLength : ts.AnyOf3<String, Float, ValidationValueMessage<ts.AnyOf2<String, Float>>>; @:optional var pattern : ts.AnyOf2<ts.lib.RegExp, ValidationValueMessage<ts.lib.RegExp>>; @:optional var validate : ts.AnyOf2<Validate, ts.lib.Record<String, Validate>>; }):Void { })
	function register<Element>():(ref:Null<Element>) -> Void;
	function unregister(name:Dynamic):Void;
	var formState : FormStateProxy<FormValues>;
	var mode : {
		var isOnBlur : Bool;
		var isOnSubmit : Bool;
		var isOnChange : Bool;
	};
	var reValidateMode : {
		var isReValidateOnBlur : Bool;
		var isReValidateOnSubmit : Bool;
	};
	var fieldArrayDefaultValues : react_hook_form.react.MutableRefObject<{ }>;
	var dirtyFieldsRef : react_hook_form.react.MutableRefObject<ts.lib.Set<FieldName<FormValues>>>;
	@:optional
	var validateSchemaIsValid : (fieldsValues:Dynamic) -> Void;
	var touchedFieldsRef : react_hook_form.react.MutableRefObject<{ }>;
	var watchFieldsRef : react_hook_form.react.MutableRefObject<ts.lib.Set<FieldName<FormValues>>>;
	var isWatchAllRef : react_hook_form.react.MutableRefObject<Bool>;
	var validFieldsRef : react_hook_form.react.MutableRefObject<ts.lib.Set<FieldName<FormValues>>>;
	var fieldsWithValidationRef : react_hook_form.react.MutableRefObject<ts.lib.Set<FieldName<FormValues>>>;
	var errorsRef : react_hook_form.react.MutableRefObject<{ }>;
	var fieldsRef : react_hook_form.react.MutableRefObject<{ }>;
	var resetFieldArrayFunctionRef : react_hook_form.react.MutableRefObject<{ }>;
	var fieldArrayNamesRef : react_hook_form.react.MutableRefObject<ts.lib.Set<String>>;
	var isDirtyRef : react_hook_form.react.MutableRefObject<Bool>;
	var readFormStateRef : react_hook_form.react.MutableRefObject<{
		var dirty : Bool;
		var isSubmitted : Bool;
		var submitCount : Bool;
		var touched : Bool;
		var isSubmitting : Bool;
		var isValid : Bool;
		var dirtyFields : Bool;
	}>;
	var defaultValuesRef : react_hook_form.react.MutableRefObject<Dynamic>;
};