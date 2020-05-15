package global.jsx;
typedef ElementClass = {
	function render():react.ReactNode;
	/**
		If using the new style context, re-declare this in your class to be the
		`React.ContextType` of your `static contextType`.
		Should be used with type annotation or static contextType.
		
		```ts
		static contextType = MyContext
		// For TS pre-3.7:
		context!: React.ContextType<typeof MyContext>
		// For TS 3.7 and above:
		declare context: React.ContextType<typeof MyContext>
		```
	**/
	var context : Dynamic;
	function setState<K>(state:Null<ts.AnyOf2<{ }, (prevState:{ }, props:{ }) -> Null<{ }>>>, ?callback:() -> Void):Void;
	function forceUpdate(?callback:() -> Void):Void;
	final props : Dynamic;
	var state : { };
	var refs : { };
	/**
		Called immediately after a component is mounted. Setting state here will trigger re-rendering.
	**/
	@:optional
	function componentDidMount():Void;
	/**
		Called to determine whether the change in props and state should trigger a re-render.
		
		`Component` always returns true.
		`PureComponent` implements a shallow comparison on props and state and returns true if any
		props or states have changed.
		
		If false is returned, `Component#render`, `componentWillUpdate`
		and `componentDidUpdate` will not be called.
	**/
	@:optional
	function shouldComponentUpdate(nextProps:{ }, nextState:{ }, nextContext:Dynamic):Bool;
	/**
		Called immediately before a component is destroyed. Perform any necessary cleanup in this method, such as
		cancelled network requests, or cleaning up any DOM elements created in `componentDidMount`.
	**/
	@:optional
	function componentWillUnmount():Void;
	/**
		Catches exceptions generated in descendant components. Unhandled exceptions will cause
		the entire component tree to unmount.
	**/
	@:optional
	function componentDidCatch(error:ts.lib.Error, errorInfo:react.ErrorInfo):Void;
	/**
		Runs before React applies the result of `render` to the document, and
		returns an object to be given to componentDidUpdate. Useful for saving
		things such as scroll position before `render` causes changes to it.
		
		Note: the presence of getSnapshotBeforeUpdate prevents any of the deprecated
		lifecycle events from running.
	**/
	@:optional
	function getSnapshotBeforeUpdate(prevProps:{ }, prevState:{ }):Dynamic;
	/**
		Called immediately after updating occurs. Not called for the initial render.
		
		The snapshot is only present if getSnapshotBeforeUpdate is present and returns non-null.
	**/
	@:optional
	function componentDidUpdate(prevProps:{ }, prevState:{ }, ?snapshot:Dynamic):Void;
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