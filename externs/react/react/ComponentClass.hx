package react;
typedef ComponentClass<P, S> = {
	@:optional
	var propTypes : { };
	@:optional
	var contextType : Context<Dynamic>;
	@:optional
	var contextTypes : { };
	@:optional
	var childContextTypes : { };
	@:optional
	var defaultProps : { };
	@:optional
	var displayName : String;
	@:optional
	var getDerivedStateFromProps : GetDerivedStateFromProps<P, S>;
	@:optional
	var getDerivedStateFromError : GetDerivedStateFromError<P, S>;
};