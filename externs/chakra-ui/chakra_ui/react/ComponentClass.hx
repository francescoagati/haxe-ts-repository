package chakra_ui.react;
typedef ComponentClass<P, S> = {
	@:optional
	var propTypes : { };
	@:optional
	var contextType : chakra_ui.react.Context<Dynamic>;
	@:optional
	var contextTypes : { };
	@:optional
	var childContextTypes : { };
	@:optional
	var defaultProps : { };
	@:optional
	var displayName : String;
	@:optional
	var getDerivedStateFromProps : chakra_ui.react.GetDerivedStateFromProps<P, S>;
	@:optional
	var getDerivedStateFromError : chakra_ui.react.GetDerivedStateFromError<P, S>;
};