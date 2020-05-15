package baconjs;
/**
	[Update](#update) pattern consisting of 2 Observables and an accumulrator function. At least one of the Observables must be an EventStream.
**/
typedef UpdatePattern2<I1, I2, O> = ts.Tuple3<Observable<I1>, Observable<I1>, ts.AnyOf2<O, (acc:O, a:I1, b:I2) -> O>>;