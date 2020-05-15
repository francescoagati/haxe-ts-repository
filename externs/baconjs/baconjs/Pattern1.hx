package baconjs;
/**
	Join pattern consisting of a single EventStream and a mapping function.
**/
typedef Pattern1<I1, O> = ts.Tuple2<ObservableOrSource<I1>, ts.AnyOf2<O, (a:I1) -> O>>;