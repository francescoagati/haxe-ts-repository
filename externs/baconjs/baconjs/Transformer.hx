package baconjs;
typedef Transformer<V1, V2> = (event:baconjs.Event_<V1>, sink:baconjs.EventSink<V2>) -> Dynamic;