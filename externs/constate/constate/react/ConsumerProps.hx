package constate.react;
typedef ConsumerProps<T> = {
	var children : (value:T) -> constate.react.ReactNode;
	@:optional
	var unstable_observedBits : Float;
};