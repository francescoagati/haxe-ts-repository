package react;
typedef NewLifecycle<P, S, SS> = {
	/**
		Runs before React applies the result of `render` to the document, and
		returns an object to be given to componentDidUpdate. Useful for saving
		things such as scroll position before `render` causes changes to it.
		
		Note: the presence of getSnapshotBeforeUpdate prevents any of the deprecated
		lifecycle events from running.
	**/
	@:optional
	function getSnapshotBeforeUpdate(prevProps:{ }, prevState:{ }):Null<SS>;
	/**
		Called immediately after updating occurs. Not called for the initial render.
		
		The snapshot is only present if getSnapshotBeforeUpdate is present and returns non-null.
	**/
	@:optional
	function componentDidUpdate(prevProps:{ }, prevState:{ }, ?snapshot:SS):Void;
};