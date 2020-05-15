package baconjs;
/**
	Join pattern consisting of a 3 Observables and a combinator function. At least one of the Observables must be an EventStream.
**/
typedef Pattern3<I1, I2, I3, O> = ts.Tuple4<ObservableOrSource<I1>, ObservableOrSource<I1>, ObservableOrSource<I3>, ts.AnyOf2<O, (a:I1, b:I2, c:I3) -> O>>;