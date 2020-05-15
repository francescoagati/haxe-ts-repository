@:jsRequire("react") @valueModuleOnly extern class React {
	@:overload(function(type:String):react.SVGFactory { })
	@:overload(function<P, T>(type:String):react.DOMFactory<P, T> { })
	@:overload(function<P>(type:react.FunctionComponent<P>):react.FunctionComponentFactory<P> { })
	@:overload(function<P>(type:react.ClassType<P, react.ClassicComponent<P, Dynamic>, react.ClassicComponentClass<P>>):react.ComponentFactory<P, react.ClassicComponent<P, Dynamic>> { })
	@:overload(function<P, T, C>(type:react.ClassType<P, T, C>):react.ComponentFactory<P, T> { })
	@:overload(function<P>(type:react.ComponentClass<P, Dynamic>):react.Factory<P> { })
	static function createFactory<T>(type:String):react.HTMLFactory<T>;
	@:overload(function<P, T>(type:String, ?props:Dynamic, children:haxe.extern.Rest<react.ReactNode>):react.DetailedReactHTMLElement<P, T> { })
	@:overload(function<P, T>(type:String, ?props:Dynamic, children:haxe.extern.Rest<react.ReactNode>):react.ReactSVGElement { })
	@:overload(function<P, T>(type:String, ?props:Dynamic, children:haxe.extern.Rest<react.ReactNode>):react.DOMElement<P, T> { })
	@:overload(function<P>(type:react.FunctionComponent<P>, ?props:Dynamic, children:haxe.extern.Rest<react.ReactNode>):react.FunctionComponentElement<P> { })
	@:overload(function<P>(type:react.ClassType<P, react.ClassicComponent<P, Dynamic>, react.ClassicComponentClass<P>>, ?props:Dynamic, children:haxe.extern.Rest<react.ReactNode>):react.CElement<P, react.ClassicComponent<P, Dynamic>> { })
	@:overload(function<P, T, C>(type:react.ClassType<P, T, C>, ?props:Dynamic, children:haxe.extern.Rest<react.ReactNode>):react.CElement<P, T> { })
	@:overload(function<P>(type:ts.AnyOf3<String, react.FunctionComponent<P>, react.ComponentClass<P, Dynamic>>, ?props:Dynamic, children:haxe.extern.Rest<react.ReactNode>):react.ReactElement<P, ts.AnyOf3<String, (props:Dynamic) -> Null<react.ReactElement<Dynamic, Dynamic>>, { }>> { })
	static function createElement(type:String, ?props:react.InputHTMLAttributes<ts.html.HTMLInputElement> & react.ClassAttributes<ts.html.HTMLInputElement>, children:haxe.extern.Rest<react.ReactNode>):react.DetailedReactHTMLElement<react.InputHTMLAttributes<ts.html.HTMLInputElement>, ts.html.HTMLInputElement>;
	@:overload(function<P, T>(element:react.ReactHTMLElement<T>, ?props:P, children:haxe.extern.Rest<react.ReactNode>):react.ReactHTMLElement<T> { })
	@:overload(function<P, T>(element:react.ReactSVGElement, ?props:P, children:haxe.extern.Rest<react.ReactNode>):react.ReactSVGElement { })
	@:overload(function<P, T>(element:react.DOMElement<P, T>, ?props:Dynamic, children:haxe.extern.Rest<react.ReactNode>):react.DOMElement<P, T> { })
	@:overload(function<P>(element:react.FunctionComponentElement<P>, ?props:Dynamic, children:haxe.extern.Rest<react.ReactNode>):react.FunctionComponentElement<P> { })
	@:overload(function<P, T>(element:react.CElement<P, T>, ?props:Dynamic, children:haxe.extern.Rest<react.ReactNode>):react.CElement<P, T> { })
	@:overload(function<P>(element:react.ReactElement<P, ts.AnyOf3<String, (props:Dynamic) -> Null<react.ReactElement<Dynamic, Dynamic>>, { }>>, ?props:Dynamic, children:haxe.extern.Rest<react.ReactNode>):react.ReactElement<P, ts.AnyOf3<String, (props:Dynamic) -> Null<react.ReactElement<Dynamic, Dynamic>>, { }>> { })
	static function cloneElement<P, T>(element:react.DetailedReactHTMLElement<P, T>, ?props:P, children:haxe.extern.Rest<react.ReactNode>):react.DetailedReactHTMLElement<P, T>;
	static function createContext<T>(defaultValue:T, ?calculateChangedBits:(prev:T, next:T) -> Float):react.Context<T>;
	static function isValidElement<P>(object:Null<{ }>):Bool;
	static function createRef<T>():react.RefObject<T>;
	static function forwardRef<T, P>(render:react.ForwardRefRenderFunction<T, P>):react.ForwardRefExoticComponent<Dynamic>;
	@:overload(function<T>(Component:T, ?propsAreEqual:(prevProps:{ }, nextProps:{ }) -> Bool):react.MemoExoticComponent<T> { })
	static function memo<P>(Component:react.SFC<P>, ?propsAreEqual:(prevProps:{ @:optional var children : Dynamic; }, nextProps:{ @:optional var children : Dynamic; }) -> Bool):react.NamedExoticComponent<P>;
	static function lazy<T>(factory:() -> ts.lib.Promise<{ @:native("default") var default_ : T; }>):react.LazyExoticComponent<T>;
	/**
		Accepts a context object (the value returned from `React.createContext`) and returns the current
		context value, as given by the nearest context provider for the given context.
	**/
	static function useContext<T>(context:react.Context<T>):T;
	/**
		Returns a stateful value, and a function to update it.
		
		Returns a stateful value, and a function to update it.
	**/
	@:overload(function<S>():ts.Tuple2<Null<S>, react.Dispatch<react.SetStateAction<Null<S>>>> { })
	static function useState<S>(initialState:ts.AnyOf2<S, () -> S>):ts.Tuple2<S, react.Dispatch<react.SetStateAction<S>>>;
	/**
		An alternative to `useState`.
		
		`useReducer` is usually preferable to `useState` when you have complex state logic that involves
		multiple sub-values. It also lets you optimize performance for components that trigger deep
		updates because you can pass `dispatch` down instead of callbacks.
		
		An alternative to `useState`.
		
		`useReducer` is usually preferable to `useState` when you have complex state logic that involves
		multiple sub-values. It also lets you optimize performance for components that trigger deep
		updates because you can pass `dispatch` down instead of callbacks.
		
		An alternative to `useState`.
		
		`useReducer` is usually preferable to `useState` when you have complex state logic that involves
		multiple sub-values. It also lets you optimize performance for components that trigger deep
		updates because you can pass `dispatch` down instead of callbacks.
		
		An alternative to `useState`.
		
		`useReducer` is usually preferable to `useState` when you have complex state logic that involves
		multiple sub-values. It also lets you optimize performance for components that trigger deep
		updates because you can pass `dispatch` down instead of callbacks.
		
		An alternative to `useState`.
		
		`useReducer` is usually preferable to `useState` when you have complex state logic that involves
		multiple sub-values. It also lets you optimize performance for components that trigger deep
		updates because you can pass `dispatch` down instead of callbacks.
	**/
	@:overload(function<R>(reducer:R, initializerArg:react.ReducerStateWithoutAction<R>, ?initializer:Any):ts.Tuple2<react.ReducerStateWithoutAction<R>, react.DispatchWithoutAction> { })
	@:overload(function<R, I>(reducer:R, initializerArg:Dynamic, initializer:(arg:Dynamic) -> react.ReducerState<R>):ts.Tuple2<react.ReducerState<R>, react.Dispatch<react.ReducerAction<R>>> { })
	@:overload(function<R, I>(reducer:R, initializerArg:I, initializer:(arg:I) -> react.ReducerState<R>):ts.Tuple2<react.ReducerState<R>, react.Dispatch<react.ReducerAction<R>>> { })
	@:overload(function<R>(reducer:R, initialState:react.ReducerState<R>, ?initializer:Any):ts.Tuple2<react.ReducerState<R>, react.Dispatch<react.ReducerAction<R>>> { })
	static function useReducer<R, I>(reducer:R, initializerArg:I, initializer:(arg:I) -> react.ReducerStateWithoutAction<R>):ts.Tuple2<react.ReducerStateWithoutAction<R>, react.DispatchWithoutAction>;
	/**
		`useRef` returns a mutable ref object whose `.current` property is initialized to the passed argument
		(`initialValue`). The returned object will persist for the full lifetime of the component.
		
		Note that `useRef()` is useful for more than the `ref` attribute. It’s handy for keeping any mutable
		value around similar to how you’d use instance fields in classes.
		
		`useRef` returns a mutable ref object whose `.current` property is initialized to the passed argument
		(`initialValue`). The returned object will persist for the full lifetime of the component.
		
		Note that `useRef()` is useful for more than the `ref` attribute. It’s handy for keeping any mutable
		value around similar to how you’d use instance fields in classes.
		
		Usage note: if you need the result of useRef to be directly mutable, include `| null` in the type
		of the generic argument.
		
		`useRef` returns a mutable ref object whose `.current` property is initialized to the passed argument
		(`initialValue`). The returned object will persist for the full lifetime of the component.
		
		Note that `useRef()` is useful for more than the `ref` attribute. It’s handy for keeping any mutable
		value around similar to how you’d use instance fields in classes.
	**/
	@:overload(function<T>(initialValue:Null<T>):react.RefObject<T> { })
	@:overload(function<T>():react.MutableRefObject<Null<T>> { })
	static function useRef<T>(initialValue:T):react.MutableRefObject<T>;
	/**
		The signature is identical to `useEffect`, but it fires synchronously after all DOM mutations.
		Use this to read layout from the DOM and synchronously re-render. Updates scheduled inside
		`useLayoutEffect` will be flushed synchronously, before the browser has a chance to paint.
		
		Prefer the standard `useEffect` when possible to avoid blocking visual updates.
		
		If you’re migrating code from a class component, `useLayoutEffect` fires in the same phase as
		`componentDidMount` and `componentDidUpdate`.
	**/
	static function useLayoutEffect(effect:react.EffectCallback, ?deps:react.DependencyList):Void;
	/**
		Accepts a function that contains imperative, possibly effectful code.
	**/
	static function useEffect(effect:react.EffectCallback, ?deps:react.DependencyList):Void;
	/**
		`useImperativeHandle` customizes the instance value that is exposed to parent components when using
		`ref`. As always, imperative code using refs should be avoided in most cases.
		
		`useImperativeHandle` should be used with `React.forwardRef`.
	**/
	static function useImperativeHandle<T, R>(ref:Null<ts.AnyOf2<(instance:Null<T>) -> Void, react.RefObject<T>>>, init:() -> R, ?deps:react.DependencyList):Void;
	/**
		`useCallback` will return a memoized version of the callback that only changes if one of the `inputs`
		has changed.
	**/
	static function useCallback<T>(callback:T, deps:react.DependencyList):T;
	/**
		`useMemo` will only recompute the memoized value when one of the `deps` has changed.
		
		Usage note: if calling `useMemo` with a referentially stable function, also give it as the input in
		the second argument.
		
		```ts
		function expensive () { ... }
		
		function Component () {
		   const expensiveResult = useMemo(expensive, [expensive])
		   return ...
		}
		```
	**/
	static function useMemo<T>(factory:() -> T, deps:Null<react.DependencyList>):T;
	/**
		`useDebugValue` can be used to display a label for custom hooks in React DevTools.
		
		NOTE: We don’t recommend adding debug values to every custom hook.
		It’s most valuable for custom hooks that are part of shared libraries.
	**/
	static function useDebugValue<T>(value:T, ?format:(value:T) -> Dynamic):Void;
	static var Children : react.ReactChildren;
	static var Fragment : react.ExoticComponent<{
		@:optional
		var children : react.ReactNode;
	}>;
	static var StrictMode : react.ExoticComponent<{
		@:optional
		var children : react.ReactNode;
	}>;
	/**
		This feature is not yet available for server-side rendering.
		Suspense support will be added in a later release.
	**/
	static var Suspense : react.ExoticComponent<react.SuspenseProps>;
	static var version : String;
	static var Profiler : react.ExoticComponent<react.ProfilerProps>;
}