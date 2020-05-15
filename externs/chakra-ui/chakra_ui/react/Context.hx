package chakra_ui.react;
typedef Context<T> = {
	var Provider : chakra_ui.react.Provider<T>;
	var Consumer : chakra_ui.react.Consumer<T>;
	@:optional
	var displayName : String;
};