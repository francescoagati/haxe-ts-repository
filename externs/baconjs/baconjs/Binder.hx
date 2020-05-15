package baconjs;
/**
	Binder function used in [fromBinder](../globals.html#frombinder)
**/
typedef Binder<V> = (sink:FlexibleSink<V>) -> Unsub;