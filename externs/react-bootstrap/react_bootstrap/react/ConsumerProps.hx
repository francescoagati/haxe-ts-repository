package react_bootstrap.react;
typedef ConsumerProps<T> = {
	var children : (value:T) -> react_bootstrap.react.ReactNode;
	@:optional
	var unstable_observedBits : Float;
};