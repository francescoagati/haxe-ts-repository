package react_use;
typedef StateMediator<S> = {
	@:overload(function(newState:Dynamic, dispatch:react.Dispatch<react.SetStateAction<S>>):Void { })
	@:selfCall
	function call(newState:Dynamic):S;
};