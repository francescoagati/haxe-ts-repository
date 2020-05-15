package chakra_ui.react;
typedef ConsumerProps<T> = {
	var children : (value:T) -> chakra_ui.react.ReactNode;
	@:optional
	var unstable_observedBits : Float;
};