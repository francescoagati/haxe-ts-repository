package baconjs;
/**
	[Update](#update) pattern consisting of 6 Observables and an accumulrator function. At least one of the Observables must be an EventStream.
**/
typedef UpdatePattern6<I1, I2, I3, I4, I5, I6, O> = ts.Tuple7<Observable<I1>, Observable<I1>, Observable<I3>, Observable<I4>, Observable<I5>, Observable<I6>, ts.AnyOf2<O, (acc:O, a:I1, b:I2, c:I3, d:I4, e:I5, f:I6) -> O>>;