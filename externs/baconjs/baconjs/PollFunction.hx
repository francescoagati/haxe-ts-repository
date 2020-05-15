package baconjs;
/**
	A polled function used by [fromPoll](../globals.html#frompoll)
**/
typedef PollFunction<V> = () -> baconjs.EventLike<V>;