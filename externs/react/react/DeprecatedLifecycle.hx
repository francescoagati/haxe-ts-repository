package react;
typedef DeprecatedLifecycle<P, S> = {
	/**
		Called immediately before mounting occurs, and before `Component#render`.
		Avoid introducing any side-effects or subscriptions in this method.
		
		Note: the presence of getSnapshotBeforeUpdate or getDerivedStateFromProps
		prevents this from being invoked.
	**/
	@:optional
	function componentWillMount():Void;
	/**
		Called immediately before mounting occurs, and before `Component#render`.
		Avoid introducing any side-effects or subscriptions in this method.
		
		This method will not stop working in React 17.
		
		Note: the presence of getSnapshotBeforeUpdate or getDerivedStateFromProps
		prevents this from being invoked.
	**/
	@:optional
	function UNSAFE_componentWillMount():Void;
	/**
		Called when the component may be receiving new props.
		React may call this even if props have not changed, so be sure to compare new and existing
		props if you only want to handle changes.
		
		Calling `Component#setState` generally does not trigger this method.
		
		Note: the presence of getSnapshotBeforeUpdate or getDerivedStateFromProps
		prevents this from being invoked.
	**/
	@:optional
	function componentWillReceiveProps(nextProps:{ }, nextContext:Dynamic):Void;
	/**
		Called when the component may be receiving new props.
		React may call this even if props have not changed, so be sure to compare new and existing
		props if you only want to handle changes.
		
		Calling `Component#setState` generally does not trigger this method.
		
		This method will not stop working in React 17.
		
		Note: the presence of getSnapshotBeforeUpdate or getDerivedStateFromProps
		prevents this from being invoked.
	**/
	@:optional
	function UNSAFE_componentWillReceiveProps(nextProps:{ }, nextContext:Dynamic):Void;
	/**
		Called immediately before rendering when new props or state is received. Not called for the initial render.
		
		Note: You cannot call `Component#setState` here.
		
		Note: the presence of getSnapshotBeforeUpdate or getDerivedStateFromProps
		prevents this from being invoked.
	**/
	@:optional
	function componentWillUpdate(nextProps:{ }, nextState:{ }, nextContext:Dynamic):Void;
	/**
		Called immediately before rendering when new props or state is received. Not called for the initial render.
		
		Note: You cannot call `Component#setState` here.
		
		This method will not stop working in React 17.
		
		Note: the presence of getSnapshotBeforeUpdate or getDerivedStateFromProps
		prevents this from being invoked.
	**/
	@:optional
	function UNSAFE_componentWillUpdate(nextProps:{ }, nextState:{ }, nextContext:Dynamic):Void;
};