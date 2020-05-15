package react_bootstrap.react;
typedef Context<T> = {
	var Provider : react_bootstrap.react.Provider<T>;
	var Consumer : react_bootstrap.react.Consumer<T>;
	@:optional
	var displayName : String;
};