package react_hook_form.react;
typedef ComponentClass<P, S> = {
	@:optional
	var propTypes : { };
	@:optional
	var contextType : react_hook_form.react.Context<Dynamic>;
	@:optional
	var contextTypes : { };
	@:optional
	var childContextTypes : { };
	@:optional
	var defaultProps : { };
	@:optional
	var displayName : String;
	@:optional
	var getDerivedStateFromProps : react_hook_form.react.GetDerivedStateFromProps<P, S>;
	@:optional
	var getDerivedStateFromError : react_hook_form.react.GetDerivedStateFromError<P, S>;
};