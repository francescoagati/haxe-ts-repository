package react_use;
typedef CounterActions = {
	var inc : ts.AnyOf2<() -> Void, (delta:Float) -> Void>;
	var dec : ts.AnyOf2<() -> Void, (delta:Float) -> Void>;
	var get : () -> Float;
	var set : (value:react_use.HookState<Float>) -> Void;
	var reset : ts.AnyOf2<() -> Void, (value:ts.AnyOf2<Float, react_use.StateSetter<Float>>) -> Void>;
};