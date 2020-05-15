package react_use;
typedef StateValidator<V, S> = {
	@:overload(function(state:S, dispatch:react.Dispatch<react.SetStateAction<V>>):Void { })
	@:selfCall
	function call(state:S):V;
};