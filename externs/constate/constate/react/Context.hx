package constate.react;
typedef Context<T> = {
	var Provider : constate.react.Provider<T>;
	var Consumer : constate.react.Consumer<T>;
	@:optional
	var displayName : String;
};