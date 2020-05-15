package baconjs;
/**
	Delay function used by `bufferWithTime` and `bufferWithTimeOrCount`. Your implementation should
	call the given void function to cause a buffer flush.
**/
typedef DelayFunction = (f:baconjs.VoidFunction) -> Dynamic;