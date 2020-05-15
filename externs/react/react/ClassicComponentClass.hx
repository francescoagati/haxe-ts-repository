package react;
typedef ClassicComponentClass<P> = {
	@:optional
	function getDefaultProps():P;
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
	var getDerivedStateFromProps : GetDerivedStateFromProps<P, Dynamic>;
	@:optional
	var getDerivedStateFromError : GetDerivedStateFromError<P, Dynamic>;
};