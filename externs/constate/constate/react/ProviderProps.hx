package constate.react;
typedef ProviderProps<T> = {
	var value : T;
	@:optional
	var children : constate.react.ReactNode;
};