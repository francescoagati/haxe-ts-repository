package react;
typedef StaticLifecycle<P, S> = {
	@:optional
	var getDerivedStateFromProps : GetDerivedStateFromProps<P, S>;
	@:optional
	var getDerivedStateFromError : GetDerivedStateFromError<P, S>;
};