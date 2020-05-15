package react_bootstrap.react;
typedef ComponentClass<P, S> = {
	@:optional
	var propTypes : { };
	@:optional
	var contextType : react_bootstrap.react.Context<Dynamic>;
	@:optional
	var contextTypes : { };
	@:optional
	var childContextTypes : { };
	@:optional
	var defaultProps : { };
	@:optional
	var displayName : String;
	@:optional
	var getDerivedStateFromProps : react_bootstrap.react.GetDerivedStateFromProps<P, S>;
	@:optional
	var getDerivedStateFromError : react_bootstrap.react.GetDerivedStateFromError<P, S>;
};