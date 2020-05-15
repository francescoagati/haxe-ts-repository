package baconjs;
/**
	Join pattern consisting of a 4 Observables and a combinator function. At least one of the Observables must be an EventStream.
**/
typedef Pattern4<I1, I2, I3, I4, O> = ts.Tuple5<ObservableOrSource<I1>, ObservableOrSource<I1>, ObservableOrSource<I3>, ObservableOrSource<I4>, ts.AnyOf2<O, (a:I1, b:I2, c:I3, d:I4) -> O>>;