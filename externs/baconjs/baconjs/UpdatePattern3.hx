package baconjs;
/**
	[Update](#update) pattern consisting of 3 Observables and an accumulrator function. At least one of the Observables must be an EventStream.
**/
typedef UpdatePattern3<I1, I2, I3, O> = ts.Tuple4<Observable<I1>, Observable<I1>, Observable<I3>, ts.AnyOf2<O, (acc:O, a:I1, b:I2, c:I3) -> O>>;