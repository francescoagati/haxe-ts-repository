package react;
typedef ConsumerProps<T> = {
	var children : (value:T) -> ReactNode;
	@:optional
	var unstable_observedBits : Float;
};