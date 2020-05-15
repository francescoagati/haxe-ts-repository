package chakra_ui.react;
typedef RefAttributes<T> = {
	@:optional
	var ref : ts.AnyOf2<(instance:Null<T>) -> Void, chakra_ui.react.RefObject<T>>;
	@:optional
	var key : ts.AnyOf2<String, Float>;
};