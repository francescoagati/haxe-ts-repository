package baconjs;
/**
	[Update](#update) pattern consisting of 4 Observables and an accumulrator function. At least one of the Observables must be an EventStream.
**/
typedef UpdatePattern4<I1, I2, I3, I4, O> = ts.Tuple5<Observable<I1>, Observable<I1>, Observable<I3>, Observable<I4>, ts.AnyOf2<O, (acc:O, a:I1, b:I2, c:I3, d:I4) -> O>>;