package baconjs;
/**
	State machine function used in [withStateMachine](classes/observable.html#withstatemachine).
**/
typedef StateF<In, State, Out> = {
	@:selfCall
	function call(state:State, event:baconjs.Event_<In>):ts.Tuple2<State, Array<baconjs.Event_<Out>>>;
};