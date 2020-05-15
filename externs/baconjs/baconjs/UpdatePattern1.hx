package baconjs;
/**
	[Update](#update) pattern consisting of a single EventStream and a accumulator function.
**/
typedef UpdatePattern1<I1, O> = ts.Tuple2<Observable<I1>, ts.AnyOf2<O, (acc:O, a:I1) -> O>>;